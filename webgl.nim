import dom
include webglconsts


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
    
    WebGLActiveInfo* = ref WebGLActiveInfoObj
    WebGLActiveInfoObj {. importc .} = object of RootObj
    
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

        commit* : proc() {.nimcall.} #Pushes frames back to the original HTMLCanvasElement, if the context is not directly fixed to a specific canvas.      
        getContextAttributes* : proc(): WebGLContextAttributes {.nimcall.} #Returns a WebGLContextAttributes object that contains the actual context parameters. Might return null, if the context is lost.
        isContextLost* : proc():bool {.nimcall.} #Returns true if the context is lost, otherwise returns false. 

        #Viewing and clipping

        scissor* : proc(x, y:GLint, width, height: GLsizei) {.nimcall.} #Defines the scissor box.
        viewport* : proc(x, y:GLint, width, height: GLsizei) {.nimcall.} #Sets the viewport.

        #State information

        blendColor* : proc(red, green, blue, alpha:GLclampf) {.nimcall.} #Sets the source and destination blending factors.
        blendEquation* : proc(mode:GLenum) {.nimcall.} #Sets both the RGB blend equation and alpha blend equation to a single equation.
        blendEquationSeparate* : proc(modeRGB, modeAlpha:GLenum) {.nimcall.} #Sets the RGB blend equation and alpha blend equation separately.
        blendFunc* : proc(sfactor, dfactor:GLenum) {.nimcall.} #Defines which function is used for blending pixel arithmetic.
        blendFuncSeparate* : proc(srcRGB, dstRGB, srcAlpha, dstAlpha:GLenum) {.nimcall.} #Defines which function is used for blending pixel arithmetic for RGB and alpha components separately.
        clearColor* : proc(red, green, blue, alpha:GLclampf) {.nimcall.} #Specifies the color values used when clearing color buffers.
        clearDepth* : proc(depth:GLclampf) {.nimcall.} #Specifies the depth value used when clearing the depth buffer.
        clearStencil* : proc(s:GLint) {.nimcall.} #Specifies the stencil value used when clearing the stencil buffer.
        colorMask* : proc(red, green, blue, alpha:GLboolean) {.nimcall.} #Sets which color components to enable or to disable when drawing or rendering to a WebGLFramebuffer.
        cullFace* : proc(mode:GLenum) {.nimcall.} #Specifies whether or not front- and/or back-facing polygons can be culled.
        depthFunc* : proc(fun:GLenum) {.nimcall.} #Specifies a function that compares incoming pixel depth to the current depth buffer value.
        depthMask* : proc(flag:GLboolean) {.nimcall.} #Sets whether writing into the depth buffer is enabled or disabled.
        depthRange* : proc(zNear, zFar:GLclampf) {.nimcall.} #Specifies the depth range mapping from normalized device coordinates to window or viewport coordinates.
        disable* : proc(cap:GLenum) {.nimcall.} #Disables specific WebGL capabilities for this context.
        enable* : proc(cap:GLenum) {.nimcall.} #Enables specific WebGL capabilities for this context.
 # TODO
 #       frontFace* : proc(mode:GLenum) {.nimcall.} #Specifies whether polygons are front- or back-facing by setting a winding orientation.
 #       getParameter* : proc() {.nimcall.} #Returns a value for the passed parameter name.
 #       getError* : proc() {.nimcall.} #Returns error information.
 #       hint* : proc(target,mode:GLenum) {.nimcall.} #Specifies hints for certain behaviors. The interpretation of these hints depend on the implementation.
