import dom
import webgl/enums
export enums


#TODO: https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Types
type
  Canvas* = ref CanvasObj
  CanvasObj {.importc.} = object of dom.Element
    width*: int
    height*:int

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

  Int32Array* = ref Int32ArrayObj
  Int32ArrayObj {. importc .} = object of ArrayBufferView

  Uint16Array* = ref Uint16ArrayObj
  Uint16ArrayObj {. importc .} = object of ArrayBufferView
  
  Float32Array* = ref Float32ArrayObj
  Float32ArrayObj {. importc .} = object of ArrayBufferView
  
  Float64Array* = ref Float64ArrayObj
  Float64ArrayObj {. importc .} = object of ArrayBufferView

  DataView* = ref DataViewObj
  DataViewObj {. importc .} = object of ArrayBufferView
  
  WebGLActiveInfoObj* {. importc .} = object
    name*: cstring
    `type`*: uint
    size*: int
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
    # The following properties and methods provide general information and functionality to deal with the WebGL context:

    canvas*: Canvas #A read-only back-reference to the HTMLCanvasElement. Might be null if it is not associated with a <canvas> element.
    drawingBufferWidth*:int #The read-only width of the current drawing buffer. Should match the width of the canvas element associated with this context.
    drawingBufferHeight*:int #The read-only height of the current drawing buffer. Should match the height of the canvas element associated with this context.

{.push importcpp.}
proc commit*(gl:WebGLRenderingContext)
  ## Pushes frames back to the original HTMLCanvasElement, if the context is not directly fixed to a specific canvas.      
proc getContextAttributes*(gl:WebGLRenderingContext): WebGLContextAttributes 
  ## Returns a WebGLContextAttributes object that contains the actual context parameters. Might return null, if the context is lost.
proc isContextLost*(gl:WebGLRenderingContext):bool
  ## Returns true if the context is lost, otherwise returns false. 

# Viewing and clipping
proc scissor*(gl:WebglRenderingContext, x, y,width, height: int) 
  ## Defines the scissor box.
proc viewport*(gl:WebglRenderingContext, x, y, width, height: int) 
  ## Sets the viewport.

# State information
proc blendColor* (gl:WebglRenderingContext, red, green, blue, alpha:float32) 
  ## Sets the source and destination blending factors.
proc blendEquation* (gl:WebglRenderingContext, mode:uint) 
  ## Sets both the RGB blend equation and alpha blend equation to a single equation.
proc blendEquationSeparate* (gl:WebglRenderingContext, modeRGB, modeAlpha:uint) 
  ## Sets the RGB blend equation and alpha blend equation separately.
proc blendFunc* (gl:WebglRenderingContext, sfactor, dfactor:uint) 
  ## Defines which function is used for blending pixel arithmetic.
proc blendFuncSeparate* (gl:WebglRenderingContext, srcRGB, dstRGB, srcAlpha, dstAlpha:uint) 
  ## Defines which function is used for blending pixel arithmetic for RGB and alpha components separately.
proc clearColor* (gl:WebglRenderingContext, red, green, blue, alpha:float32) 
  ## Specifies the color values used when clearing color buffers.
proc clearDepth* (gl:WebglRenderingContext, depth:float32) 
  ## Specifies the depth value used when clearing the depth buffer.
proc clearStencil* (gl:WebglRenderingContext, s:int) 
  ## Specifies the stencil value used when clearing the stencil buffer.
proc colorMask* (gl:WebglRenderingContext, red, green, blue, alpha:bool) 
  ## Sets which color components to enable or to disable when drawing or rendering to a WebGLFramebuffer.
proc cullFace* (gl:WebglRenderingContext, mode:uint) 
  ## Specifies whether or not front- and/or back-facing polygons can be culled.
proc depthFunc* (gl:WebglRenderingContext, fun:uint) 
  ## Specifies a function that compares incoming pixel depth to the current depth buffer value.
