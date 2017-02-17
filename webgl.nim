import dom
include webglconsts


#TODO: https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Types
type
  Canvas* = ref CanvasObj
  CanvasObj {.importc.} = object of dom.Element
    width*: int
    height*:int
    clientWidth*: int
    clientHeight*:int

  ArrayBufferView* = ref ArrayBufferViewObj
  ArrayBufferViewObj {. importc .} = object of RootObj

  Int8Array* = ref Int8ArrayObj
  Int8ArrayObj {. importc .} = object of ArrayBufferView

  Uint8Array* = ref Uint8ArrayObj
  Uint8ArrayObj {. importc .} = object of ArrayBufferView

  Uint8ClampedArray* = ref Uint8ClampedArrayObj
  Uint8ClampedArrayObj {. importc .} = object of ArrayBufferView

  Int16Array* = ref Int16ArrayObj
  Int16ArrayObj {. importc .} = object of ArrayBufferView

  Uint16Array* = ref Uint16ArrayObj
  Uint16ArrayObj {. importc .} = object of ArrayBufferView

  Int32Array* = ref Int32ArrayObj
  Int32ArrayObj {. importc .} = object of ArrayBufferView

  Uint32Array* = ref Uint32ArrayObj
  Uint32ArrayObj {. importc .} = object of ArrayBufferView

  Float32Array* = ref Float32ArrayObj
  Float32ArrayObj {. importc .} = object of ArrayBufferView

  Float64Array* = ref Float64ArrayObj
  Float64ArrayObj {. importc .} = object of ArrayBufferView

  DataView* = ref DataViewObj
  DataViewObj {. importc .} = object of ArrayBufferView
  
  WebGLActiveInfoObj* {. importc .} = object
    name*: cstring
    `type`*: GLenum
    size*: GLint
  WebGLActiveInfo* = ref WebGLActiveInfoObj

  WebGLUniformLocation* = ref WebGLUniformLocationObj
  WebGLUniformLocationObj {. importc .} = object of RootObj
  
  WebGLShaderPrecisionFormat* = ref WebGLShaderPrecisionFormatObj
  WebGLShaderPrecisionFormatObj {. importc .} = object of RootObj

  WebGLContextAttributes* = ref WebGLContextAttributesObj
  WebGLContextAttributesObj {. importc .} = object of RootObj

  WebGLBuffer* = ref WebGLBufferObj
  WebGLBufferObj {. importc .} = object of RootObj

  WebGLTexture* = ref WebGLTextureObj
  WebGLTextureObj {. importc .} = object of RootObj

  WebGLProgram* = ref WebGLProgramObj
  WebGLProgramObj {. importc .} = object of RootObj

  WebGLShader* = ref WebGLShaderObj
  WebGLShaderObj {. importc .} = object of RootObj

  WebGLRenderbuffer* = ref WebGLRenderbufferObj
  WebGLRenderbufferObj {. importc .} = object of RootObj

  WebGLFramebuffer* = ref WebGLFramebufferObj
  WebGLFramebufferObj {. importc .} = object of RootObj

  #The WebGL context
  WebGLRenderingContext* = ref WebGLRenderingContextObj
  WebGLRenderingContextObj {.importc.} = object    
    #The following properties and methods provide general information and functionality to deal with the WebGL context:

    canvas*: Canvas #A read-only back-reference to the HTMLCanvasElement. Might be null if it is not associated with a <canvas> element.
    drawingBufferWidth*:int #The read-only width of the current drawing buffer. Should match the width of the canvas element associated with this context.
    drawingBufferHeight*:int #The read-only height of the current drawing buffer. Should match the height of the canvas element associated with this context.

    commit* : proc() #Pushes frames back to the original HTMLCanvasElement, if the context is not directly fixed to a specific canvas.      
    getContextAttributes* : proc(): WebGLContextAttributes #Returns a WebGLContextAttributes object that contains the actual context parameters. Might return null, if the context is lost.
    isContextLost* : proc():bool #Returns true if the context is lost, otherwise returns false. 

    #Viewing and clipping
    scissor* : proc(x, y:GLint, width, height: GLsizei) #Defines the scissor box.
    viewport* : proc(x, y:GLint, width, height: GLsizei) #Sets the viewport.

    #State information
    blendColor* : proc(red, green, blue, alpha:GLclampf) #Sets the source and destination blending factors.
    blendEquation* : proc(mode:GLenum) #Sets both the RGB blend equation and alpha blend equation to a single equation.
    blendEquationSeparate* : proc(modeRGB, modeAlpha:GLenum) #Sets the RGB blend equation and alpha blend equation separately.
    blendFunc* : proc(sfactor, dfactor:GLenum) #Defines which function is used for blending pixel arithmetic.
    blendFuncSeparate* : proc(srcRGB, dstRGB, srcAlpha, dstAlpha:GLenum) #Defines which function is used for blending pixel arithmetic for RGB and alpha components separately.
    clearColor* : proc(red, green, blue, alpha:GLclampf) #Specifies the color values used when clearing color buffers.
    clearDepth* : proc(depth:GLclampf) #Specifies the depth value used when clearing the depth buffer.
    clearStencil* : proc(s:GLint) #Specifies the stencil value used when clearing the stencil buffer.
    colorMask* : proc(red, green, blue, alpha:GLboolean) #Sets which color components to enable or to disable when drawing or rendering to a WebGLFramebuffer.
    cullFace* : proc(mode:GLenum) #Specifies whether or not front- and/or back-facing polygons can be culled.
    depthFunc* : proc(fun:GLenum) #Specifies a function that compares incoming pixel depth to the current depth buffer value.
    depthMask* : proc(flag:GLboolean) #Sets whether writing into the depth buffer is enabled or disabled.
    depthRange* : proc(zNear, zFar:GLclampf) #Specifies the depth range mapping from normalized device coordinates to window or viewport coordinates.
    disable* : proc(cap:GLenum) #Disables specific WebGL capabilities for this context.
    enable* : proc(cap:GLenum) #Enables specific WebGL capabilities for this context.
    frontFace* : proc(mode:GLenum) #Specifies whether polygons are front- or back-facing by setting a winding orientation.
    getError* : proc():GLenum #Returns error information.
    hint* : proc(target,mode:GLenum) #Specifies hints for certain behaviors. The interpretation of these hints depend on the implementation.
    isEnabled* : proc(cap:GLenum):GLboolean #Tests whether a specific WebGL capability is enabled or not for this context.
    lineWidth* : proc(width:GLfloat) #Sets the line width of rasterized lines.
    pixelStorei* : proc(pname:GLenum, param:GLint) #Specifies the pixel storage modes
    polygonOffset* : proc(factor, units:GLfloat) #Specifies the scale factors and units to calculate depth values.
    sampleCoverage* : proc(value:GLclampf, invert:GLboolean) #Specifies multi-sample coverage parameters for anti-aliasing effects.
    stencilFunc* : proc(fun:GLenum,rf:GLint,mask:GLuint) #Sets the both front and back function and reference value for stencil testing.
    stencilFuncSeparate* : proc(face, fun:GLenum, rf:GLint, mask:GLuint) #Sets the front and/or back function and reference value for stencil testing.
    stencilMask* : proc(mask:GLuint) #Controls enabling and disabling of both the front and back writing of individual bits in the stencil planes.
    stencilMaskSeparate* : proc(face:GLenum,mask:GLuint) #Controls enabling and disabling of front and/or back writing of individual bits in the stencil planes.
    stencilOp* : proc(fail, zfail, zpass:GLenum) #Sets both the front and back-facing stencil test actions.
    stencilOpSeparate* : proc(face, fail, zfail, zpass:GLenum) #Sets the front and/or back-facing stencil test actions.
    
    #Buffers
    bindBuffer* : proc(target:GLenum,buffer:WebGLBuffer) #Binds a WebGLBuffer object to a given target.
    createBuffer* : proc():WebGLBuffer  #Creates a WebGLBuffer object.
    deleteBuffer* : proc(buffer:WebGLBuffer ) #Deletes a WebGLBuffer object.
    isBuffer* : proc(buffer:WEbGLBuffer):GLboolean #Returns a Boolean indicating if the passed buffer is valid. 
    
    #Framebuffers
    bindFramebuffer* : proc(target:GLenum, framebuffer:WebGLFramebuffer) #Binds a WebGLFrameBuffer object to a given target.
    checkFramebufferStatus* : proc(target:GLenum):GLenum #Returns the status of the framebuffer.
    createFramebuffer* : proc():WebGLFramebuffer  #Creates a WebGLFrameBuffer object.
    deleteFramebuffer* : proc(framebuffer:WebGLFramebuffer) #Deletes a WebGLFrameBuffer object.
    framebufferRenderbuffer* : proc(target, attachment, renderbuffertarget:GLenum, renderbuffer:WebGLRenderbuffer) #Attaches a WebGLRenderingBuffer object to a WebGLFrameBuffer object.
    framebufferTexture2D* : proc(target, attachment, textarget:GLenum, texture:WebGLTexture, level:Glint) #Attaches a textures image to a WebGLFrameBuffer object.
    isFramebuffer* : proc(framebuffer:WebGLFramebuffer):GLboolean #Returns a Boolean indicating if the passed WebGLFrameBuffer object is valid.
    readPixels* : proc(x, y:GLint, width, height:GLsizei, format, typ:GLenum, pixels:ArrayBufferView) #Reads a block of pixels from the WebGLFrameBuffer. 
    
    #Renderbuffers
    bindRenderbuffer* : proc(target:Glenum, renderbuffer: WebGLRenderbuffer) #Binds a WebGLRenderBuffer object to a given target.
    createRenderbuffer* : proc():WebGLRenderbuffer #Creates a WebGLRenderBuffer object.
    deleteRenderbuffer* : proc(renderbuffer:WebGLRenderbuffer) #Deletes a WebGLRenderBuffer object.
    isRenderbuffer* : proc(renderbuffer:WebGLRenderbuffer): GLboolean #Returns a Boolean indicating if the passed WebGLRenderingBuffer is valid.
    renderbufferStorage* : proc(target, internalFormat:GLenum, width, height:GLsizei) #Creates a renderbuffer data store.

    #Textures
    bindTexture* : proc(target:GLenum, texture:WebGLTexture) #Binds a WebGLTexture object to a given target.
    compressedTexImage2D* : proc(target:GLenum, level:GLint, internalformat:GLenum, width, height:GLsizei, border:GLint, pixels:ArrayBufferView) #Specifies a 2D texture image in a compressed format.
    compressedTexSubImage2D* : proc(target:GLenum, level, xoffset,yoffset:GLint, width, height:GLsizei, format:GLint, pixels:ArrayBufferView) #Specifies a 2D texture sub-image in a compressed format.
    copyTexImage2D* : proc(target:GLenum, level,internalformat, x, y:GLint, width, height:GLsizei, border:GLint) #Copies a 2D texture image.
    copyTexSubImage2D* : proc(target:GLenum, level, xoffset, yoffset, x, y:GLint, width, height:GLsizei) #Copies a 2D texture sub-image.
    createTexture* : proc():WebGLTexture #Creates a WebGLTexture object.
    deleteTexture* : proc(texture:WebGLTexture) #Deletes a WebGLTexture object.
    generateMipmap* : proc(target:GLenum) #Generates a set of mipmaps for a WebGLTexture object.
    isTexture* : proc(texture:WebGLTexture):GLboolean #Returns a Boolean indicating if the passed WebGLTexture is valid.
    texParameterf* : proc(target:GLenum, pname:GLenum, param:GLfloat ) #Sets texture parameters.
    texParameteri* : proc(target:GLenum, pname:GLenum, param:GLenum) #Sets texture parameters. 
    
    #Programs and shaders
    attachShader* : proc(program: WebGLProgram, shader: WebGLShader) #Attaches a WebGLShader to a WebGLProgram.
    bindAttribLocation* : proc(program:WebGLProgram, index:GLuint, name:cstring) #Binds a generic vertex index to a named attribute variable.
    compileShader* : proc(shader:WebGLShader) #Compiles a WebGLShader.
    createProgram* : proc():WebGLProgram #Creates a WebGLProgram.
    createShader* : proc(typ:GLenum):WebGLShader #Creates a WebGLShader.
    deleteProgram* : proc(program:WebGLProgram) #Deletes a WebGLProgram.
    deleteShader* : proc(shader:WebGLShader) #Deletes a WebGLShader.
    detachShader* : proc(program:WebGLProgram, shader:WebGLShader) #Detaches a WebGLShader.
    getAttachedShaders* : proc(program:WebGLProgram): seq[WebGLShader] #Returns a list of WebGLShader objects attached to a WebGLProgram.
    getProgramInfoLog* : proc(program:WebGLProgram):cstring #Returns the information log for a WebGLProgram object.
    getShaderPrecisionFormat* : proc(shaderType,precisionType: GLenum):WebGLShaderPrecisionFormat #Returns a WebGLShaderPrecisionFormat object describing the precision for the numeric format of the shader.
    getShaderInfoLog* : proc(shader:WebGLShader):cstring #Returns the information log for a WebGLShader object.
    getShaderSource* : proc(shader:WebGLShader):cstring #Returns the source code of a WebGLShader as a string.
    isProgram* : proc(program:WebGLProgram):GLboolean #Returns a Boolean indicating if the passed WebGLProgram is valid.
    isShader* : proc(shader:WebGLShader):GLboolean #Returns a Boolean indicating if the passed WebGLShader is valid.
    linkProgram* : proc(program:WebGLProgram) #Links the passed WebGLProgram object.
    shaderSource* : proc(shader:WebGLShader,source:cstring) #Sets the source code in a WebGLShader.
    useProgram* : proc(program:WebGLProgram) #Uses the specified WebGLProgram as part the current rendering state.
    validateProgram* : proc(program:WebGLProgram) #Validates a WebGLProgram. 
    
    #Uniforms and attributes
    disableVertexAttribArray* : proc(index:GLuint) #Disables a vertex attribute array at a given position.
    enableVertexAttribArray* : proc(index:GLuint) #Enables a vertex attribute array at a given position.
    getActiveAttrib* : proc(program:WebGLProgram, index:Gluint):WebGLActiveInfo #Returns information about an active attribute variable.
    getActiveUniform* : proc(program:WebGLProgram, index:GLuint):WebGLActiveInfo #Returns information about an active uniform variable.
    getAttribLocation* : proc(program:WebGLProgram, name:cstring):GLuint #Returns the location of an attribute variable.
    getUniformLocation* : proc(program:WebGLProgram, name:cstring):WebGLUniformLocation #Returns the location of a uniform variable.
    getVertexAttribOffset* : proc(index:GLuint, pname:GLenum):GLsizeiptr #Returns the address of a given vertex attribute.
    uniform1f* : proc(location:WebGLUniformLocation, v0:float) #Specifies a value for a uniform variable.
    uniform1fv* : proc(location:WebGLUniformLocation, value:Float32Array)
    uniform1i* : proc(location:WebGLUniformLocation, v0:int)
    uniform1iv* : proc(location:WebGLUniformLocation, value:Int32Array)

    uniform2f* : proc(location:WebGLUniformLocation, v0, v1:float)
    uniform2fv* : proc(location:WebGLUniformLocation, value:FLoat32Array)
    uniform2i* : proc(location:WebGLUniformLocation, v0, v1:int)
    uniform2iv* : proc(location:WebGLUniformLocation, value:Int32Array)

    uniform3f* : proc(location:WebGLUniformLocation, v0, v1, v2:float)
    uniform3fv* : proc(location:WebGLUniformLocation, value:Float32Array)
    uniform3i* : proc(location:WebGLUniformLocation, v0, v1, v2:int)
    uniform3iv* : proc(location:WebGLUniformLocation, value:Int32Array)

    uniform4f* : proc(location:WebGLUniformLocation, v0, v1, v2, v3:float)
    uniform4fv* : proc(location:WebGLUniformLocation, value:Float32Array)
    uniform4i* : proc(location:WebGLUniformLocation, v0, v1, v2, v3:int)
    uniform4iv* : proc(location:WebGLUniformLocation, value:Int32Array)
    
    uniformMatrix2fv* : proc(location:WebGLUniformLocation, transpose:GLboolean, value: Float32Array) #Specifies a matrix value for a uniform variable.
    uniformMatrix3fv* : proc(location:WebGLUniformLocation, transpose:GLboolean, value: Float32Array)
    uniformMatrix4fv* : proc(location:WebGLUniformLocation, transpose:GLboolean, value: Float32Array) 

    vertexAttrib1f*: proc(index:GLuint, v0:float) #Specifies a value for a generic vertex attribute.
    vertexAttrib2f*: proc(index:GLuint, v0, v1:float)
    vertexAttrib3f*: proc(index:GLuint, v0, v1, v2:float)
    vertexAttrib4f*: proc(index:GLuint, v0, v1, v2, v3:float)

    vertexAttrib1fv*: proc(index:GLuint, value:Float32Array)
    vertexAttrib2fv*: proc(index:GLuint, value:Float32Array)
    vertexAttrib3fv*: proc(index:GLuint, value:Float32Array)
    vertexAttrib4fv*: proc(index:GLuint, value:Float32Array)

    vertexAttribPointer* : proc(index:GLuint, size:GLint, typ:GLenum, normalized:GLboolean, stride:GLsizei, offset:GLintptr) #Specifies the data formats and locations of vertex attributes in a vertex attributes array. 

    #Drawing buffers
    clear* : proc(mask:GLbitfield) #Clears specified buffers to preset values.
    drawArrays* : proc(mode:GLenum, first:GLint, count:GLsizei) #Renders primitives from array data.
    drawElements* : proc(mode:GLenum, count:GLsizei, typ: GLenum, offset:GLintptr) #Renders primitives from element array data.
    finish* : proc() #Blocks execution until all previously called commands are finished.
    flush* : proc() #Empties different 

      