#        #
        isEnabled* : proc(cap:GLenum):GLboolean {.nimcall.} #Tests whether a specific WebGL capability is enabled or not for this context.
        lineWidth* : proc(width:GLfloat) {.nimcall.} #Sets the line width of rasterized lines.
        pixelStorei* : proc(pname:GLenum, param:GLint) {.nimcall.} #Specifies the pixel storage modes
        polygonOffset* : proc(factor, units:GLfloat) {.nimcall.} #Specifies the scale factors and units to calculate depth values.
        sampleCoverage* : proc(value:GLclampf, invert:GLboolean) {.nimcall.} #Specifies multi-sample coverage parameters for anti-aliasing effects.
        stencilFunc* : proc(fun:GLenum,rf:GLint,mask:GLuint) {.nimcall.} #Sets the both front and back function and reference value for stencil testing.
        stencilFuncSeparate* : proc(face, fun:GLenum, rf:GLint, mask:GLuint) {.nimcall.} #Sets the front and/or back function and reference value for stencil testing.
        stencilMask* : proc(mask:GLuint) {.nimcall.} #Controls enabling and disabling of both the front and back writing of individual bits in the stencil planes.
        stencilMaskSeparate* : proc(face:GLenum,mask:GLuint) {.nimcall.} #Controls enabling and disabling of front and/or back writing of individual bits in the stencil planes.
        stencilOp* : proc(fail, zfail, zpass:GLenum) {.nimcall.} #Sets both the front and back-facing stencil test actions.
        stencilOpSeparate* : proc(face, fail, zfail, zpass:GLenum) {.nimcall.} #Sets the front and/or back-facing stencil test actions.
        
        #Buffers

        bindBuffer* : proc(target:GLenum,buffer:WebGLBuffer) {.nimcall.} #Binds a WebGLBuffer object to a given target.
#TODO        #bufferData* : proc(target:GLenum, size:GLsizeiptr, usage:GLenum) {.nimcall.} #Updates buffer data.
        bufferData* : proc(target:GLenum, data:ArrayBufferView, usage:GLenum) {.nimcall.} #Updates buffer data. #FIXME
#TODO        bufferSubData* : proc(target:GLenum, offset:GLintptr, data) {.nimcall.} #Updates buffer data starting at a passed offset.
        createBuffer* : proc():WebGLBuffer  {.nimcall.} #Creates a WebGLBuffer object.
        deleteBuffer* : proc(buffer:WebGLBuffer ) {.nimcall.} #Deletes a WebGLBuffer object.
        isBuffer* : proc(buffer:WEbGLBuffer):GLboolean {.nimcall.} #Returns a Boolean indicating if the passed buffer is valid. 
        
        #Framebuffers
        bindFramebuffer* : proc(target:GLenum, framebuffer:WebGLFramebuffer) {.nimcall.} #Binds a WebGLFrameBuffer object to a given target.
        checkFramebufferStatus* : proc(target:GLenum):GLenum {.nimcall.} #Returns the status of the framebuffer.
        createFramebuffer* : proc():WebGLFramebuffer  {.nimcall.} #Creates a WebGLFrameBuffer object.
        deleteFramebuffer* : proc(framebuffer:WebGLFramebuffer) {.nimcall.} #Deletes a WebGLFrameBuffer object.
        framebufferRenderbuffer* : proc(target, attachment, renderbuffertarget:GLenum, renderbuffer:WebGLRenderbuffer) {.nimcall.} #Attaches a WebGLRenderingBuffer object to a WebGLFrameBuffer object.
        framebufferTexture2D* : proc(target, attachment, textarget:GLenum, texture:WebGLTexture, level:Glint) {.nimcall.} #Attaches a textures image to a WebGLFrameBuffer object.
        isFramebuffer* : proc(framebuffer:WebGLFramebuffer):GLboolean {.nimcall.} #Returns a Boolean indicating if the passed WebGLFrameBuffer object is valid.
        readPixels* : proc(x, y:GLint, width, height:GLsizei, format, typ:GLenum, pixels:ArrayBufferView) {.nimcall.} #Reads a block of pixels from the WebGLFrameBuffer. 
        
        #Renderbuffers

        bindRenderbuffer* : proc(target:Glenum, renderbuffer: WebGLRenderbuffer) {.nimcall.} #Binds a WebGLRenderBuffer object to a given target.
        createRenderbuffer* : proc():WebGLRenderbuffer {.nimcall.} #Creates a WebGLRenderBuffer object.
        deleteRenderbuffer* : proc(renderbuffer:WebGLRenderbuffer) {.nimcall.} #Deletes a WebGLRenderBuffer object.
        isRenderbuffer* : proc(renderbuffer:WebGLRenderbuffer): GLboolean {.nimcall.} #Returns a Boolean indicating if the passed WebGLRenderingBuffer is valid.
        renderbufferStorage* : proc(target, internalFormat:GLenum, width, height:GLsizei) {.nimcall.} #Creates a renderbuffer data store.

        #Textures

        bindTexture* : proc(target:GLenum, texture:WebGLTexture) {.nimcall.} #Binds a WebGLTexture object to a given target.
        compressedTexImage2D* : proc(target:GLenum, level:GLint, internalformat:GLenum, width, height:GLsizei, border:GLint, pixels:ArrayBufferView) {.nimcall.} #Specifies a 2D texture image in a compressed format.
        compressedTexSubImage2D* : proc(target:GLenum, level, xoffset,yoffset:GLint, width, height:GLsizei, format:GLint, pixels:ArrayBufferView) {.nimcall.} #Specifies a 2D texture sub-image in a compressed format.
        copyTexImage2D* : proc(target:GLenum, level,internalformat, x, y:GLint, width, height:GLsizei, border:GLint) {.nimcall.} #Copies a 2D texture image.
        copyTexSubImage2D* : proc(target:GLenum, level, xoffset, yoffset, x, y:GLint, width, height:GLsizei) {.nimcall.} #Copies a 2D texture sub-image.
        createTexture* : proc():WebGLTexture {.nimcall.} #Creates a WebGLTexture object.
        deleteTexture* : proc(texture:WebGLTexture) {.nimcall.} #Deletes a WebGLTexture object.
        generateMipmap* : proc(target:GLenum) {.nimcall.} #Generates a set of mipmaps for a WebGLTexture object.
        isTexture* : proc(texture:WebGLTexture):GLboolean {.nimcall.} #Returns a Boolean indicating if the passed WebGLTexture is valid.