proc depthMask* (gl:WebglRenderingContext, flag:bool) 
  ## Sets whether writing into the depth buffer is enabled or disabled.
proc depthRange* (gl:WebglRenderingContext, zNear, zFar:float) 
  ## Specifies the depth range mapping from normalized device coordinates to window or viewport coordinates.
proc disable* (gl:WebglRenderingContext, cap:uint) 
  ## Disables specific WebGL capabilities for this context.
proc enable* (gl:WebglRenderingContext, cap:uint) 
  ## Enables specific WebGL capabilities for this context.
proc frontFace* (gl:WebglRenderingContext, mode:uint) 
  ## Specifies whether polygons are front- or back-facing by setting a winding orientation.
proc getError* (gl:WebglRenderingContext):uint 
  ## Returns error information.
proc hint* (gl:WebglRenderingContext, target,mode:uint) 
  ## Specifies hints for certain behaviors. The interpretation of these hints depend on the implementation.
proc isEnabled* (gl:WebglRenderingContext, cap:uint):bool 
  ## Tests whether a specific WebGL capability is enabled or not for this context.
proc lineWidth* (gl:WebglRenderingContext, width:float32) 
  ## Sets the line width of rasterized lines.
proc pixelStorei* (gl:WebglRenderingContext, pname:uint, param:int) 
  ## Specifies the pixel storage modes
proc polygonOffset* (gl:WebglRenderingContext, factor, units:float32) 
  ## Specifies the scale factors and units to calculate depth values.
proc sampleCoverage* (gl:WebglRenderingContext, value:float32, invert:bool) 
  ## Specifies multi-sample coverage parameters for anti-aliasing effects.
proc stencilFunc* (gl:WebglRenderingContext, fun:uint,rf:int,mask:uint) 
  ## Sets the both front and back function and reference value for stencil testing.
proc stencilFuncSeparate* (gl:WebglRenderingContext, face, fun:uint, rf:int, mask:uint) 
  ## Sets the front and/or back function and reference value for stencil testing.
proc stencilMask* (gl:WebglRenderingContext, mask:uint) 
  ## Controls enabling and disabling of both the front and back writing of individual bits in the stencil planes.
proc stencilMaskSeparate* (gl:WebglRenderingContext, face:uint,mask:uint) 
  ## Controls enabling and disabling of front and/or back writing of individual bits in the stencil planes.
proc stencilOp* (gl:WebglRenderingContext, fail, zfail, zpass:uint) 
  ## Sets both the front and back-facing stencil test actions.
proc stencilOpSeparate* (gl:WebglRenderingContext, face, fail, zfail, zpass:uint) 
  ## Sets the front and/or back-facing stencil test actions.

# Buffers
proc bindBuffer* (gl:WebglRenderingContext,target:uint|BufferEnum,buffer:WebGLBuffer) 
  ## Binds a WebGLBuffer object to a given target.
proc createBuffer* (gl:WebglRenderingContext):WebGLBuffer  
  ## Creates a WebGLBuffer object.
proc deleteBuffer* (gl:WebglRenderingContext,buffer:WebGLBuffer ) 
  ## Deletes a WebGLBuffer object.
proc isBuffer* (gl:WebglRenderingContext,buffer:WEbGLBuffer):bool 
  ## Returns a Boolean indicating if the passed buffer is valid. 
    
# Framebuffers
proc bindFramebuffer* (gl:WebglRenderingContext,target:uint, framebuffer:WebGLFramebuffer) 
  ## Binds a WebGLFrameBuffer object to a given target.
proc checkFramebufferStatus* (gl:WebglRenderingContext,target:uint):uint 
  ## Returns the status of the framebuffer.
proc createFramebuffer* (gl:WebglRenderingContext):WebGLFramebuffer  
  ## Creates a WebGLFrameBuffer object.
proc deleteFramebuffer* (gl:WebglRenderingContext,framebuffer:WebGLFramebuffer) 
  ## Deletes a WebGLFrameBuffer object.
