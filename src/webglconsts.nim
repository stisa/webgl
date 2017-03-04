
type
    #WebGL 1

    #These types are used within a WebGLRenderingContext.

    GLint* = int # long #32-bit twos complement signed integer. 
    GLsizei* = int # long #Used for sizes (e.g. width and height of the drawing buffer). 
    
    GLboolean* = bool # boolean #A Boolean. 
    
    GLenum* = uint #unsigned long # Used for enums. See also the list of constants. 
    GLbitfield* = uint #unsigned long #A bit field that stores multiple, logical bits. Used for example in WebGLRenderingContext.clear(). 
    GLushort* = uint # unsigned short #16-bit twos complement unsigned integer. 
    GLuint* = uint # unsigned long #32-bit twos complement unsigned integer. 
    
    GLshort* = uint # short #16-bit twos complement signed integer. 
    
    GLintptr* = int64 # long long #Special type for pointer arithmetic. 
    GLsizeiptr* = int64 # long long #Special type for pointer arithmetic. 
    
    GLubyte* = byte # octet #8-bit twos complement unsigned integer. 
    GLbyte* = byte # byte #8-bit twos complement signed integer. 
    
    GLfloat* = float32 # unrestricted float #32-bit IEEE floating point number. 
    GLclampf* = float32 # unrestricted TODO float #Clamped 32-bit IEEE floating point number. 


# WEBGL constants

const
#Clearing buffers

    #Constants passed to WebGLRenderingContext.clear() to clear buffer masks.
    DEPTH_BUFFER_BIT* : GLbitfield = 0x00000100 # Passed to clear to clear the current depth buffer. 
    STENCIL_BUFFER_BIT* : GLbitfield = 0x00000400 # Passed to clear to clear the current stencil buffer. 
    COLOR_BUFFER_BIT*: GLbitfield = 0x00004000 # Passed to clear to clear the current color buffer. 

#Rendering primitives

    #Constants passed to WebGLRenderingContext.drawElements() or WebGLRenderingContext.drawArrays() to specify what kind of primitive to render.
    
    POINTS* : GLenum = 0x0000 # Passed to drawElements or drawArrays to draw single points. 
    LINES* : GLenum = 0x0001 # Passed to drawElements or drawArrays to draw lines. Each vertex connects to the one after it. 
    LINE_LOOP* : GLenum = 0x0002 # Passed to drawElements or drawArrays to draw lines. Each set of two vertices is treated as a separate line segment. 
    LINE_STRIP* : GLenum = 0x0003 # Passed to drawElements or drawArrays to draw a connected group of line segments from the first vertex to the last. 
    TRIANGLES* : GLenum = 0x0004 # Passed to drawElements or drawArrays to draw triangles. Each set of three vertices creates a separate triangle. 
    TRIANGLE_STRIP* : GLenum = 0x0005 # Passed to drawElements or drawArrays to draw a connected group of triangles. 
    TRIANGLE_FAN* : GLenum = 0x0006 # Passed to drawElements or drawArrays to draw a connected group of triangles. Each vertex connects to the previous and the first vertex in the fan. 

#Blending modes

    #Constants passed to WebGLRenderingContext.blendFunc() or WebGLRenderingContext.blendFuncSeparate() to specify the blending mode (for both, RBG and alpha, or separately).
    ZERO* : GLenum = 0 # Passed to blendFunc or blendFuncSeparate to turn off a component. 
    ONE* : GLenum = 1 # Passed to blendFunc or blendFuncSeparate to turn on a component. 
    SRC_COLOR* : GLenum = 0x0300 # Passed to blendFunc or blendFuncSeparate to multiply a component by the source elements color. 
    ONE_MINUS_SRC_COLOR* : GLenum = 0x0301 # Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the source elements color. 
    SRC_ALPHA* : GLenum = 0x0302 # Passed to blendFunc or blendFuncSeparate to multiply a component by the source's alpha. 
    ONE_MINUS_SRC_ALPHA* : GLenum = 0x0303 # Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the source's alpha. 
    DST_ALPHA* : GLenum = 0x0304 # Passed to blendFunc or blendFuncSeparate to multiply a component by the destination's alpha. 
    ONE_MINUS_DST_ALPHA* : GLenum = 0x0305 # Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the destination's alpha. 
    DST_COLOR* : GLenum = 0x0306 # Passed to blendFunc or blendFuncSeparate to multiply a component by the destination's color. 
    ONE_MINUS_DST_COLOR* : GLenum = 0x0307 # Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the destination's color. 
    SRC_ALPHA_SATURATE* : GLenum = 0x0308 # Passed to blendFunc or blendFuncSeparate to multiply a component by the minimum of source's alpha or one minus the destination's alpha. 
    CONSTANT_COLOR* : GLenum = 0x8001 # Passed to blendFunc or blendFuncSeparate to specify a constant color blend function. 
    ONE_MINUS_CONSTANT_COLOR* : GLenum = 0x8002 # Passed to blendFunc or blendFuncSeparate to specify one minus a constant color blend function. 
    CONSTANT_ALPHA* : GLenum = 0x8003 # Passed to blendFunc or blendFuncSeparate to specify a constant alpha blend function. 
    ONE_MINUS_CONSTANT_ALPHA* : GLenum = 0x8004 # Passed to blendFunc or blendFuncSeparate to specify one minus a constant alpha blend function. 

#Blending equations

    #Constants passed to WebGLRenderingContext.blendEquation() or WebGLRenderingContext.blendEquationSeparate() to control how the blending is calculated (for both, RBG and alpha, or separately).
    FUNC_ADD* : GLenum = 0x8006 # Passed to blendEquation or blendEquationSeparate to set an addition blend function. 
    FUNC_SUBSTRACT* : GLenum = 0x800A # Passed to blendEquation or blendEquationSeparate to specify a subtraction blend function (source - destination). 
    FUNC_REVERSE_SUBTRACT* : GLenum = 0x800B # Passed to blendEquation or blendEquationSeparate to specify a reverse subtraction blend function (destination - source). 