proc bufferData*(gl:WebGLRenderingContext, target:GLenum, size:GLsizeiptr, usage:GLenum) = #Updates buffer data.
  {. emit: "`gl`.bufferData(`target`,`size`,`usage`);" .} 
proc bufferData*(gl:WebGLRenderingContext, target:GLenum, data:Float32Array, usage:GLenum) = #Updates buffer data.
  {. emit: "`gl`.bufferData(`target`,`data`,`usage`);" .}

proc bufferSubData*(gl:WebGLRenderingContext,target:GLenum, offset:GLintptr, data:auto) =#Updates buffer data starting at a passed offset.
  {. emit: "`gl`.bufferData(`target`,`offset`,`data`);" .}

proc getParameter* (pname:GLenum):auto {.importc.} #Returns a value for the passed parameter name.

proc activeTexture* (gl:WebGLRenderingContext, texture:auto) {.importc.} #Selects the active texture unit.

# FIXME: getParameter does not handle 
# gl.DELETE_STATUS: Returns a GLboolean indicating whether or not the program is flagged for deletion.
# gl.LINK_STATUS: Returns a GLboolean indicating whether or not the last link operation was successful.
# gl.VALIDATE_STATUS: Returns a GLboolean indicating whether or not the last validation operation was successful
# Use getStatus(Shader|Program) instead

