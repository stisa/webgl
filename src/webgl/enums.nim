type BufferBit* = enum
  bbDepth = 0x00000100 # Passed to clear to clear the current depth buffer. 
  bbStencil = 0x00000400 # Passed to clear to clear the current stencil buffer. 
  bbColor = 0x00004000 # Passed to clear to clear the current color buffer. 

type PrimitiveMode* = enum
  ## Constants passed to WebGLRenderingContext.drawElements() or 
  ## WebGLRenderingContext.drawArrays() to specify what kind of primitive to render.
  pmPoints = 0x0000 # Passed to drawElements or drawArrays to draw single points. 
  pmLines = 0x0001 # Passed to drawElements or drawArrays to draw lines. Each vertex connects to the one after it. 
  pmLineLoop = 0x0002 # Passed to drawElements or drawArrays to draw lines. Each set of two vertices is treated as a separate line segment. 
  pmLineStrip = 0x0003 # Passed to drawElements or drawArrays to draw a connected group of line segments from the first vertex to the last. 
  pmTriangles = 0x0004 # Passed to drawElements or drawArrays to draw triangles. Each set of three vertices creates a separate triangle. 
  pmTriangleStrip = 0x0005 # Passed to drawElements or drawArrays to draw a connected group of triangles. 
  pmTriangleFan = 0x0006 # Passed to drawElements or drawArrays to draw a connected group of triangles. Each vertex connects to the previous and the first vertex in the fan. 

type BlendingMode* = enum
  #Constants passed to WebGLRenderingContext.blendFunc() or WebGLRenderingContext.blendFuncSeparate() to specify the blending mode (for both, RBG and alpha, or separately).
  bmZERO = 0 # Passed to blendFunc or blendFuncSeparate to turn off a component. 
  bmONE = 1 # Passed to blendFunc or blendFuncSeparate to turn on a component. 
  bmSRC_COLOR = 0x0300 # Passed to blendFunc or blendFuncSeparate to multiply a component by the source elements color. 
  bmONE_MINUS_SRC_COLOR = 0x0301 # Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the source elements color. 
  bmSRC_ALPHA = 0x0302 # Passed to blendFunc or blendFuncSeparate to multiply a component by the source's alpha. 
  bmONE_MINUS_SRC_ALPHA = 0x0303 # Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the source's alpha. 
  bmDST_ALPHA = 0x0304 # Passed to blendFunc or blendFuncSeparate to multiply a component by the destination's alpha. 
  bmONE_MINUS_DST_ALPHA = 0x0305 # Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the destination's alpha. 
  bmDST_COLOR = 0x0306 # Passed to blendFunc or blendFuncSeparate to multiply a component by the destination's color. 
  bmONE_MINUS_DST_COLOR = 0x0307 # Passed to blendFunc or blendFuncSeparate to multiply a component by one minus the destination's color. 
  bmSRC_ALPHA_SATURATE = 0x0308 # Passed to blendFunc or blendFuncSeparate to multiply a component by the minimum of source's alpha or one minus the destination's alpha. 
  bmCONSTANT_COLOR = 0x8001 # Passed to blendFunc or blendFuncSeparate to specify a constant color blend function. 
  bmONE_MINUS_CONSTANT_COLOR = 0x8002 # Passed to blendFunc or blendFuncSeparate to specify one minus a constant color blend function. 
  bmCONSTANT_ALPHA = 0x8003 # Passed to blendFunc or blendFuncSeparate to specify a constant alpha blend function. 
  bmONE_MINUS_CONSTANT_ALPHA = 0x8004 # Passed to blendFunc or blendFuncSeparate to specify one minus a constant alpha blend function. 

type BlendingEq* = enum
  #Constants passed to WebGLRenderingContext.blendEquation() or WebGLRenderingContext.blendEquationSeparate() to control how the blending is calculated (for both, RBG and alpha, or separately).
  beFUNC_ADD = 0x8006 # Passed to blendEquation or blendEquationSeparate to set an addition blend function. 
  beFUNC_SUBSTRACT = 0x800A # Passed to blendEquation or blendEquationSeparate to specify a subtraction blend function (source - destination). 
  beFUNC_REVERSE_SUBTRACT = 0x800B # Passed to blendEquation or blendEquationSeparate to specify a reverse subtraction blend function (destination - source). 