#Getting GL parameter information

    #Constants passed to WebGLRenderingContext.getParameter() to specify what information to return.
    BLEND_EQUATION* : GLenum = 0x8009 # Passed to getParameter to get the current RGB blend function. 
    BLEND_EQUATION_RGB* : GLenum = 0x8009 # Passed to getParameter to get the current RGB blend function. Same as BLEND_EQUATION 
    BLEND_EQUATION_ALPHA* : GLenum = 0x883D # Passed to getParameter to get the current alpha blend function. Same as BLEND_EQUATION 
    BLEND_DST_RGB* : GLenum = 0x80C8 # Passed to getParameter to get the current destination RGB blend function. 
    BLEND_SRC_RGB* : GLenum = 0x80C9 # Passed to getParameter to get the current destination RGB blend function. 
    BLEND_DST_ALPHA* : GLenum = 0x80CA # Passed to getParameter to get the current destination alpha blend function. 
    BLEND_SRC_ALPHA* : GLenum = 0x80CB # Passed to getParameter to get the current source alpha blend function. 
    BLEND_COLOR* : GLenum = 0x8005 # Passed to getParameter to return a the current blend color. 
    ARRAY_BUFFER_BINDING* : GLenum = 0x8894 # Passed to getParameter to get the array buffer binding. 
    ELEMENT_ARRAY_BUFFER_BINDING* : GLenum = 0x8895 # Passed to getParameter to get the current element array buffer. 
    LINE_WIDTH* : GLenum = 0x0B21 # Passed to getParameter to get the current lineWidth (set by the lineWidth method). 
    ALIASED_POINT_SIZE_RANGE* : GLenum = 0x846D # Passed to getParameter to get the current size of a point drawn with gl.POINTS 
    ALIASED_LINE_WIDTH_RANGE* : GLenum = 0x846E # Passed to getParameter to get the range of available widths for a line. Returns a length-2 array with the lo value at 0, and hight at 1. 
    CULL_FACE_MODE* : GLenum = 0x0B45 # Passed to getParameter to get the current value of cullFace. Should return FRONT, BACK, or FRONT_AND_BACK 
    FRONT_FACE* : GLenum = 0x0B46 # Passed to getParameter to determine the current value of frontFace. Should return CW or CCW. 
    DEPTH_RANGE* : GLenum = 0x0B70 # Passed to getParameter to return a length-2 array of floats giving the current depth range. 
    DEPTH_WRITEMASK* : GLenum = 0x0B72 # Passed to getParameter to determine if the depth write mask is enabled. 
    DEPTH_CLEAR_VALUE* : GLenum = 0x0B73 # Passed to getParameter to determine the current depth clear value. 
    DEPTH_FUNC* : GLenum = 0x0B74 # Passed to getParameter to get the current depth function. Returns NEVER, ALWAYS, LESS, EQUAL, LEQUAL, GREATER, GEQUAL, or NOTEQUAL. 
    STENCIL_CLEAR_VALUE* : GLenum = 0x0B91 # Passed to getParameter to get the value the stencil will be cleared to. 
    STENCIL_FUNC* : GLenum = 0x0B92 # Passed to getParameter to get the current stencil function. Returns NEVER, ALWAYS, LESS, EQUAL, LEQUAL, GREATER, GEQUAL, or NOTEQUAL. 
    STENCIL_FAIL* : GLenum = 0x0B94 # Passed to getParameter to get the current stencil fail function. Should return KEEP, REPLACE, INCR, DECR, INVERT, INCR_WRAP, or DECR_WRAP. 
    STENCIL_PASS_DEPTH_FAIL* : GLenum = 0x0B95 # Passed to getParameter to get the current stencil fail function should the depth buffer test fail. Should return KEEP, REPLACE, INCR, DECR, INVERT, INCR_WRAP, or DECR_WRAP. 
    STENCIL_PASS_DEPTH_PASS* : GLenum = 0x0B96 # Passed to getParameter to get the current stencil fail function should the depth buffer test pass. Should return KEEP, REPLACE, INCR, DECR, INVERT, INCR_WRAP, or DECR_WRAP. 
    STENCIL_REF* : GLenum = 0x0B97 # Passed to getParameter to get the reference value used for stencil tests. 
    STENCIL_VALUE_MASK* : GLenum = 0x0B93 #   
    STENCIL_WRITEMASK* : GLenum = 0x0B98 #   
    STENCIL_BACK_FUNC* : GLenum = 0x8800 #   
    STENCIL_BACK_FAIL* : GLenum = 0x8801 #   
    STENCIL_BACK_PASS_DEPTH_FAIL* : GLenum = 0x8802 #   
    STENCIL_BACK_PASS_DEPTH_PASS* : GLenum = 0x8803 #   
    STENCIL_BACK_REF* : GLenum = 0x8CA3 #   
    STENCIL_BACK_VALUE_MASK* : GLenum = 0x8CA4 #   
    STENCIL_BACK_WRITEMASK* : GLenum = 0x8CA5 #   
    VIEWPORT* : GLenum = 0x0BA2 # Returns an Int32Array with four elements for the current viewport dimensions. 
    SCISSOR_BOX* : GLenum = 0x0C10 # Returns an Int32Array with four elements for the current scissor box dimensions. 
    COLOR_CLEAR_VALUE* : GLenum = 0x0C22 #   
    COLOR_WRITEMASK* : GLenum = 0x0C23 #   
    UNPACK_ALIGNMENT* : GLenum = 0x0CF5 #   
    PACK_ALIGNMENT* : GLenum = 0x0D05 #   
    MAX_TEXTURE_SIZE* : GLenum = 0x0D33 #   
    MAX_VIEWPORT_DIMS* : GLenum = 0x0D3A #   
    SUBPIXEL_BITS* : GLenum = 0x0D50 #   
    RED_BITS* : GLenum = 0x0D52 #   
    GREEN_BITS* : GLenum = 0x0D53 #   
    BLUE_BITS* : GLenum = 0x0D54 #   
    ALPHA_BITS* : GLenum = 0x0D55 #   
    DEPTH_BITS* : GLenum = 0x0D56 #   
    STENCIL_BITS* : GLenum = 0x0D57 #   
    POLYGON_OFFSET_UNITS* : GLenum = 0x2A00 #   
    POLYGON_OFFSET_FACTOR* : GLenum = 0x8038 #   
    TEXTURE_BINDING_2D* : GLenum = 0x8069 #   
    SAMPLE_BUFFERS* : GLenum = 0x80A8 #   
    SAMPLES* : GLenum = 0x80A9 #   
    SAMPLE_COVERAGE_VALUE* : GLenum = 0x80AA #   
    SAMPLE_COVERAGE_INVERT* : GLenum = 0x80AB #   
    COMPRESSED_TEXTURE_FORMATS* : GLenum = 0x86A3 #   
    VENDOR* : GLenum = 0x1F00 #   
    RENDERER* : GLenum = 0x1F01 #   
    VERSION* : GLenum = 0x1F02 #   
    IMPLEMENTATION_COLOR_READ_TYPE* : GLenum = 0x8B9A #   
    IMPLEMENTATION_COLOR_READ_FORMAT* : GLenum = 0x8B9B #   
    BROWSER_DEFAULT_WEBGL* : GLenum = 0x9244 #   