proc getProgramParameter* (gl:WebGLRenderingContext,program:WebGLProgram, pname:GLenum):GLint{.importc.} #Returns information about the program.

proc getBufferParameter* (gl:WebGLRenderingContext,target, pname:GLenum): auto {.importc.} #Returns information about the buffer.

proc getFramebufferAttachmentParameter* (gl:WebGLRenderingContext,target, attachment, pname:GLenum):auto {.importc.} #Returns information about the framebuffer.

proc getRenderbufferParameter* (gl:WebGLRenderingContext,target, pname:GLenum):auto {.importc.} #Returns information about the framebuffer.

proc getTexParameter* (gl:WebGLRenderingContext,target:GLenum,pname:GLenum): auto {.importc.} #Returns information about the texture.

proc getShaderParameter* (gl:WebGLRenderingContext,shader:WebGLShader, pname:Glenum):GLint {.importc.} #Returns information about the shader.

proc getUniform* (gl:WebGLRenderingContext,program:WebGLProgram, location:WebGLUniformLocation):auto {.importc.} #Returns the value of a uniform variable at a given location.

proc getVertexAttrib*(gl:WebGLRenderingContext,index:GLuint, pname:GLenum):WebGLBuffer = #Returns information about a vertex attribute at a given position.
  {. emit: "`result`=`gl`.getVertexAttrib(`index`,`pname`);" .}
#proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLint, format: GLenum, typ: GLenum, pixels:ImageData)= #TODO
#{.emit: "gl.texImage2D(target, level, internalformat, format, type, pixels);".}

proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLint, width, height: GLsizei, border: GLint, format: GLenum, typ: GLenum, pixels:ArrayBufferView) {.importc.}

proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLenum, format: GLenum, typ: GLenum, pixels:dom.ImageElement) {.importc.}

proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLint, format: GLenum, typ: GLenum, pixels:Canvas) {.importc.}

proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLint, format: GLenum, typ: GLenum, pixels:dom.EmbedElement) {.importc.} #TODO

#proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, format, typ:GLenum, ImageData? pixels)
#		{. emit: "`gl`.texSubImage2D(`target`, `level`, `xoffset`, `yoffset`, `format`, `type`, `pixels`);" .}

proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, width, height:GLsizei, format, typ:GLenum, pixels:ArrayBufferView) {.importc.}

proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, format, typ:GLenum, pixels:ImageElement) {.importc.}

proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, format, typ:GLenum, pixels:Canvas) {.importc.}

proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, format, typ:GLenum, pixels:EmbedElement) {.importc.}

#Helpers
proc f32A* (s:openarray[float]):Float32Array = #helper
  {.emit: "`result` = new Float32Array(`s`);".}