proc framebufferRenderbuffer* (gl:WebglRenderingContext,target, attachment, renderbuffertarget:uint, renderbuffer:WebGLRenderbuffer) 
  ## Attaches a WebGLRenderingBuffer object to a WebGLFrameBuffer object.
proc framebufferTexture2D* (gl:WebglRenderingContext,target, attachment, textarget:uint, texture:WebGLTexture, level:int) 
  ## Attaches a textures image to a WebGLFrameBuffer object.
proc isFramebuffer* (gl:WebglRenderingContext,framebuffer:WebGLFramebuffer):bool 
  ## Returns a Boolean indicating if the passed WebGLFrameBuffer object is valid.
proc readPixels* (gl:WebglRenderingContext,x, y:int, width, height:int, format, typ:uint, pixels:ArrayBufferView) 
  ## Reads a block of pixels from the WebGLFrameBuffer. 

#Renderbuffers
proc bindRenderbuffer* (gl:WebglRenderingContext,target:uint, renderbuffer: WebGLRenderbuffer) 
  ## Binds a WebGLRenderBuffer object to a given target.
proc createRenderbuffer* (gl:WebglRenderingContext):WebGLRenderbuffer 
  ## Creates a WebGLRenderBuffer object.
proc deleteRenderbuffer* (gl:WebglRenderingContext,renderbuffer:WebGLRenderbuffer) 
  ## Deletes a WebGLRenderBuffer object.
proc isRenderbuffer* (gl:WebglRenderingContext,renderbuffer:WebGLRenderbuffer): bool 
  ## Returns a Boolean indicating if the passed WebGLRenderingBuffer is valid.
proc renderbufferStorage* (gl:WebglRenderingContext,target, internalFormat:uint, width, height:int) 
  ## Creates a renderbuffer data store.

#Textures
proc bindTexture* (gl:WebglRenderingContext,target:uint, texture:WebGLTexture) 
  ## Binds a WebGLTexture object to a given target.
proc compressedTexImage2D* (gl:WebglRenderingContext,target:uint, level:int, internalformat:uint, width, height:int, border:int, pixels:ArrayBufferView) 
  ## Specifies a 2D texture image in a compressed format.
proc compressedTexSubImage2D* (gl:WebglRenderingContext,target:uint, level, xoffset,yoffset:int, width, height:int, format:int, pixels:ArrayBufferView) 
  ## Specifies a 2D texture sub-image in a compressed format.
proc copyTexImage2D* (gl:WebglRenderingContext,target:uint, level,internalformat, x, y:int, width, height:int, border:int) 
  ## Copies a 2D texture image.
proc copyTexSubImage2D* (gl:WebglRenderingContext,target:uint, level, xoffset, yoffset, x, y:int, width, height:int) 
  ## Copies a 2D texture sub-image.
proc createTexture* (gl:WebglRenderingContext):WebGLTexture 
  ## Creates a WebGLTexture object.
proc deleteTexture* (gl:WebglRenderingContext,texture:WebGLTexture) 
  ## Deletes a WebGLTexture object.
proc generateMipmap* (gl:WebglRenderingContext,target:uint) 
  ## Generates a set of mipmaps for a WebGLTexture object.
proc isTexture* (gl:WebglRenderingContext,texture:WebGLTexture):bool 
  ## Returns a Boolean indicating if the passed WebGLTexture is valid.
proc texParameterf* (gl:WebglRenderingContext,target:uint, pname:uint, param:float32 ) 
  ## Sets texture parameters.
proc texParameteri* (gl:WebglRenderingContext,target:uint, pname:uint, param:uint) 
  ## Sets texture parameters. 

#Programs and shaders
proc attachShader* (gl:WebglRenderingContext,program: WebGLProgram, shader: WebGLShader) 
  ## Attaches a WebGLShader to a WebGLProgram.
proc bindAttribLocation* (gl:WebglRenderingContext,program:WebGLProgram, index:uint, name:cstring) 
  ## Binds a generic vertex index to a named attribute variable.
