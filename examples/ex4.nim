import ../src/webgl, dom

converter toUI(i:int):uint = i.uint

#============== Creating a canvas ====================*/
var canvas = dom.document.getElementById("glcanvas").Canvas;
var gl = canvas.getContextWebgl()
#======== Defining and storing the geometry ===========*/

var vertices = [
  -0.5'f32,0.5,0.0,
  -0.5,-0.5,0.0,
  0.5,-0.5,0.0, 
];

var indices = [0'u16,1,2];

# Create an empty buffer object to store vertex buffer
var vertex_buffer = gl.createBuffer();

# Bind appropriate array buffer to it
gl.bindBuffer(beArrayBuffer, vertex_buffer);

# Pass the vertex data to the buffer
gl.bufferData(beArrayBuffer, vertices, beStaticDraw);

# Unbind the buffer
gl.bindBuffer(beArrayBuffer, nil);

# Create an empty buffer object to store Index buffer
var Index_Buffer = gl.createBuffer();

# Bind appropriate array buffer to it
gl.bindBuffer(beElementArrayBuffer, Index_Buffer);

# Pass the vertex data to the buffer
gl.bufferData(beElementArrayBuffer, indices, beStaticDraw);

# Unbind the buffer
gl.bindBuffer(beElementArrayBuffer, nil);

#================ Shaders ====================*/

# Vertex shader source code
var vertCode = "attribute vec3 coordinates;"&
  "void main(void) {" &
  " gl_Position = vec4(coordinates, 1.0);" &
  "}"
  
# Create a vertex shader object
var vertShader = gl.createShader(seVertexShader);

# Attach vertex shader source code
gl.shaderSource(vertShader, vertCode);

# Compile the vertex shader
gl.compileShader(vertShader);
if not gl.getStatus(vertShader): log("error vs")
#fragment shader source code
var fragCode ="void main(void){" &
  "gl_FragColor = vec4(0.0, 0.0, 0.0, 0.1);" &
  "}"
  
# Create fragment shader object
var fragShader = gl.createShader(seFragmentShader);

# Attach fragment shader source code
gl.shaderSource(fragShader, fragCode); 

# Compile the fragmentt shader
gl.compileShader(fragShader);
if not gl.getStatus(fragShader): log("error fg")
# Create a shader program object to store
# the combined shader program
var shaderProgram = gl.createProgram();

# Attach a vertex shader
gl.attachShader(shaderProgram, vertShader);

# Attach a fragment shader
gl.attachShader(shaderProgram, fragShader);

# Link both the programs
gl.linkProgram(shaderProgram);
if not gl.getStatus(shaderProgram): log("error p")
# Use the combined shader program object
gl.useProgram(shaderProgram);

#======= Associating shaders to buffer objects =======*/

# Bind vertex buffer object
gl.bindBuffer(beArrayBuffer, vertex_buffer);

# Bind index buffer object
gl.bindBuffer(beElementArrayBuffer, Index_Buffer);

# Get the attribute location
var coord = gl.getAttribLocation(shaderProgram, "coordinates");

# Point an attribute to the currently bound VBO
gl.vertexAttribPointer(coord, 3, dtFloat, false, 0, 0); 

# Enable the attribute
gl.enableVertexAttribArray(coord);

#=========Drawing the triangle===========*/

# Clear the canvas
gl.clearColor(0.5, 0.5, 0.5, 0.9);

# Enable the depth test
gl.enable(0x0B71);

# Clear the color buffer bit
gl.clear(bbColor);

# Set the view port
gl.viewport(0,0,canvas.width,canvas.height);

# Draw the triangle
gl.drawElements(pmTriangles, indices.len, dtUnsignedShort,0) #0x1403 ??