type BufferEnum* = enum
  #Constants passed to WebGLRenderingContext.bufferData(), WebGLRenderingContext.bufferSubData(), WebGLRenderingContext.bindBuffer(), or WebGLRenderingContext.getBufferParameter().
  beBUFFER_SIZE = 0x8764 # Passed to getBufferParameter to get a buffer's size. 
  beBUFFER_USAGE = 0x8765 # Passed to getBufferParameter to get the hint for the buffer passed in when it was created. 
  beARRAY_BUFFER = 0x8892 # Passed to bindBuffer or bufferData to specify the type of buffer being used. 
  beELEMENT_ARRAY_BUFFER = 0x8893 # Passed to bindBuffer or bufferData to specify the type of buffer being used. 
  beSTREAM_DRAW = 0x88E0 # Passed to bufferData as a hint about whether the contents of the buffer are likely to not be used often. 
  beSTATIC_DRAW = 0x88E4 # Passed to bufferData as a hint about whether the contents of the buffer are likely to be used often and not change often. 
  beDYNAMIC_DRAW = 0x88E8 # Passed to bufferData as a hint about whether the contents of the buffer are likely to be used often and change often. 
  
type DataType* = enum
  dtBYTE = 0x1400 #   
  dtUNSIGNED_BYTE = 0x1401 #   
  dtSHORT = 0x1402 #   
  dtUNSIGNED_SHORT = 0x1403 #   
  dtINT = 0x1404 #   
  dtUNSIGNED_INT = 0x1405 #   
  dtFLOAT = 0x1406 #   

type ShaderEnum* = enum
  #Constants passed to WebGLRenderingContext.createShader() or WebGLRenderingContext.getShaderParameter()
  seMAX_VERTEX_ATTRIBS = 0x8869 #   
  seMAX_TEXTURE_IMAGE_UNITS = 0x8872 # Implementation dependent number of maximum texture units. At least 8. 
  seFRAGMENT_SHADER = 0x8B30 # Passed to createShader to define a fragment shader. 
  seVERTEX_SHADER = 0x8B31 # Passed to createShader to define a vertex shader 
  seMAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C #   
  seMAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D #   
  seSHADER_TYPE = 0x8B4F #   
  seDELETE_STATUS = 0x8B80 # Passed to getShaderParamter to determine if a shader was deleted via deleteShader. Returns true if it was, false otherwise. 
  seCOMPILE_STATUS = 0x8B81 # Passed to getShaderParamter to get the status of the compilation. Returns false if the shader was not compiled. You can then query getShaderInfoLog to find the exact error 
  seLINK_STATUS = 0x8B82 # Passed to getProgramParameter after calling linkProgram to determine if a program was linked correctly. Returns false if there were errors. Use getProgramInfoLog to find the exact error. 
  seVALIDATE_STATUS = 0x8B83 # Passed to getProgramParameter after calling validateProgram to determine if it is valid. Returns false if errors were found. 
  seATTACHED_SHADERS = 0x8B85 # Passed to getProgramParameter after calling attachShader to determine if the shader was attached correctly. Returns false if errors occurred. 
  seACTIVE_UNIFORMS = 0x8B86 # Passed to getProgramParamter to get the number of uniforms active in a program. 
  seACTIVE_ATTRIBUTES = 0x8B89 # Passed to getProgramParameter to get the number of attributes active in a program. 
  seSHADING_LANGUAGE_VERSION = 0x8B8C #   
  seCURRENT_PROGRAM = 0x8B8D #   
  seMAX_VERTEX_UNIFORM_VECTORS = 0x8DFB #   
  seMAX_VARYING_VECTORS = 0x8DFC #   
  seMAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD #   