proc compileShader* (gl:WebglRenderingContext,shader:WebGLShader) 
  ## Compiles a WebGLShader.
proc createProgram* (gl:WebglRenderingContext):WebGLProgram 
  ## Creates a WebGLProgram.
proc createShader* (gl:WebglRenderingContext,typ:uint|ShaderEnum):WebGLShader 
  ## Creates a WebGLShader.
proc deleteProgram* (gl:WebglRenderingContext,program:WebGLProgram) 
  ## Deletes a WebGLProgram.
proc deleteShader* (gl:WebglRenderingContext,shader:WebGLShader) 
  ## Deletes a WebGLShader.
proc detachShader* (gl:WebglRenderingContext,program:WebGLProgram, shader:WebGLShader) 
  ## Detaches a WebGLShader.
proc getAttachedShaders* (gl:WebglRenderingContext,program:WebGLProgram): seq[WebGLShader] 
  ## Returns a list of WebGLShader objects attached to a WebGLProgram.
proc getProgramInfoLog* (gl:WebglRenderingContext,program:WebGLProgram):cstring 
  ## Returns the information log for a WebGLProgram object.
proc getShaderPrecisionFormat* (gl:WebglRenderingContext,shaderType,precisionType: uint):WebGLShaderPrecisionFormat 
  ## Returns a WebGLShaderPrecisionFormat object describing the precision for the numeric format of the shader.
proc getShaderInfoLog* (gl:WebglRenderingContext,shader:WebGLShader):cstring 
  ## Returns the information log for a WebGLShader object.
proc getShaderSource* (gl:WebglRenderingContext,shader:WebGLShader):cstring 
  ## Returns the source code of a WebGLShader as a string.
proc isProgram* (gl:WebglRenderingContext,program:WebGLProgram):bool 
  ## Returns a Boolean indicating if the passed WebGLProgram is valid.
proc isShader* (gl:WebglRenderingContext,shader:WebGLShader):bool 
  ## Returns a Boolean indicating if the passed WebGLShader is valid.
proc linkProgram* (gl:WebglRenderingContext,program:WebGLProgram) 
  ## Links the passed WebGLProgram object.
proc shaderSource* (gl:WebglRenderingContext,shader:WebGLShader,source:cstring) 
  ## Sets the source code in a WebGLShader.
proc useProgram* (gl:WebglRenderingContext,program:WebGLProgram) 
  ## Uses the specified WebGLProgram as part the current rendering state.
proc validateProgram* (gl:WebglRenderingContext,program:WebGLProgram) 
  ## Validates a WebGLProgram. 

# Uniforms and attributes
proc disableVertexAttribArray* (gl:WebglRenderingContext,index:uint) 
  ## Disables a vertex attribute array at a given position.
proc enableVertexAttribArray* (gl:WebglRenderingContext,index:uint) 
  ## Enables a vertex attribute array at a given position.
proc getActiveAttrib* (gl:WebglRenderingContext,program:WebGLProgram, index:uint):WebGLActiveInfo 
  ## Returns information about an active attribute variable.
proc getActiveUniform* (gl:WebglRenderingContext,program:WebGLProgram, index:uint):WebGLActiveInfo 
  ## Returns information about an active uniform variable.
proc getAttribLocationUnchecked* (gl:WebglRenderingContext,program:WebGLProgram, name:cstring):int {. importcpp: "#.getAttribLocation(@)".}
proc getAttribLocation* (gl:WebglRenderingContext,program:WebGLProgram, name:cstring):uint {. importcpp: "#.getAttribLocationChecked(@)".}=
  let unchckresult = gl.getAttribLocationUnchecked(program,name)
  doassert(unchckresult>=0, "getAttribLocation:" & $name & "not found")
  result = unchckresult.uint
   
  ## Returns the location of an attribute variable.
proc getUniformLocation* (gl:WebglRenderingContext,program:WebGLProgram, name:cstring):WebGLUniformLocation 
  ## Returns the location of a uniform variable.