#Buffers

    #Constants passed to WebGLRenderingContext.bufferData(), WebGLRenderingContext.bufferSubData(), WebGLRenderingContext.bindBuffer(), or WebGLRenderingContext.getBufferParameter().
    STATIC_DRAW* : GLenum = 0x88E4 # Passed to bufferData as a hint about whether the contents of the buffer are likely to be used often and not change often. 
    STREAM_DRAW* : GLenum = 0x88E0 # Passed to bufferData as a hint about whether the contents of the buffer are likely to not be used often. 
    DYNAMIC_DRAW* : GLenum = 0x88E8 # Passed to bufferData as a hint about whether the contents of the buffer are likely to be used often and change often. 
    ARRAY_BUFFER* : GLenum = 0x8892 # Passed to bindBuffer or bufferData to specify the type of buffer being used. 
    ELEMENT_ARRAY_BUFFER* : GLenum = 0x8893 # Passed to bindBuffer or bufferData to specify the type of buffer being used. 
    BUFFER_SIZE* : GLenum = 0x8764 # Passed to getBufferParameter to get a buffer's size. 
    BUFFER_USAGE* : GLenum = 0x8765 # Passed to getBufferParameter to get the hint for the buffer passed in when it was created. 

#Vertex attributes

    #Constants passed to WebGLRenderingContext.getVertexAttrib().
    CURRENT_VERTEX_ATTRIB* : GLenum = 0x8626 # Passed to getVertexAttrib to read back the current vertex attribute. 
    VERTEX_ATTRIB_ARRAY_ENABLED* : GLenum = 0x8622 #   
    VERTEX_ATTRIB_ARRAY_SIZE* : GLenum = 0x8623 #   
    VERTEX_ATTRIB_ARRAY_STRIDE* : GLenum = 0x8624 #   
    VERTEX_ATTRIB_ARRAY_TYPE* : GLenum = 0x8625 #   
    VERTEX_ATTRIB_ARRAY_NORMALIZED* : GLenum = 0x886A #   
    VERTEX_ATTRIB_ARRAY_POINTER* : GLenum = 0x8645 #   
    VERTEX_ATTRIB_ARRAY_BUFFER_BINDING* : GLenum = 0x889F #   

#Culling

    #Constants passed to WebGLRenderingContext.cullFace().
    CULL_FACE* : GLenum = 0x0B44 # Passed to enable/disable to turn on/off culling. Can also be used with getParameter to find the current culling method. 
    FRONT* : GLenum = 0x0404 # Passed to cullFace to specify that only front faces should be drawn. 
    BACK* : GLenum = 0x0405 # Passed to cullFace to specify that only back faces should be drawn. 
    FRONT_AND_BACK* : GLenum = 0x0408 # Passed to cullFace to specify that front and back faces should be drawn. 

#    Enabling and disabling

    #Constants passed to WebGLRenderingContext.enable() or WebGLRenderingContext.disable().
    BLEND* : GLenum = 0x0BE2 # Passed to enable/disable to turn on/off blending. Can also be used with getParameter to find the current blending method. 
    DEPTH_TEST* : GLenum = 0x0B71 # Passed to enable/disable to turn on/off the depth test. Can also be used with getParameter to query the depth test. 
    DITHER* : GLenum = 0x0BD0 # Passed to enable/disable to turn on/off dithering. Can also be used with getParameter to find the current dithering method. 
    POLYGON_OFFSET_FILL* : GLenum = 0x8037 # Passed to enable/disable to turn on/off the polygon offset. Useful for rendering hidden-line images, decals, and or solids with highlighted edges. Can also be used with getParameter to query the scissor test. 
    SAMPLE_ALPHA_TO_COVERAGE* : GLenum = 0x809E # Passed to enable/disable to turn on/off the alpha to coverage. Used in multi-sampling alpha channels. 
    SAMPLE_COVERAGE* : GLenum = 0x80A0 # Passed to enable/disable to turn on/off the sample coverage. Used in multi-sampling. 
    SCISSOR_TEST* : GLenum = 0x0C11 # Passed to enable/disable to turn on/off the scissor test. Can also be used with getParameter to query the scissor test. 
    STENCIL_TEST* : GLenum = 0x0B90 # Passed to enable/disable to turn on/off the stencil test. Can also be used with getParameter to query the stencil test. 


#   Errors

    #Constants returned from WebGLRenderingContext.getError().
    NO_ERROR* : GLenum = 0 #Returned from getError. 
    INVALID_ENUM* : GLenum = 0x0500 # Returned from getError. 
    INVALID_VALUE* : GLenum = 0x0501 # Returned from getError. 
    INVALID_OPERATION* : GLenum = 0x0502 # Returned from getError. 
    OUT_OF_MEMORY* : GLenum = 0x0505 # Returned from getError. 
    CONTEXT_LOST_WEBGL* : GLenum = 0x9242 # Returned from getError. 

#   Front face directions

    #Constants passed to WebGLRenderingContext.frontFace().
    CW* : GLenum = 0x0900 # Passed to frontFace to specify the front face of a polygon is drawn in the clockwise direction 
    CCW* : GLenum = 0x0901 # Passed to frontFace to specify the front face of a polygon is drawn in the counter clockwise direction 

 #  Hints

    #Constants passed to WebGLRenderingContext.hint()
    DONT_CARE* : GLenum = 0x1100 # There is no preference for this behavior. 
    FASTEST* : GLenum = 0x1101 # The most efficient behavior should be used. 
    NICEST* : GLenum = 0x1102 # The most correct or the highest quality option should be used. 
    GENERATE_MIPMAP_HINT* : GLenum = 0x8192 # Hint for the quality of filtering when generating mipmap images with WebGLRenderingContext.generateMipmap(). 

#   Data types

    BYTE* : GLenum = 0x1400 #   
    UNSIGNED_BYTE* : GLenum = 0x1401 #   
    SHORT* : GLenum = 0x1402 #   
    UNSIGNED_SHORT* : GLenum = 0x1403 #   
    INT* : GLenum = 0x1404 #   
    UNSIGNED_INT* : GLenum = 0x1405 #   
    FLOAT* : GLenum = 0x1406 #   