proc ui16A* (s:openarray[int]):UInt16Array = #helper
  {.emit: "`result` = new UInt16Array(`s`);".}


proc log*(str:varargs[auto]) = {.emit: "console.log(`str`);".}

converter toFloat32Array*(a: seq[float32]): Float32Array = {.emit: "`result` = new Float32Array(`a`);".}

converter toFloat32Array*(a: seq[float]): Float32Array = {.emit: "`result` = new Float32Array(`a`);".}

converter toUint32Array*(a: seq[uint]): Uint32Array = {.emit: "`result` = new Uint32Array(`a`);".}

converter toInt32Array*(a: seq[int]): Int32Array = {.emit: "`result` = new Int32Array(`a`);".}


proc getContextWebGL*(c: Canvas): WebGLRenderingContext =
  ## Get a webgl context on the given canvas.
  ## Example:
  ## .. code-block:: nim
  ## var canvas = dom.document.getElementById("canvas").Canvas
  ## var gl = getContextWebGL(canvas)

  {.emit: "`result` = `c`.getContext('webgl') || `c`.getContext('experimental-webgl');".}

proc requestAnimationFrame*(fn:proc(time:float))= {.emit:"window.requestAnimationFrame(`fn`);".} 

proc getStatus*(gl:WebGLRenderingContext,what:WebglShader): GLboolean =
  {. emit:"`result` = `gl`.getShaderParameter(`what`, `gl`.COMPILE_STATUS);" .}