#DONE?        texImage2D* : proc() {.nimcall.} #Specifies a 2D texture image.
#DONE?        texSubImage2D* : proc() {.nimcall.} #Updates a sub-rectangle of the current WebGLTexture.
        texParameterf* : proc(target:GLenum, pname:GLenum, param:GLfloat ) {.nimcall.} #Sets texture parameters.
        texParameteri* : proc(target:GLenum, pname:GLenum, param:GLenum) {.nimcall.} #Sets texture parameters. 
        
        #Programs and shaders

        attachShader* : proc(program: WebGLProgram, shader: WebGLShader) {.nimcall.} #Attaches a WebGLShader to a WebGLProgram.
        bindAttribLocation* : proc(program:WebGLProgram, index:GLuint, name:cstring) {.nimcall.} #Binds a generic vertex index to a named attribute variable.
        compileShader* : proc(shader:WebGLShader) {.nimcall.} #Compiles a WebGLShader.
        createProgram* : proc():WebGLProgram {.nimcall.} #Creates a WebGLProgram.
        createShader* : proc(typ:GLenum):WebGLShader {.nimcall.} #Creates a WebGLShader.
        deleteProgram* : proc(program:WebGLProgram) {.nimcall.} #Deletes a WebGLProgram.
        deleteShader* : proc(shader:WebGLShader) {.nimcall.} #Deletes a WebGLShader.
        detachShader* : proc(program:WebGLProgram, shader:WebGLShader) {.nimcall.} #Detaches a WebGLShader.
        getAttachedShaders* : proc(program:WebGLProgram): seq[WebGLShader] {.nimcall.} #Returns a list of WebGLShader objects attached to a WebGLProgram.
        getProgramInfoLog* : proc(program:WebGLProgram):cstring {.nimcall.} #Returns the information log for a WebGLProgram object.
        getShaderPrecisionFormat* : proc(shaderType,precisionType: GLenum):WebGLShaderPrecisionFormat {.nimcall.} #Returns a WebGLShaderPrecisionFormat object describing the precision for the numeric format of the shader.
        getShaderInfoLog* : proc(shader:WebGLShader):cstring {.nimcall.} #Returns the information log for a WebGLShader object.
        getShaderSource* : proc(shader:WebGLShader):cstring {.nimcall.} #Returns the source code of a WebGLShader as a string.
        isProgram* : proc(program:WebGLProgram):GLboolean {.nimcall.} #Returns a Boolean indicating if the passed WebGLProgram is valid.
        isShader* : proc(shader:WebGLShader):GLboolean {.nimcall.} #Returns a Boolean indicating if the passed WebGLShader is valid.
        linkProgram* : proc(program:WebGLProgram) {.nimcall.} #Links the passed WebGLProgram object.
        shaderSource* : proc(shader:WebGLShader,source:cstring) {.nimcall.} #Sets the source code in a WebGLShader.
        useProgram* : proc(program:WebGLProgram) {.nimcall.} #Uses the specified WebGLProgram as part the current rendering state.
        validateProgram* : proc(program:WebGLProgram) {.nimcall.} #Validates a WebGLProgram. 
        
        #Uniforms and attributes

        disableVertexAttribArray* : proc(index:GLuint) {.nimcall.} #Disables a vertex attribute array at a given position.
        enableVertexAttribArray* : proc(index:GLuint) {.nimcall.} #Enables a vertex attribute array at a given position.
        getActiveAttrib* : proc(program:WebGLProgram, index:Gluint):WebGLActiveInfo {.nimcall.} #Returns information about an active attribute variable.
        getActiveUniform* : proc(program:WebGLProgram, index:GLuint):WebGLActiveInfo {.nimcall.} #Returns information about an active uniform variable.
        getAttribLocation* : proc(program:WebGLProgram, name:cstring):GLuint {.nimcall.} #Returns the location of an attribute variable.
        getUniformLocation* : proc(program:WebGLProgram, name:cstring):WebGLUniformLocation {.nimcall.} #Returns the location of a uniform variable.
        getVertexAttribOffset* : proc(index:GLuint, pname:GLenum):GLsizeiptr {.nimcall.} #Returns the address of a given vertex attribute.