#   Pixel formats

    DEPTH_COMPONENT* : GLenum = 0x1902 #   
    ALPHA* : GLenum = 0x1906 #   
    RGB* : GLenum = 0x1907 #   
    RGBA* : GLenum = 0x1908 #   
    LUMINANCE* : GLenum = 0x1909 #   
    LUMINANCE_ALPHA* : GLenum = 0x190A #   

 #  Pixel types
   
    UNSIGNED_SHORT_4_4_4_4* : GLenum = 0x8033 #   
    UNSIGNED_SHORT_5_5_5_1* : GLenum = 0x8034 #   
    UNSIGNED_SHORT_5_6_5* : GLenum = 0x8363 #   

 #  Shaders

    #Constants passed to WebGLRenderingContext.createShader() or WebGLRenderingContext.getShaderParameter()
    FRAGMENT_SHADER* : GLenum = 0x8B30 # Passed to createShader to define a fragment shader. 
    VERTEX_SHADER* : GLenum = 0x8B31 # Passed to createShader to define a vertex shader 
    COMPILE_STATUS* : GLenum = 0x8B81 # Passed to getShaderParamter to get the status of the compilation. Returns false if the shader was not compiled. You can then query getShaderInfoLog to find the exact error 
    DELETE_STATUS* : GLenum = 0x8B80 # Passed to getShaderParamter to determine if a shader was deleted via deleteShader. Returns true if it was, false otherwise. 
    LINK_STATUS* : GLenum = 0x8B82 # Passed to getProgramParameter after calling linkProgram to determine if a program was linked correctly. Returns false if there were errors. Use getProgramInfoLog to find the exact error. 
    VALIDATE_STATUS* : GLenum = 0x8B83 # Passed to getProgramParameter after calling validateProgram to determine if it is valid. Returns false if errors were found. 
    ATTACHED_SHADERS* : GLenum = 0x8B85 # Passed to getProgramParameter after calling attachShader to determine if the shader was attached correctly. Returns false if errors occurred. 
    ACTIVE_ATTRIBUTES* : GLenum = 0x8B89 # Passed to getProgramParameter to get the number of attributes active in a program. 
    ACTIVE_UNIFORMS* : GLenum = 0x8B86 # Passed to getProgramParamter to get the number of uniforms active in a program. 
    MAX_VERTEX_ATTRIBS* : GLenum = 0x8869 #   
    MAX_VERTEX_UNIFORM_VECTORS* : GLenum = 0x8DFB #   
    MAX_VARYING_VECTORS* : GLenum = 0x8DFC #   
    MAX_COMBINED_TEXTURE_IMAGE_UNITS* : GLenum = 0x8B4D #   
    MAX_VERTEX_TEXTURE_IMAGE_UNITS* : GLenum = 0x8B4C #   
    MAX_TEXTURE_IMAGE_UNITS* : GLenum = 0x8872 # Implementation dependent number of maximum texture units. At least 8. 
    MAX_FRAGMENT_UNIFORM_VECTORS* : GLenum = 0x8DFD #   
    SHADER_TYPE* : GLenum = 0x8B4F #   
    SHADING_LANGUAGE_VERSION* : GLenum = 0x8B8C #   
    CURRENT_PROGRAM* : GLenum = 0x8B8D #   

  #  Depth or stencil tests

  #  Constants passed to WebGLRenderingContext.depthFunc() or WebGLRenderingContext.stencilFunc().
    NEVER* : GLenum = 0x0200 # Passed to depthFunction or stencilFunction to specify depth or stencil tests will never pass. i.e. Nothing will be drawn. 
    ALWAYS* : GLenum = 0x0207 # Passed to depthFunction or stencilFunction to specify depth or stencil tests will always pass. i.e. Pixels will be drawn in the order they are drawn. 
    LESS* : GLenum = 0x0201 # Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is less than the stored value. 
    EQUAL* : GLenum = 0x0202 # Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is equals to the stored value. 
    LEQUAL* : GLenum = 0x0203 # Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is less than or equal to the stored value. 
    GREATER* : GLenum = 0x0204 # Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is greater than the stored value. 
    GEQUAL* : GLenum = 0x0206 # Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is greater than or equal to the stored value. 
    NOTEQUAL* : GLenum = 0x0205 # Passed to depthFunction or stencilFunction to specify depth or stencil tests will pass if the new depth value is not equal to the stored value. 

   # Stencil actions

   # Constants passed to WebGLRenderingContext.stencilOp().
    KEEP* : GLenum = 0x1E00 #   
    REPLACE* : GLenum = 0x1E01 #   
    INCR* : GLenum = 0x1E02 #   
    DECR* : GLenum = 0x1E03 #   
    INVERT* : GLenum = 0x150A #   
    INCR_WRAP* : GLenum = 0x8507 #   
    DECR_WRAP* : GLenum = 0x8508 #   

    #*Textures

    #*Constants passed to WebGLRenderingContext.texParameteri(), WebGLRenderingContext.texParameterf(), WebGLRenderingContext.bindTexture(), WebGLRenderingContext.texImage2D(), and others.
    NEAREST* : GLenum = 0x2600 #   
    LINEAR* : GLenum = 0x2601 #   
    NEAREST_MIPMAP_NEAREST* : GLenum = 0x2700 #   
    LINEAR_MIPMAP_NEAREST* : GLenum = 0x2701 #   
    NEAREST_MIPMAP_LINEAR* : GLenum = 0x2702 #   
    LINEAR_MIPMAP_LINEAR* : GLenum = 0x2703 #   
    TEXTURE_MAG_FILTER* : GLenum = 0x2800 #   
    TEXTURE_MIN_FILTER* : GLenum = 0x2801 #   
    TEXTURE_WRAP_S* : GLenum = 0x2802 #   
    TEXTURE_WRAP_T* : GLenum = 0x2803 #   
    TEXTURE_2D* : GLenum = 0x0DE1 #   
    TEXTURE* : GLenum = 0x1702 #   
    TEXTURE_CUBE_MAP* : GLenum = 0x8513 #   
    TEXTURE_BINDING_CUBE_MAP* : GLenum = 0x8514 #   
    TEXTURE_CUBE_MAP_POSITIVE_X* : GLenum = 0x8515 #   
    TEXTURE_CUBE_MAP_NEGATIVE_X* : GLenum = 0x8516 #   
    TEXTURE_CUBE_MAP_POSITIVE_Y* : GLenum = 0x8517 #   
    TEXTURE_CUBE_MAP_NEGATIVE_Y* : GLenum = 0x8518 #   
    TEXTURE_CUBE_MAP_POSITIVE_Z* : GLenum = 0x8519 #   
    TEXTURE_CUBE_MAP_NEGATIVE_Z* : GLenum = 0x851A #   
    MAX_CUBE_MAP_TEXTURE_SIZE* : GLenum = 0x851C #
    TEXTURE0* : GLenum = 0x84C0 # A texture unit.
    TEXTURE1* : GLenum = 0x84C1
    TEXTURE2* : GLenum = 0x84C2
    TEXTURE3* : GLenum = 0x84C3
    TEXTURE4* : GLenum = 0x84C4
    TEXTURE5* : GLenum = 0x84C5
    TEXTURE6* : GLenum = 0x84C6
    TEXTURE7* : GLenum = 0x84C7
    TEXTURE8* : GLenum = 0x84C8
    TEXTURE9* : GLenum = 0x84C9
    TEXTURE10* : GLenum = 0x84CA
    TEXTURE11* : GLenum = 0x84CB
    TEXTURE12* : GLenum = 0x84CC
    TEXTURE13* : GLenum = 0x84CD
    TEXTURE14* : GLenum = 0x84CE
    TEXTURE15* : GLenum = 0x84CF
    TEXTURE16* : GLenum = 0x84D0
    TEXTURE17* : GLenum = 0x84D1
    TEXTURE18* : GLenum = 0x84D2
    TEXTURE19* : GLenum = 0x84D3
    TEXTURE20* : GLenum = 0x84D4
    TEXTURE21* : GLenum = 0x84D5
    TEXTURE22* : GLenum = 0x84D6
    TEXTURE23* : GLenum = 0x84D7
    TEXTURE24* : GLenum = 0x84D8
    TEXTURE25* : GLenum = 0x84D9
    TEXTURE26* : GLenum = 0x84DA
    TEXTURE27* : GLenum = 0x84DB
    TEXTURE28* : GLenum = 0x84DC
    TEXTURE29* : GLenum = 0x84DD
    TEXTURE30* : GLenum = 0x84DE
    TEXTURE31* : GLenum = 0x84DF 
    ACTIVE_TEXTURE* : GLenum = 0x84E0 # The current active texture unit. 
    REPEAT* : GLenum = 0x2901 #   
    CLAMP_TO_EDGE* : GLenum = 0x812F #   
    MIRRORED_REPEAT* : GLenum = 0x8370 #   

    #*Uniform types

    FLOAT_VEC2* : GLenum = 0x8B50 #   
    FLOAT_VEC3* : GLenum = 0x8B51 #   
    FLOAT_VEC4* : GLenum = 0x8B52 #   
    INT_VEC2* : GLenum = 0x8B53 #   
    INT_VEC3* : GLenum = 0x8B54 #   
    INT_VEC4* : GLenum = 0x8B55 #   
    BOOL* : GLenum = 0x8B56 #   
    BOOL_VEC2* : GLenum = 0x8B57 #   
    BOOL_VEC3* : GLenum = 0x8B58 #   
    BOOL_VEC4* : GLenum = 0x8B59 #   
    FLOAT_MAT2* : GLenum = 0x8B5A #   
    FLOAT_MAT3* : GLenum = 0x8B5B #   
    FLOAT_MAT4* : GLenum = 0x8B5C #   
    SAMPLER_2D* : GLenum = 0x8B5E #   
    SAMPLER_CUBE* : GLenum = 0x8B60 #   

    #*Shader precision-specified types

    LOW_FLOAT* : GLenum = 0x8DF0 #   
    MEDIUM_FLOAT* : GLenum = 0x8DF1 #   
    HIGH_FLOAT* : GLenum = 0x8DF2 #   
    LOW_INT* : GLenum = 0x8DF3 #   
    MEDIUM_INT* : GLenum = 0x8DF4 #   
    HIGH_INT* : GLenum = 0x8DF5 #   

    #*Framebuffers and renderbuffers

    FRAMEBUFFER* : GLenum = 0x8D40 #   
    RENDERBUFFER* : GLenum = 0x8D41 #   
    RGBA4* : GLenum = 0x8056 #   
    RGB5_A1* : GLenum = 0x8057 #   
    RGB565* : GLenum = 0x8D62 #   
    DEPTH_COMPONENT16* : GLenum = 0x81A5 #   
    STENCIL_INDEX* : GLenum = 0x1901 #   
    STENCIL_INDEX8* : GLenum = 0x8D48 #   
    DEPTH_STENCIL* : GLenum = 0x84F9 #   
    RENDERBUFFER_WIDTH* : GLenum = 0x8D42 #   
    RENDERBUFFER_HEIGHT* : GLenum = 0x8D43 #   
    RENDERBUFFER_INTERNAL_FORMAT* : GLenum = 0x8D44 #   
    RENDERBUFFER_RED_SIZE* : GLenum = 0x8D50 #   
    RENDERBUFFER_GREEN_SIZE* : GLenum = 0x8D51 #   
    RENDERBUFFER_BLUE_SIZE* : GLenum = 0x8D52 #   
    RENDERBUFFER_ALPHA_SIZE* : GLenum = 0x8D53 #   
    RENDERBUFFER_DEPTH_SIZE* : GLenum = 0x8D54 #   
    RENDERBUFFER_STENCIL_SIZE* : GLenum = 0x8D55 #   
    FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE* : GLenum = 0x8CD0 #   
    FRAMEBUFFER_ATTACHMENT_OBJECT_NAME* : GLenum = 0x8CD1 #   
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL* : GLenum = 0x8CD2 #   
    FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE* : GLenum = 0x8CD3 #   
    COLOR_ATTACHMENT0* : GLenum = 0x8CE0 #   
    DEPTH_ATTACHMENT* : GLenum = 0x8D00 #   
    STENCIL_ATTACHMENT* : GLenum = 0x8D20 #   
    DEPTH_STENCIL_ATTACHMENT* : GLenum = 0x821A #   
    NONE* : GLenum = 0   
    FRAMEBUFFER_COMPLETE* : GLenum = 0x8CD5 #   
    FRAMEBUFFER_INCOMPLETE_ATTACHMENT* : GLenum = 0x8CD6 #   
    FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT* : GLenum = 0x8CD7 #   
    FRAMEBUFFER_INCOMPLETE_DIMENSIONS* : GLenum = 0x8CD9 #   
    FRAMEBUFFER_UNSUPPORTED* : GLenum = 0x8CDD #   
    FRAMEBUFFER_BINDING* : GLenum = 0x8CA6 #   
    RENDERBUFFER_BINDING* : GLenum = 0x8CA7 #   
    MAX_RENDERBUFFER_SIZE* : GLenum = 0x84E8 #   
    INVALID_FRAMEBUFFER_OPERATION* : GLenum = 0x0506 #   

    #*Pixel storage modes

    #*Constants passed to WebGLRenderingContext.pixelStorei().

    UNPACK_FLIP_Y_WEBGL* : GLenum = 0x9240 #   
    UNPACK_PREMULTIPLY_ALPHA_WEBGL* : GLenum = 0x9241 #   
    UNPACK_COLORSPACE_CONVERSION_WEBGL* : GLenum = 0x9243 #   

    #*Additional constants defined WebGL 2

    #*These constants are defined on the WebGL2RenderingContext interface. All WebGL 1 constants are also available in a WebGL 2 context.

    #*Getting GL parameter information

    #*Constants passed to WebGLRenderingContext.getParameter() to specify what information to return.

    READ_BUFFER* : GLenum = 0x0C02 #   
    UNPACK_ROW_LENGTH* : GLenum = 0x0CF2 #   
    UNPACK_SKIP_ROWS* : GLenum = 0x0CF3 #   
    UNPACK_SKIP_PIXELS* : GLenum = 0x0CF4 #   
    PACK_ROW_LENGTH* : GLenum = 0x0D02 #   
    PACK_SKIP_ROWS* : GLenum = 0x0D03 #   
    PACK_SKIP_PIXELS* : GLenum = 0x0D04 #   
    TEXTURE_BINDING_3D* : GLenum = 0x806A #   
    UNPACK_SKIP_IMAGES* : GLenum = 0x806D #   
    UNPACK_IMAGE_HEIGHT* : GLenum = 0x806E #   
    MAX_3D_TEXTURE_SIZE* : GLenum = 0x8073 #   
    MAX_ELEMENTS_VERTICES* : GLenum = 0x80E8 #   
    MAX_ELEMENTS_INDICES* : GLenum = 0x80E9 #   
    MAX_TEXTURE_LOD_BIAS* : GLenum = 0x84FD #   
    MAX_FRAGMENT_UNIFORM_COMPONENTS* : GLenum = 0x8B49 #   
    MAX_VERTEX_UNIFORM_COMPONENTS* : GLenum = 0x8B4A #   
    MAX_ARRAY_TEXTURE_LAYERS* : GLenum = 0x88FF #   
    MIN_PROGRAM_TEXEL_OFFSET* : GLenum = 0x8904 #   
    MAX_PROGRAM_TEXEL_OFFSET* : GLenum = 0x8905 #   
    MAX_VARYING_COMPONENTS* : GLenum = 0x8B4B #   
    FRAGMENT_SHADER_DERIVATIVE_HINT* : GLenum = 0x8B8B #   
    RASTERIZER_DISCARD* : GLenum = 0x8C89 #   
    VERTEX_ARRAY_BINDING* : GLenum = 0x85B5 #   
    MAX_VERTEX_OUTPUT_COMPONENTS* : GLenum = 0x9122 #   
    MAX_FRAGMENT_INPUT_COMPONENTS* : GLenum = 0x9125 #   
    MAX_SERVER_WAIT_TIMEOUT* : GLenum = 0x9111 #   
    MAX_ELEMENT_INDEX* : GLenum = 0x8D6B #   

    #*Textures

    #*Constants passed to WebGLRenderingContext.texParameteri(), WebGLRenderingContext.texParameterf(), WebGLRenderingContext.bindTexture(), WebGLRenderingContext.texImage2D(), and others.

    RED* : GLenum = 0x1903 #   
    RGB8* : GLenum = 0x8051 #   
    RGBA8* : GLenum = 0x8058 #   
    RGB10_A2* : GLenum = 0x8059 #   
    TEXTURES_3D* : GLenum = 0x806F #   
    TEXTURE_WRAP_R* : GLenum = 0x8072 #   
    TEXTURE_MIN_LOD* : GLenum = 0x813A #   
    TEXTURE_MAX_LOD* : GLenum = 0x813B #   
    TEXTURE_BASE_LEVEL* : GLenum = 0x813C #   
    TEXTURE_MAX_LEVEL* : GLenum = 0x813D #   
    TEXTURE_COMPARE_MODE* : GLenum = 0x884C #   
    TEXTURE_COMPARE_FUNC* : GLenum = 0x884D #   
    SRGB* : GLenum = 0x8C40 #   
    SRGB8* : GLenum = 0x8C41 #   
    SRGB8_ALPHA8* : GLenum = 0x8C43 #   
    COMPARE_REF_TO_TEXTURE* : GLenum = 0x884E #   
    RGBA32F* : GLenum = 0x8814 #   
    RGB32F* : GLenum = 0x8815 #   
    RGBA16F* : GLenum = 0x881A #   
    RGB16F* : GLenum = 0x881B #   
    TEXTURE_2D_ARRAY* : GLenum = 0x8C1A #   
    TEXTURE_BINDING_2D_ARRAY* : GLenum = 0x8C1D #   
    R11F_G11F_B10F* : GLenum = 0x8C3A #   
    RGB9_E5* : GLenum = 0x8C3D #   
    RGBA32UI* : GLenum = 0x8D70 #   
    RGB32UI* : GLenum = 0x8D71 #   
    RGBA16UI* : GLenum = 0x8D76 #   
    RGB16UI* : GLenum = 0x8D77 #   
    RGBA8UI* : GLenum = 0x8D7C #   
    RGB8UI* : GLenum = 0x8D7D #   
    RGBA32I* : GLenum = 0x8D82 #   
    RGB32I* : GLenum = 0x8D83 #   
    RGBA16I* : GLenum = 0x8D88 #   
    RGB16I* : GLenum = 0x8D89 #   
    RGBA8I* : GLenum = 0x8D8E #   
    RGB8I* : GLenum = 0x8D8F #   
    RED_INTEGER* : GLenum = 0x8D94 #   
    RGB_INTEGER* : GLenum = 0x8D98 #   
    RGBA_INTEGER* : GLenum = 0x8D99 #   
    R8* : GLenum = 0x8229 #   
    RG8* : GLenum = 0x822B #   
    R16F* : GLenum = 0x822D #   
    R32F* : GLenum = 0x822E #   
    RG16F* : GLenum = 0x822F #   
    RG32F* : GLenum = 0x8230 #   
    R8I* : GLenum = 0x8231 #   
    R8UI* : GLenum = 0x8232 #   
    R16I* : GLenum = 0x8233 #   
    R16UI* : GLenum = 0x8234 #   
    R32I* : GLenum = 0x8235 #   
    R32UI* : GLenum = 0x8236 #   
    RG8I* : GLenum = 0x8237 #   
    RG8UI* : GLenum = 0x8238 #   
    RG16I* : GLenum = 0x8239 #   
    RG16UI* : GLenum = 0x823A #   
    RG32I* : GLenum = 0x823B #   
    RG32UI* : GLenum = 0x823C #   
    R8_SNORM* : GLenum = 0x8F94 #   
    RG8_SNORM* : GLenum = 0x8F95 #   
    RGB8_SNORM* : GLenum = 0x8F96 #   
    RGBA8_SNORM* : GLenum = 0x8F97 #   
    RGB10_A2UI* : GLenum = 0x906F #   
    COMPRESSED_R11_EAC* : GLenum = 0x9270 #   
    COMPRESSED_SIGNED_R11_EAC* : GLenum = 0x9271 #   
    COMPRESSED_RG11_EAC* : GLenum = 0x9272 #   
    COMPRESSED_SIGNED_RG11_EAC* : GLenum = 0x9273 #   
    COMPRESSED_RGB8_ETC2* : GLenum = 0x9274 #   
    COMPRESSED_SRGB8_ETC2* : GLenum = 0x9275 #   
    COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2* : GLenum = 0x9276 #   
    COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC* : GLenum = 0x9277 #   
    COMPRESSED_RGBA8_ETC2_EAC* : GLenum = 0x9278 #   
    COMPRESSED_SRGB8_ALPHA8_ETC2_EAC* : GLenum = 0x9279 #   
    TEXTURE_IMMUTABLE_FORMAT*  : GLenum = 0x912F #   
    TEXTURE_IMMUTABLE_LEVELS* : GLenum = 0x82DF #   

    #*Pixel types

    UNSIGNED_INT_2_10_10_10_REV* : GLenum = 0x8368 #   
    UNSIGNED_INT_10F_11F_11F_REV* : GLenum = 0x8C3B #   
    UNSIGNED_INT_5_9_9_9_REV* : GLenum = 0x8C3E #   
    FLOAT_32_UNSIGNED_INT_24_8_REV* : GLenum = 0x8DAD #   
    UNSIGNED_INT_24_8* : GLenum = 0x84FA #   
    HALF_FLOAT* : GLenum = 0x140B #   
    RG* : GLenum = 0x8227 #   
    RG_INTEGER* : GLenum = 0x8228 #   
    INT_2_10_10_10_REV* : GLenum = 0x8D9F #   

    #*Queries

    CURRENT_QUERY* : GLenum = 0x8865 #   
    QUERY_RESULT*  : GLenum = 0x8866 #   
    QUERY_RESULT_AVAILABLE* : GLenum = 0x8867 #   
    ANY_SAMPLES_PASSED* : GLenum = 0x8C2F #   
    ANY_SAMPLES_PASSED_CONSERVATIVE* : GLenum = 0x8D6A #   

    #*Draw buffers

    MAX_DRAW_BUFFERS* : GLenum = 0x8824 #   
    DRAW_BUFFER0* : GLenum = 0x8825 #   
    DRAW_BUFFER1* : GLenum = 0x8826 #   
    DRAW_BUFFER2* : GLenum = 0x8827 #   
    DRAW_BUFFER3* : GLenum = 0x8828 #   
    DRAW_BUFFER4* : GLenum = 0x8829 #   
    DRAW_BUFFER5* : GLenum = 0x882A #   
    DRAW_BUFFER6* : GLenum = 0x882B #   
    DRAW_BUFFER7* : GLenum = 0x882C #   
    DRAW_BUFFER8* : GLenum = 0x882D #   
    DRAW_BUFFER9* : GLenum = 0x882E #   
    DRAW_BUFFER10* : GLenum = 0x882F #   
    DRAW_BUFFER11* : GLenum = 0x8830 #   
    DRAW_BUFFER12* : GLenum = 0x8831 #   
    DRAW_BUFFER13* : GLenum = 0x8832 #   
    DRAW_BUFFER14* : GLenum = 0x8833 #   
    DRAW_BUFFER15* : GLenum = 0x8834 #   
    MAX_COLOR_ATTACHMENTS* : GLenum = 0x8CDF #   
    COLOR_ATTACHMENT1* : GLenum = 0x8CE1 #   
    COLOR_ATTACHMENT2* : GLenum = 0x8CE2 #   
    COLOR_ATTACHMENT3* : GLenum = 0x8CE3 #   
    COLOR_ATTACHMENT4* : GLenum = 0x8CE4 #   
    COLOR_ATTACHMENT5* : GLenum = 0x8CE5 #   
    COLOR_ATTACHMENT6* : GLenum = 0x8CE6 #   
    COLOR_ATTACHMENT7* : GLenum = 0x8CE7 #   
    COLOR_ATTACHMENT8* : GLenum = 0x8CE8 #   
    COLOR_ATTACHMENT9* : GLenum = 0x8CE9 #   
    COLOR_ATTACHMENT10* : GLenum = 0x8CEA #   
    COLOR_ATTACHMENT11* : GLenum = 0x8CEB #   
    COLOR_ATTACHMENT12* : GLenum = 0x8CEC #   
    COLOR_ATTACHMENT13* : GLenum = 0x8CED #   
    COLOR_ATTACHMENT14* : GLenum = 0x8CEE #   
    COLOR_ATTACHMENT15* : GLenum = 0x8CEF #   

    #*Samplers

    SAMPLER_3D* : GLenum = 0x8B5F #   
    SAMPLER_2D_SHADOW* : GLenum = 0x8B62 #   
    SAMPLER_2D_ARRAY* : GLenum = 0x8DC1 #   
    SAMPLER_2D_ARRAY_SHADOW* : GLenum = 0x8DC4 #   
    SAMPLER_CUBE_SHADOW* : GLenum = 0x8DC5 #   
    INT_SAMPLER_2D* : GLenum = 0x8DCA #   
    INT_SAMPLER_3D* : GLenum = 0x8DCB #   
    INT_SAMPLER_CUBE* : GLenum = 0x8DCC #   
    INT_SAMPLER_2D_ARRAY* : GLenum = 0x8DCF #   
    UNSIGNED_INT_SAMPLER_2D* : GLenum = 0x8DD2 #   
    UNSIGNED_INT_SAMPLER_3D* : GLenum = 0x8DD3 #   
    UNSIGNED_INT_SAMPLER_CUBE* : GLenum = 0x8DD4 #   
    UNSIGNED_INT_SAMPLER_2D_ARRAY* : GLenum = 0x8DD7 #   
    MAX_SAMPLES* : GLenum = 0x8D57 #   
    SAMPLER_BINDING* : GLenum = 0x8919 #   

    #*Buffers

    PIXEL_PACK_BUFFER* : GLenum = 0x88EB #   
    PIXEL_UNPACK_BUFFER* : GLenum = 0x88EC #   
    PIXEL_PACK_BUFFER_BINDING* : GLenum = 0x88ED #   
    PIXEL_UNPACK_BUFFER_BINDING*  : GLenum = 0x88EF #   
    COPY_READ_BUFFER* : GLenum = 0x8F36 #   
    COPY_WRITE_BUFFER* : GLenum = 0x8F37 #   
    COPY_READ_BUFFER_BINDING* : GLenum = 0x8F36 #   
    COPY_WRITE_BUFFER_BINDING* : GLenum = 0x8F37 #   

    #*Data types

    FLOAT_MAT2x3* : GLenum = 0x8B65 #   
    FLOAT_MAT2x4* : GLenum = 0x8B66 #   
    FLOAT_MAT3x2* : GLenum = 0x8B67 #   
    FLOAT_MAT3x4*  : GLenum = 0x8B68 #   
    FLOAT_MAT4x2* : GLenum = 0x8B69 #   
    FLOAT_MAT4x3* : GLenum = 0x8B6A #   
    UNSIGNED_INT_VEC2* : GLenum = 0x8DC6 #   
    UNSIGNED_INT_VEC3* : GLenum = 0x8DC7 #   
    UNSIGNED_INT_VEC4* : GLenum = 0x8DC8 #   
    UNSIGNED_NORMALIZED* : GLenum = 0x8C17 #   
    SIGNED_NORMALIZED* : GLenum = 0x8F9C #   

    #*Vertex attributes

    VERTEX_ATTRIB_ARRAY_INTEGER*  : GLenum = 0x88FD #   
    VERTEX_ATTRIB_ARRAY_DIVISOR* : GLenum = 0x88FE #   

    #*Transform feedback

    TRANSFORM_FEEDBACK_BUFFER_MODE* : GLenum = 0x8C7F #   
    MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS* : GLenum = 0x8C80 #   
    TRANSFORM_FEEDBACK_VARYINGS* : GLenum = 0x8C83 #   
    TRANSFORM_FEEDBACK_BUFFER_START* : GLenum = 0x8C84 #   
    TRANSFORM_FEEDBACK_BUFFER_SIZE* : GLenum = 0x8C85 #   
    TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN* : GLenum = 0x8C88 #   
    MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS* : GLenum = 0x8C8A #   
    MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS* : GLenum = 0x8C8B #   
    INTERLEAVED_ATTRIBS* : GLenum = 0x8C8C #   
    SEPARATE_ATTRIBS* : GLenum = 0x8C8D #   
    TRANSFORM_FEEDBACK_BUFFER* : GLenum = 0x8C8E #   
    TRANSFORM_FEEDBACK_BUFFER_BINDING* : GLenum = 0x8C8F #   
    TRANSFORM_FEEDBACK* : GLenum = 0x8E22 #   
    TRANSFORM_FEEDBACK_PAUSED* : GLenum = 0x8E23 #   
    TRANSFORM_FEEDBACK_ACTIVE* : GLenum = 0x8E24 #   
    TRANSFORM_FEEDBACK_BINDING* : GLenum = 0x8E25 #   

    #*Framebuffers and renderbuffers

    FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING* : GLenum = 0x8210 #   
    FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE* : GLenum = 0x8211 #   
    FRAMEBUFFER_ATTACHMENT_RED_SIZE* : GLenum = 0x8212 #   
    FRAMEBUFFER_ATTACHMENT_GREEN_SIZE* : GLenum = 0x8213 #   
    FRAMEBUFFER_ATTACHMENT_BLUE_SIZE* : GLenum = 0x8214 #   
    FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE* : GLenum = 0x8215 #   
    FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE* : GLenum = 0x8216 #   
    FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE* : GLenum = 0x8217 #   
    FRAMEBUFFER_DEFAULT* : GLenum = 0x8218 #   
 #   DEPTH_STENCIL_ATTACHMENT* : GLenum = 0x821A #   
 #   DEPTH_STENCIL* : GLenum = 0x84F9 #   
    DEPTH24_STENCIL8* : GLenum = 0x88F0 #   
    DRAW_FRAMEBUFFER_BINDING* : GLenum = 0x8CA6 #   
    READ_FRAMEBUFFER* : GLenum = 0x8CA8 #   
    DRAW_FRAMEBUFFER* : GLenum = 0x8CA9 #   
    READ_FRAMEBUFFER_BINDING* : GLenum = 0x8CAA #   
    RENDERBUFFER_SAMPLES* : GLenum = 0x8CAB #   
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER* : GLenum = 0x8CD4 #   
    FRAMEBUFFER_INCOMPLETE_MULTISAMPLE* : GLenum = 0x8D56 #   

    #*Uniforms

    UNIFORM_BUFFER* : GLenum = 0x8A11 #   
    UNIFORM_BUFFER_BINDING* : GLenum = 0x8A28 #   
    UNIFORM_BUFFER_START* : GLenum = 0x8A29 #   
    UNIFORM_BUFFER_SIZE* : GLenum = 0x8A2A #   
    MAX_VERTEX_UNIFORM_BLOCKS* : GLenum = 0x8A2B #   
    MAX_FRAGMENT_UNIFORM_BLOCKS* : GLenum = 0x8A2D #   
    MAX_COMBINED_UNIFORM_BLOCKS* : GLenum = 0x8A2E #   
    MAX_UNIFORM_BUFFER_BINDINGS* : GLenum = 0x8A2F #   
    MAX_UNIFORM_BLOCK_SIZE* : GLenum = 0x8A30 #   
    MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS* : GLenum = 0x8A31 #   
    MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS* : GLenum = 0x8A33 #   
    UNIFORM_BUFFER_OFFSET_ALIGNMENT* : GLenum = 0x8A34 #   
    ACTIVE_UNIFORM_BLOCKS* : GLenum = 0x8A36 #   
    UNIFORM_TYPE*  : GLenum = 0x8A37 #   
    UNIFORM_SIZE* : GLenum = 0x8A38 #   
    UNIFORM_BLOCK_INDEX* : GLenum = 0x8A3A #   
    UNIFORM_OFFSET* : GLenum = 0x8A3B #   
    UNIFORM_ARRAY_STRIDE* : GLenum = 0x8A3C #   
    UNIFORM_MATRIX_STRIDE* : GLenum = 0x8A3D #   
    UNIFORM_IS_ROW_MAJOR* : GLenum = 0x8A3E #   
    UNIFORM_BLOCK_BINDING* : GLenum = 0x8A3F #   
    UNIFORM_BLOCK_DATA_SIZE* : GLenum = 0x8A40 #   
    UNIFORM_BLOCK_ACTIVE_UNIFORMS* : GLenum = 0x8A42 #   
    UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES* : GLenum = 0x8A43 #   
    UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER* : GLenum = 0x8A44 #   
    UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER* : GLenum = 0x8A46 #   

    #*Sync objects

    OBJECT_TYPE* : GLenum = 0x9112 #   
    SYNC_CONDITION* : GLenum = 0x9113 #   
    SYNC_STATUS* : GLenum = 0x9114 #   
    SYNC_FLAGS* : GLenum = 0x9115 #   
    SYNC_FENCE* : GLenum = 0x9116 #   
    SYNC_GPU_COMMANDS_COMPLETE* : GLenum = 0x9117 #   
    UNSIGNALED* : GLenum = 0x9118 #   
    SIGNALED* : GLenum = 0x9119 #   
    ALREADY_SIGNALED* : GLenum = 0x911A #   
    TIMEOUT_EXPIRED* : GLenum = 0x911B #   
    CONDITION_SATISFIED* : GLenum = 0x911C #   
    WAIT_FAILED* : GLenum = 0x911D #   
    SYNC_FLUSH_COMMANDS_BIT* : GLenum = 0x00000001 #   

    #*Miscellaneous constants

    COLOR* : GLenum = 0x1800 #   
    DEPTH* : GLenum = 0x1801 #   
    STENCIL* : GLenum = 0x1802 #   
    MIN* : GLenum = 0x8007 #   
    MAX* : GLenum = 0x8008 #   
    DEPTH_COMPONENT24* : GLenum = 0x81A6 #   
    STREAM_READ* : GLenum = 0x88E1 #   
    STREAM_COPY* : GLenum = 0x88E2 #   
    STATIC_READ* : GLenum = 0x88E5 #   
    STATIC_COPY* : GLenum = 0x88E6 #   
    DYNAMIC_READ* : GLenum = 0x88E9 #   
    DYNAMIC_COPY* : GLenum = 0x88EA #   
    DEPTH_COMPONENT32F* : GLenum = 0x8CAC #   
    DEPTH32F_STENCIL8* : GLenum = 0x8CAD #   
    INVALID_INDEX* : GLintptr = 0xFFFFFFFF #   
    #TIMEOUT_IGNORED* -1   
    MAX_CLIENT_WAIT_TIMEOUT_WEBGL* : GLenum = 0x9247 #  
