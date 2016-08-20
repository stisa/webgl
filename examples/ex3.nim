import dom,webgl,math

#utils
proc consolelog (s:auto) {.inline.}= {. emit : "console.log(`s`);" .}

proc initWebGL(canvas:webgl.Canvas): WebGLRenderingContext {.inline.} = webgl.getContextWebGL(canvas)

proc checkShader(gl:WebGLRenderingContext,shader:WebGLShader) =
  {. emit: "if (!`gl`.getShaderParameter(`shader`, `gl`.COMPILE_STATUS)) {console.error(`gl`.getShaderInfoLog(`shader`));}; ".}  

proc checkProgram(gl:WebGLRenderingContext,prog:WebGLProgram) =
  {. emit: "if (!`gl`.getProgramParameter(`prog`, `gl`.LINK_STATUS)) {console.error(`gl`.getProgramInfoLog(`prog`));}; ".}  

#############################

let x = [1,2,3]
var y = x
var z = x
y[0] = 10
consoleLog($z[0])

const
  startX = [-0.75,  0.75, -0.75,  0.75]
  startY = [-0.75, -0.75,  0.75,  0.75]
  freqs =  [1.0, math.pow(2.0, 1.0/4.0), math.pow(2.0, 1.0/3.0), math.pow(2.0, 1.0/2.0)]

var
  modelX = startX
  modelY = startY

# Form an X out of the four points described above
proc makeModel() : seq[float] =
  return @[
    modelX[0], modelY[0], modelX[1], modelY[1],
    modelX[0], modelY[0], modelX[2], modelY[2],
    modelX[0], modelY[0], modelX[3], modelY[3],
    modelX[1], modelY[1], modelX[3], modelY[3],
    modelX[2], modelY[2], modelX[1], modelY[1],
    modelX[2], modelY[2], modelX[3], modelY[3]
  ]

# Shaders

let vertexShaderCode = """
attribute vec2 position;
void main(void) {
    gl_Position = vec4(position, 0.0, 1.0);
}
"""

let fragmentShaderCode = """
void main(void) {
    gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
}
"""

# Create context
var canv = dom.document.getElementById("canvas").Canvas
var gl = initWebGL(canv)

# Create a model
var packedModel = newSeq[float](makeModel().len).f32A# newFloat32Array(makeModel().len.float)
var vertices = gl.createBuffer()

# Create vertex shader
var vertexShader = gl.createShader(webgl.VERTEX_SHADER)
gl.shaderSource(vertexShader, vertexShaderCode)
gl.compileShader(vertexShader)
gl.checkShader(vertexShader)

# Create fragment shader
var fragmentShader = gl.createShader(webgl.FRAGMENT_SHADER)
gl.shaderSource(fragmentShader, fragmentShaderCode)
gl.compileShader(fragmentShader)
gl.checkShader(fragmentShader)

# Link program
var program = gl.createProgram()
gl.attachShader(program, vertexShader)
gl.attachShader(program, fragmentShader)
gl.linkProgram(program)
gl.checkProgram(program)

var positionAttrib = gl.getAttribLocation(program, "position")

var theta:float = 0.0

proc draw(gl:WebGLRenderingContext)=
    let bg = (cos(theta)+1.0)/2.0 # Pulsate background on timer

    # Upload values for model
    let model = makeModel()
    packedModel = model.f32A
    #for i in 0..<model.len:
    #    float32Set(packedModel, i.float, model[i])
    gl.bindBuffer(webgl.ARRAY_BUFFER, vertices)
    gl.bufferData(webgl.ARRAY_BUFFER, packedModel, webgl.DYNAMIC_DRAW)
    gl.bindBuffer(webgl.ARRAY_BUFFER, nil)

    # Set display properties and clear screen
    gl.viewport(0, 0, gl.canvas.width.GLsizei, gl.canvas.height.GLsizei)
    gl.clearColor(bg, 0.0, 0.0, 1.0)
    gl.enable(webgl.DEPTH_TEST)
    gl.depthFunc(webgl.LEQUAL) # Near things obscure far things
    gl.clear(webgl.COLOR_BUFFER_BIT or webgl.DEPTH_BUFFER_BIT)

    # Set up draw
    gl.useProgram(program)
    gl.bindBuffer(webgl.ARRAY_BUFFER, vertices)
    gl.vertexAttribPointer(positionAttrib, 2, webgl.FLOAT, false, 0, 0)
    gl.enableVertexAttribArray(positionAttrib)

    # Draw
    gl.drawArrays(webgl.LINES, 0, (model.len/2).GLsizei )

    # State updates: do a silly, trivial animation.
    # Wobble each of the four anchors for the model at a slightly different rate.
    theta += PI/512.0
    for i in 0..<startX.len:
        let at = theta*8-(i*4+1).float*PI
        if at > 0: # Start each anchor wobbling at a different time (one every three base wobbles)
            modelX[i] = startX[i] + sin(at * freqs[i])/8.0

proc animLoop() =
   draw(gl)
   {.emit: "window.requestAnimationFrame(`animLoop`);" .}

# Init
if gl != nil:
  canv.width = dom.window.innerWidth
  canv.height = dom.window.innerHeight
  draw(gl)
  animLoop()