proc getVertexAttribOffset* (gl:WebglRenderingContext,index:uint, pname:uint):int64
  ## Returns the address of a given vertex attribute.
proc uniform1f* (gl:WebglRenderingContext,location:WebGLUniformLocation, v0:float32) 
  ## Specifies a value for a uniform variable.
proc uniform1fv* (gl:WebglRenderingContext,location:WebGLUniformLocation, value:Float32Array)
proc uniform1i* (gl:WebglRenderingContext,location:WebGLUniformLocation, v0:int)
proc uniform1iv* (gl:WebglRenderingContext,location:WebGLUniformLocation, value:Int32Array)

proc uniform2f* (gl:WebglRenderingContext,location:WebGLUniformLocation, v0, v1:float32)
proc uniform2fv* (gl:WebglRenderingContext,location:WebGLUniformLocation, value:Float32Array)
proc uniform2i* (gl:WebglRenderingContext,location:WebGLUniformLocation, v0, v1:int)
proc uniform2iv* (gl:WebglRenderingContext,location:WebGLUniformLocation, value:Int32Array)

proc uniform3f* (gl:WebglRenderingContext,location:WebGLUniformLocation, v0, v1, v2:float32)
proc uniform3fv* (gl:WebglRenderingContext,location:WebGLUniformLocation, value:Float32Array)
proc uniform3i* (gl:WebglRenderingContext,location:WebGLUniformLocation, v0, v1, v2:int)
proc uniform3iv* (gl:WebglRenderingContext,location:WebGLUniformLocation, value:Int32Array)

proc uniform4f* (gl:WebglRenderingContext,location:WebGLUniformLocation, v0, v1, v2, v3:float32)
proc uniform4fv* (gl:WebglRenderingContext,location:WebGLUniformLocation, value:Float32Array)
proc uniform4i* (gl:WebglRenderingContext,location:WebGLUniformLocation, v0, v1, v2, v3:int)
proc uniform4iv* (gl:WebglRenderingContext,location:WebGLUniformLocation, value:Int32Array)

proc uniformMatrix2fv* (gl:WebglRenderingContext,location:WebGLUniformLocation, transpose:bool, value: Float32Array) 
  ## Specifies a matrix value for a uniform variable.
proc uniformMatrix3fv* (gl:WebglRenderingContext,location:WebGLUniformLocation, transpose:bool, value: Float32Array)
proc uniformMatrix4fv* (gl:WebglRenderingContext,location:WebGLUniformLocation, transpose:bool, value: Float32Array) 

proc vertexAttrib1f*(gl:WebglRenderingContext,index:uint, v0:float32) 
  ##Specifies a value for a generic vertex attribute.
proc vertexAttrib2f*(gl:WebglRenderingContext,index:uint, v0, v1:float32)
proc vertexAttrib3f*(gl:WebglRenderingContext,index:uint, v0, v1, v2:float32)
proc vertexAttrib4f*(gl:WebglRenderingContext,index:uint, v0, v1, v2, v3:float32)

proc vertexAttrib1fv*(gl:WebglRenderingContext,index:uint, value:Float32Array)
proc vertexAttrib2fv*(gl:WebglRenderingContext,index:uint, value:Float32Array)
proc vertexAttrib3fv*(gl:WebglRenderingContext,index:uint, value:Float32Array)
proc vertexAttrib4fv*(gl:WebglRenderingContext,index:uint, value:Float32Array)

proc vertexAttribPointer* (gl:WebglRenderingContext,index:uint, size:int, typ:uint|DataType, 
                           normalized:bool, stride:int, offset:int64) 
  ## Specifies the data formats and locations of vertex attributes in a vertex attributes array. 

#Drawing buffers
proc clear* (gl:WebglRenderingContext,mask:uint|BufferBit) 
  ## Clears specified buffers to preset values.