#        uniform[1234][fi][v]* : proc(location:WebGLUniformLocation, TODO) {.nimcall.} #Specifies a value for a uniform variable.
#        uniformMatrix[234]fv* : proc(location:WebGLUniformLocation, transpose:GLboolean, value:Float32Array) {.nimcall.} #Specifies a matrix value for a uniform variable.
        uniformMatrix4fv* : proc(location:WebGLUniformLocation, transpose:GLboolean, value: Float32Array) {.nimcall.} #Specifies a matrix value for a uniform variable.

#        vertexAttrib[1234]f[v]* : proc(index:GLuint, TODO) {.nimcall.} #Specifies a value for a generic vertex attribute.
        vertexAttribPointer* : proc(index:GLuint, size:GLint, typ:GLenum, normalized:GLboolean, stride:GLsizei, offset:GLintptr) {.nimcall.} #Specifies the data formats and locations of vertex attributes in a vertex attributes array. 

        #Drawing buffers

        clear* : proc(mask:GLbitfield) {.nimcall.} #Clears specified buffers to preset values.
        drawArrays* : proc(mode:GLenum, first:GLint, count:GLsizei) {.nimcall.} #Renders primitives from array data.
        drawElements* : proc(mode:GLenum, count:GLsizei, typ: GLenum, offset:GLintptr) {.nimcall.} #Renders primitives from element array data.
        finish* : proc() {.nimcall.} #Blocks execution until all previously called commands are finished.
        flush* : proc() {.nimcall.} #Empties different 

proc activeTexture* (gl:WebGLRenderingContext, texture:auto) = #Selects the active texture unit.
    {. emit: "`gl`.activeTexture(`texture`);" .}

proc getProgramParameter* (gl:WebGLRenderingContext,program:WebGLProgram, pname:GLenum):auto= #Returns information about the program.
    {.emit: "`result` = `gl`.getProgramParameter(`program`,`pname`);".}

