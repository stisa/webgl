import dom,../src/webgl,math

#utils

proc initWebGL(canvas:webgl.Canvas): WebGLRenderingContext {.inline.} = 
  result = canvas.getContext("webgl")
  if result.isNil: result = canvas.getContext("experimental-webgl")

proc checkShader(gl:WebGLRenderingContext,shader:WebGLShader) = 
  if not gl.getStatus(shader): log gl.getShaderInfoLog(shader)
proc checkProgram(gl:WebGLRenderingContext,prog:WebGLProgram) =
  if not gl.getStatus(prog): log gl.getProgramInfoLog(prog)  

let x = [1,2,3]
var y = x
var z = x
y[0] = 10

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
var canv = dom.document.getElementById("glcanvas").Canvas
var gl = initWebGL(canv)

# Create a model
var packedModel = newSeq[float](makeModel().len)# newFloat32Array(makeModel().len.float)
var vertices = gl.createBuffer()

# Create vertex shader
var vertexShader = gl.createShader(seVERTEX_SHADER)
gl.shaderSource(vertexShader, vertexShaderCode)
gl.compileShader(vertexShader)
gl.checkShader(vertexShader)

# Create fragment shader
var fragmentShader = gl.createShader(seFRAGMENT_SHADER)
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
    packedModel = model
    #for i in 0..<model.len:
    #    float32Set(packedModel, i.float, model[i])
    gl.bindBuffer(beARRAY_BUFFER, vertices)
    gl.bufferData(beARRAY_BUFFER, packedModel, beDYNAMIC_DRAW)
    gl.bindBuffer(beARRAY_BUFFER, nil)

    # Set display properties and clear screen
    gl.viewport(0, 0, gl.canvas.width, gl.canvas.height)
    gl.clearColor(bg, 0.0, 0.0, 1.0)
    #gl.enable(webgl.DEPTH_TEST)
    #gl.depthFunc(webgl.LEQUAL) # Near things obscure far things
    gl.clear(bbCOLOR.uint or bbDEPTH.uint)

    # Set up draw
    gl.useProgram(program)
    gl.bindBuffer(beARRAY_BUFFER, vertices)
    gl.vertexAttribPointer(positionAttrib, 2, dtFLOAT, false, 0, 0)
    gl.enableVertexAttribArray(positionAttrib)

    # Draw
    gl.drawArrays(pmLINES, 0, (model.len div 2) )

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
  draw(gl)
  animLoop()