proc getStatus*(gl:WebGLRenderingContext,what:WebglProgram): GLboolean =
  {. emit:"`result` = `gl`.getProgramParameter(`what`, `gl`.LINK_STATUS);" .}

proc resize*(canvas:Canvas) =
  if (
      canvas.width  != canvas.clientwidth or
      canvas.height != canvas.clientheight
  ):
    canvas.width  = canvas.clientwidth 
    canvas.height = canvas.clientheight

#[Deprecable?]#
# a: matrix in which to store identity
proc identity4* (a:auto):auto =
  {. emit: "`a`[0]=1;`a`[1]=0;`a`[2]=0;`a`[3]=0;`a`[4]=0;`a`[5]=1;`a`[6]=0;`a`[7]=0;`a`[8]=0;`a`[9]=0;`a`[10]=1;`a`[11]=0;`a`[12]=0;`a`[13]=0;`a`[14]=0;`a`[15]=1;`result`=`a`" .}

  # a: matrix to traslate,b: traslation, c: matrix translated 
proc traslate4* (a,b,c:auto):auto =
  {. emit: "var d=`b`[0],e=`b`[1];`b`=`b`[2];if(!`c`||`a`==`c`){`a`[12]=`a`[0]*d+`a`[4]*e+`a`[8]*`b`+`a`[12];`a`[13]=`a`[1]*d+`a`[5]*e+`a`[9]*`b`+`a`[13];`a`[14]=`a`[2]*d+`a`[6]*e+`a`[10]*`b`+`a`[14];`a`[15]=`a`[3]*d+`a`[7]*e+`a`[11]*`b`+`a`[15];return `a`}var g=`a`[0],f=`a`[1],h=`a`[2],i=`a`[3],j=`a`[4],k=`a`[5],l=`a`[6],o=`a`[7],m=`a`[8],n=`a`[9],p=`a`[10],r=`a`[11];`c`[0]=g;`c`[1]=f;`c`[2]=h;`c`[3]=i;`c`[4]=j;`c`[5]=k;`c`[6]=l;`c`[7]=o;`c`[8]=m;`c`[9]=n;`c`[10]=p;`c`[11]=r;`c`[12]=g*d+j*e+m*`b`+`a`[12];`c`[13]=f*d+k*e+n*`b`+`a`[13];`c`[14]=h*d+l*e+p*`b`+`a`[14];`c`[15]=i*d+o*e+r*`b`+`a`[15];`result` = `c`;" .}
  
  # a: ?? , b: scale, c: ??, d: ??, e: matrix
proc perspective4* (a,b,c,d,e:auto):auto =
  {. emit : "function frustum(a,b,c,d,e,g,f){var h=b-a,i=d-c,j=g-e;f[0]=e*2/h;f[1]=0;f[2]=0;f[3]=0;f[4]=0;f[5]=e*2/i;f[6]=0;f[7]=0;f[8]=(b+a)/h;f[9]=(d+c)/i;f[10]=-(g+e)/j;f[11]=-1;f[12]=0;f[13]=0;f[14]=-(g*e*2)/j;f[15]=0;return f;};`a`=`c`*Math.tan(`a`*Math.PI/360);`b`=`a`*`b`;`result` = frustum(-`b`,`b`,-`a`,`a`,`c`,`d`,`e`);" .}