proc getBufferParameter* (gl:WebGLRenderingContext,target, pname:GLenum): auto = #Returns information about the buffer.
    {.emit: "`result` = `gl`.getBufferParameter(`target`,`pname`);".}

proc getFramebufferAttachmentParameter* (gl:WebGLRenderingContext,target, attachment, pname:GLenum):auto = #Returns information about the framebuffer.
    {.emit: "`result` = `gl`.getFramebufferAttachmentParameter(`target`,`attachment`,`pname`);".}

proc getRenderbufferParameter* (gl:WebGLRenderingContext,target, pname:GLenum):auto = #Returns information about the framebuffer.
    {.emit: "`result` = `gl`.getRenderbufferParameter(`target`,`pname`);".}

proc getTexParameter* (gl:WebGLRenderingContext,target:GLenum,pname:GLenum): auto = #Returns information about the texture.
    {.emit: "`result` = `gl`.getTexParameter(`target`,`pname`);".}

proc getShaderParameter* (gl:WebGLRenderingContext,shader:WebGLShader, pname:Glenum):auto = #Returns information about the shader.
    {.emit: "`result` = `gl`.getShaderParameter(`shader`,`pname`);".}

proc getUniform* (gl:WebGLRenderingContext,program:WebGLProgram, location:WebGLUniformLocation):auto = #Returns the value of a uniform variable at a given location.
    {.emit: "`result` = `gl`.getUniform(`program`,`location`);".}

proc getVertexAttrib*(gl:WebGLRenderingContext,index:GLuint, pname:GLenum):auto = #Returns information about a vertex attribute at a given position.
    {.emit: "`result` = `gl`.getVertexAttrib(`index`,`pname`);".}

#proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLint, format: GLenum, typ: GLenum, pixels:ImageData)= #TODO
#{.emit: "gl.texImage2D(target, level, internalformat, format, type, pixels);".}

proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLint, width, height: GLsizei, border: GLint, format: GLenum, typ: GLenum, pixels:ArrayBufferView)=
    {.emit: "`gl`.texImage2D(`target`, `level`, `internalformat`, `width`, `height`, `border`, `format`, `typ`, `pixels`);".}

proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLenum, format: GLenum, typ: GLenum, pixels:dom.ImageElement)=
    {.emit: "`gl`.texImage2D(`target`, `level`, `internalformat`, `format`, `typ`, `pixels`);".}

proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLint, format: GLenum, typ: GLenum, pixels:Canvas)=
    {.emit: "`gl`.texImage2D(`target`, `level`, `internalformat`, `format`, `typ`, `pixels`);".}

proc texImage2D*(gl:WebGLRenderingContext, target: GLenum, level: GLint, internalformat: GLint, format: GLenum, typ: GLenum, pixels:dom.EmbedElement)= #TODO
    {.emit: "`gl`.texImage2D(`target`, `level`, `internalformat`, `format`, `typ`, `pixels`);".}

#proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, format, typ:GLenum, ImageData? pixels)
#		{. emit: "`gl`.texSubImage2D(`target`, `level`, `xoffset`, `yoffset`, `format`, `type`, `pixels`);" .}

proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, width, height:GLsizei, format, typ:GLenum, pixels:ArrayBufferView)=
    {. emit: "`gl`.texSubImage2D(`target`, `level`, `xoffset`, `yoffset`, `width`, `height`, `format`, `type`, `pixels`);" .}

proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, format, typ:GLenum, pixels:ImageElement)=
    {. emit: "`gl`.texSubImage2D(`target`, `level`, `xoffset`, `yoffset`, `format`, `type`, `pixels`);" .}

proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, format, typ:GLenum, pixels:Canvas)=
    {. emit: "`gl`.texSubImage2D(`target`, `level`, `xoffset`, `yoffset`, `format`, `type`, `pixels`);" .}