proc drawArrays* (gl:WebglRenderingContext,mode:uint|PrimitiveMode, first:int, count:int) 
  ## Renders primitives from array data.
proc drawElements* (gl:WebglRenderingContext,mode:uint|PrimitiveMode, count:int, typ: uint|DataType, offset:int64) 
  ## Renders primitives from element array data.
proc finish* (gl:WebglRenderingContext) 
  ## Blocks execution until all previously called commands are finished.
proc flush* (gl:WebglRenderingContext) 
  ## Empties different 

proc bufferData*(gl:WebGLRenderingContext, target:uint|BufferEnum, size:int64, usage:uint|BufferEnum)  
  ## Updates buffer data.

proc bufferData*(gl:WebGLRenderingContext, target:uint|BufferEnum, data:Int32Array|Uint16Array|Float32Array, usage:uint|BufferEnum) 
  ## Updates buffer data.

proc bufferSubData*(gl:WebGLRenderingContext,target:uint, offset:int64, data:auto) 
  ## Updates buffer data starting at a passed offset.
  
proc getParameter* (gl:WebGLRenderingContext,pname:uint):auto 
  ## Returns a value for the passed parameter name.

proc activeTexture* (gl:WebGLRenderingContext, texture:auto)  
  ## Selects the active texture unit.

# FIXME: getParameter does not handle 
# gl.DELETE_STATUS: Returns a bool indicating whether or not the program is flagged for deletion.
# gl.LINK_STATUS: Returns a bool indicating whether or not the last link operation was successful.
# gl.VALIDATE_STATUS: Returns a bool indicating whether or not the last validation operation was successful
# Use getStatus(Shader|Program) instead

proc getProgramParameter* (gl:WebGLRenderingContext,program:WebGLProgram, pname:uint):int 
  ## Returns information about the program.

proc getBufferParameter* (gl:WebGLRenderingContext,target, pname:uint): auto  
  ## Returns information about the buffer.

proc getFramebufferAttachmentParameter* (gl:WebGLRenderingContext,target, attachment, pname:uint):auto  
  ## Returns information about the framebuffer.

proc getRenderbufferParameter* (gl:WebGLRenderingContext,target, pname:uint):auto  
  ## Returns information about the framebuffer.

proc getTexParameter* (gl:WebGLRenderingContext,target:uint,pname:uint): auto  
  ## Returns information about the texture.

proc getShaderParameter* (gl:WebGLRenderingContext,shader:WebGLShader, pname:uint):int  
  ## Returns information about the shader.

proc getUniform* (gl:WebGLRenderingContext,program:WebGLProgram, location:WebGLUniformLocation):auto  
  ## Returns the value of a uniform variable at a given location.

proc getVertexAttrib*(gl:WebGLRenderingContext,index:uint, pname:uint):WebGLBuffer 
  ## Returns information about a vertex attribute at a given position.

#proc texImage2D*(gl:WebGLRenderingContext, target: uint, level: int, internalformat: int, format: uint, typ: uint, pixels:ImageData)= #TODO
#{.emit: "gl.texImage2D(target, level, internalformat, format, type, pixels);".}

proc texImage2D*(gl:WebGLRenderingContext, target: uint, level: int, internalformat: int, width, height: int, border: int, format: uint, typ: uint, pixels:ArrayBufferView) 

proc texImage2D*(gl:WebGLRenderingContext, target: uint, level: int, internalformat: uint, format: uint, typ: uint, pixels:dom.ImageElement) 

proc texImage2D*(gl:WebGLRenderingContext, target: uint, level: int, internalformat: int, format: uint, typ: uint, pixels:Canvas) 

proc texImage2D*(gl:WebGLRenderingContext, target: uint, level: int, internalformat: int, format: uint, typ: uint, pixels:dom.EmbedElement)  #TODO

#proc texSubImage2D* (target:uint, level, xoffset, yoffset:int, format, typ:uint, ImageData? pixels)
#		{. emit: "`gl`.texSubImage2D(`target`, `level`, `xoffset`, `yoffset`, `format`, `type`, `pixels`);" .}

proc texSubImage2D* (target:uint, level, xoffset, yoffset:int, width, height:int, format, typ:uint, pixels:ArrayBufferView) 

proc texSubImage2D* (target:uint, level, xoffset, yoffset:int, format, typ:uint, pixels:ImageElement) 

proc texSubImage2D* (target:uint, level, xoffset, yoffset:int, format, typ:uint, pixels:Canvas) 

proc texSubImage2D* (target:uint, level, xoffset, yoffset:int, format, typ:uint, pixels:EmbedElement) 

proc getContext*(c: Canvas,kind:cstring): WebGLRenderingContext
  ## Get the specified context on the given canvas.
  ## Does NOT account for eg. ``experimental-webgl`` vs ``webgl`` etc.
  ## See ``getContextWebgl`` for that
  ## Example:
  ## .. code-block:: nim
  ## var canvas = dom.document.getElementById("canvas").Canvas
  ## var gl = canvas.getContext("webgl")
  ##

{. pop .}

proc getContextWebgl*(c:Canvas) : WebGLRenderingContext = 
  ## Get a webgl context on the given canvas.
  ## Tries ``webgl`` first, then ``experimental-webgl``
  ## Example:
  ## .. code-block:: nim
  ## var canvas = dom.document.getElementById("canvas").Canvas
  ## var gl = canvas.getContextWebgl()
  ##
  result = c.getContext("webgl") 
  if result.isNil: result = c.getContext("experimental-webgl")
  assert(not result.isNil)

proc getBoundingClientRect*(c:Canvas):tuple[top,bottom,left,right:float] =
  var
    t,b,lf,r:float
  {.emit:"""
  var _rect = `c`.getBoundingClientRect();
  `t`= _rect.top;
  `b`= _rect.bottom;
  `l`= _rect.left;
  `r`= _rect.right;
  """}
  result = (t,b,lf,r)

proc log*(str:varargs[auto]) = {.emit: "console.log(`str`);".}

proc requestAnimationFrame*(fn:proc(time:float))= {.emit:"window.requestAnimationFrame(`fn`);".} 

proc getStatus*(gl:WebGLRenderingContext,what:WebglShader): bool =
  {. emit:"`result` = `gl`.getShaderParameter(`what`, `gl`.COMPILE_STATUS);" .}
proc getStatus*(gl:WebGLRenderingContext,what:WebglProgram): bool =
  {. emit:"`result` = `gl`.getProgramParameter(`what`, `gl`.LINK_STATUS);" .}

proc resize*(canvas:Canvas) =
  if (
      canvas.width  != canvas.clientwidth or
      canvas.height != canvas.clientheight
  ):
    canvas.width  = canvas.clientwidth 
    canvas.height = canvas.clientheight

converter toF32*(v:float):float32 = v.float32
converter toF32A*[N:int](v:array[N,float32]) :Float32Array {.importcpp: "new Float32Array(#)".} # might be a lie
converter toF32A*(v:seq[float32]) :Float32Array {.importcpp: "new Float32Array(#)".} # might be a lie
converter toF32A*[N:int](v:array[N,float]) :Float32Array {.importcpp: "new Float32Array(#)".} # might be a lie
converter toF32A*(v:seq[float]) :Float32Array {.importcpp: "new Float32Array(#)".} # might be a lie

converter toUI16*(v:int):uint16 = v.uint16
converter toUI16A*[N:int](v:array[N,uint16]) :Uint16Array {.importcpp: "new Uint16Array(#)".} # might be a lie
converter toUI16A*(v:seq[uint16]) :Uint16Array {.importcpp: "new Uint16Array(#)".} # might be a lie

converter toI32A*[N:int](v:array[N,int]) :Int32Array {.importcpp: "new Int32Array(#)".} # might be a lie
converter toI32A*(v:seq[int]) :Int32Array {.importcpp: "new Int32Array(#)".} # might be a lie


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