proc texSubImage2D* (target:GLenum, level, xoffset, yoffset:GLint, format, typ:GLenum, pixels:EmbedElement)=
    {. emit: "`gl`.texSubImage2D(`target`, `level`, `xoffset`, `yoffset`, `format`, `type`, `pixels`);" .}


proc uniform1i*(gl:WebGLRenderingContext,location:WebGLUniformLocation,v0:int)=
    {. emit: "`gl`.uniform1i(`location`, `v0`);".}


#Helpers
proc f32A* (s:seq[float]):Float32Array = #helper
    {.emit: "`result` = new Float32Array(`s`);".}

proc getContextWebGL*(c: Canvas): WebGLRenderingContext = 
    {.emit: "`result` = `c`.getContext('webgl') || `c`.getContext('experimental-webgl');".}

proc getWebGLContext*(c: Canvas): WebGLRenderingContext = 
    {.emit: "`result` = `c`.getContext('webgl') || `c`.getContext('experimental-webgl');".}
     
#dom.window.onload = proc (e: dom.Event) =
#    let c = dom.document.getElementById("glcanvas").Canvas
#    let ctx = c.getContextWebGL
#    ctx.clearColor(0.0, 0.0, 0.0, 1.0)
#    ctx.clear(COLOR_BUFFER_BIT)


# a: matrix in which to store identity
proc identity4* (a:auto):auto =
    {. emit: "`a`[0]=1;`a`[1]=0;`a`[2]=0;`a`[3]=0;`a`[4]=0;`a`[5]=1;`a`[6]=0;`a`[7]=0;`a`[8]=0;`a`[9]=0;`a`[10]=1;`a`[11]=0;`a`[12]=0;`a`[13]=0;`a`[14]=0;`a`[15]=1;`result`=`a`" .}

    # a: matrix to traslate,b: traslation, c: matrix translated 
proc traslate4* (a,b,c:auto):auto =
    {. emit: "var d=`b`[0],e=`b`[1];`b`=`b`[2];if(!`c`||`a`==`c`){`a`[12]=`a`[0]*d+`a`[4]*e+`a`[8]*`b`+`a`[12];`a`[13]=`a`[1]*d+`a`[5]*e+`a`[9]*`b`+`a`[13];`a`[14]=`a`[2]*d+`a`[6]*e+`a`[10]*`b`+`a`[14];`a`[15]=`a`[3]*d+`a`[7]*e+`a`[11]*`b`+`a`[15];return `a`}var g=`a`[0],f=`a`[1],h=`a`[2],i=`a`[3],j=`a`[4],k=`a`[5],l=`a`[6],o=`a`[7],m=`a`[8],n=`a`[9],p=`a`[10],r=`a`[11];`c`[0]=g;`c`[1]=f;`c`[2]=h;`c`[3]=i;`c`[4]=j;`c`[5]=k;`c`[6]=l;`c`[7]=o;`c`[8]=m;`c`[9]=n;`c`[10]=p;`c`[11]=r;`c`[12]=g*d+j*e+m*`b`+`a`[12];`c`[13]=f*d+k*e+n*`b`+`a`[13];`c`[14]=h*d+l*e+p*`b`+`a`[14];`c`[15]=i*d+o*e+r*`b`+`a`[15];`result` = `c`;" .}
    
    # a: ?? , b: scale, c: ??, d: ??, e: matrix
proc perspective4* (a,b,c,d,e:auto):auto =
    {. emit : "function frustum(a,b,c,d,e,g,f){var h=b-a,i=d-c,j=g-e;f[0]=e*2/h;f[1]=0;f[2]=0;f[3]=0;f[4]=0;f[5]=e*2/i;f[6]=0;f[7]=0;f[8]=(b+a)/h;f[9]=(d+c)/i;f[10]=-(g+e)/j;f[11]=-1;f[12]=0;f[13]=0;f[14]=-(g*e*2)/j;f[15]=0;return f;};`a`=`c`*Math.tan(`a`*Math.PI/360);`b`=`a`*`b`;`result` = frustum(-`b`,`b`,-`a`,`a`,`c`,`d`,`e`);" .}
