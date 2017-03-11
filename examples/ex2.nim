import ../src/webgl, dom

var gl: WebGLRenderingContext;
var viewportWidth:int
var viewportHeight:int

#########
proc identity4 (a:auto):auto =
    {. emit: "`a`[0]=1;`a`[1]=0;`a`[2]=0;`a`[3]=0;`a`[4]=0;`a`[5]=1;`a`[6]=0;`a`[7]=0;`a`[8]=0;`a`[9]=0;`a`[10]=1;`a`[11]=0;`a`[12]=0;`a`[13]=0;`a`[14]=0;`a`[15]=1;`result`=`a`" .}

proc translate4 (a,b,c:auto):auto =
    {. emit: "var d=`b`[0],e=`b`[1];`b`=`b`[2];if(!`c`||`a`==`c`){`a`[12]=`a`[0]*d+`a`[4]*e+`a`[8]*`b`+`a`[12];`a`[13]=`a`[1]*d+`a`[5]*e+`a`[9]*`b`+`a`[13];`a`[14]=`a`[2]*d+`a`[6]*e+`a`[10]*`b`+`a`[14];`a`[15]=`a`[3]*d+`a`[7]*e+`a`[11]*`b`+`a`[15];return `a`}var g=`a`[0],f=`a`[1],h=`a`[2],i=`a`[3],j=`a`[4],k=`a`[5],l=`a`[6],o=`a`[7],m=`a`[8],n=`a`[9],p=`a`[10],r=`a`[11];`c`[0]=g;`c`[1]=f;`c`[2]=h;`c`[3]=i;`c`[4]=j;`c`[5]=k;`c`[6]=l;`c`[7]=o;`c`[8]=m;`c`[9]=n;`c`[10]=p;`c`[11]=r;`c`[12]=g*d+j*e+m*`b`+`a`[12];`c`[13]=f*d+k*e+n*`b`+`a`[13];`c`[14]=h*d+l*e+p*`b`+`a`[14];`c`[15]=i*d+o*e+r*`b`+`a`[15];`result` = `c`;" .}
proc perspective4 (a,b,c,d,e:auto):auto =
    {. emit : "function frustum(a,b,c,d,e,g,f){var h=b-a,i=d-c,j=g-e;f[0]=e*2/h;f[1]=0;f[2]=0;f[3]=0;f[4]=0;f[5]=e*2/i;f[6]=0;f[7]=0;f[8]=(b+a)/h;f[9]=(d+c)/i;f[10]=-(g+e)/j;f[11]=-1;f[12]=0;f[13]=0;f[14]=-(g*e*2)/j;f[15]=0;return f;};`a`=`c`*Math.tan(`a`*Math.PI/360);`b`=`a`*`b`;`result` = frustum(-`b`,`b`,-`a`,`a`,`c`,`d`,`e`);" .}

#######

proc initGL(canvas:Canvas) = 
    
    gl = canvas.getContext("webgl")
    if gl.isNil: gl = canvas.getContext("experimental-webgl")
    viewportWidth = canvas.width;
    viewportHeight = canvas.height;
    
    #if (gl==nil): 
        #alert("Could not initialise WebGL, sorry :-(");
    
proc getShader(gl:WebGLRenderingContext, id:cstring,stype:cstring):WebGLShader =
    var shaderScript = document.getElementById(id);
    if (shaderScript==nil) :
        return
    
    var str : cstring = shaderScript.firstChild.nodeValue;
    #[while (k!=nil) :
        if (k.nodeType == TextNode) :
            str &= k.nodeValue.cstring;
            {. emit : "console.log(`stype`+`k`);" .}
        k = k.nextSibling;
    {. emit : "console.log(`stype`+`str`);" .}]#

    if (stype == "x-shader/x-fragment") :
        result = gl.createShader(FRAGMENT_SHADER)
    elif (stype == "x-shader/x-vertex"): 
        result = gl.createShader(VERTEX_SHADER);
    else :
        return;

    gl.shaderSource(result, str);
    gl.compileShader(result);

    {. emit: "if (!`gl`.getShaderParameter(`result`, `gl`.COMPILE_STATUS)){alert(`stype`+' '+`gl`.getShaderInfoLog(`result`));return null;};" .}

var shaderProgram: WebGLProgram
var vertexPositionAttribute:GLuint
var pMatrixUniform:WebGLUniformLocation
var mvMatrixUniform:WebGLUniformLocation

proc initShaders() =
    var fragmentShader = getShader(gl, "shader-fs","x-shader/x-fragment");
    var vertexShader = getShader(gl, "shader-vs","x-shader/x-vertex");

    shaderProgram = gl.createProgram();
    gl.attachShader(shaderProgram, vertexShader);
    gl.attachShader(shaderProgram, fragmentShader);
    gl.linkProgram(shaderProgram);

    gl.useProgram(shaderProgram);

    vertexPositionAttribute = gl.getAttribLocation(shaderProgram, "aVertexPosition");
    gl.enableVertexAttribArray(vertexPositionAttribute);
    pMatrixUniform = gl.getUniformLocation(shaderProgram, "uPMatrix");
    mvMatrixUniform = gl.getUniformLocation(shaderProgram, "uMVMatrix");



var mvMatrix = newSeq[float](16) # 4x4, so 16 elements
var pMatrix = newSeq[float](16)

proc setMatrixUniforms() =
    gl.uniformMatrix4fv(pMatrixUniform, false, pMatrix);
    gl.uniformMatrix4fv(mvMatrixUniform, false, mvMatrix);

var triangleVertexPositionBuffer:WebGLBuffer
var squareVertexPositionBuffer:WebGLBuffer
var tin : tuple[itemSize,numItems:int]
var vin : tuple[itemSize,numItems:int]

proc initBuffers() =
    triangleVertexPositionBuffer = gl.createBuffer();
    gl.bindBuffer(ARRAY_BUFFER, triangleVertexPositionBuffer);
    var vertices = @[
            0.0,  1.0,  0.0,
        -1.0, -1.0,  0.0,
            1.0, -1.0,  0.0
    ];
    gl.bufferData(ARRAY_BUFFER, vertices, STATIC_DRAW);
    tin.itemSize = 3;
    tin.numItems = 3;

    squareVertexPositionBuffer = gl.createBuffer();
    gl.bindBuffer(ARRAY_BUFFER, squareVertexPositionBuffer);
    var vertices2 = @[
            1.0,  1.0,  0.0,
        -1.0,  1.0,  0.0,
            1.0, -1.0,  0.0,
        -1.0, -1.0,  0.0
    ];
    gl.bufferData(ARRAY_BUFFER, vertices2, STATIC_DRAW);
    vin.itemSize = 3;
    vin.numItems = 4;



proc drawScene() =
    gl.viewport(0, 0, viewportWidth, viewportHeight);
    gl.clear(COLOR_BUFFER_BIT or DEPTH_BUFFER_BIT);

    perspective4(45, viewportWidth / viewportHeight, 0.1, 100.0, pMatrix);
        
    identity4(mvMatrix);

    traslate4(mvMatrix, @[-1.5, 0.0, -7.0], mvMatrix);

    gl.bindBuffer(ARRAY_BUFFER, triangleVertexPositionBuffer);
    gl.vertexAttribPointer(vertexPositionAttribute, tin.itemSize, FLOAT, false, 0, 0);
    setMatrixUniforms();
    gl.drawArrays(TRIANGLES, 0, tin.numItems);


    traslate4(mvMatrix, @[3.0, 0.0, 0.0], mvMatrix);
    gl.bindBuffer(ARRAY_BUFFER, squareVertexPositionBuffer);
    gl.vertexAttribPointer(vertexPositionAttribute, vin.itemSize, FLOAT, false, 0, 0);
    setMatrixUniforms();
    gl.drawArrays(TRIANGLE_STRIP, 0, vin.numItems);




dom.window.onload = proc (e: dom.Event) =
    var canvas = dom.document.getElementById("glcanvas").Canvas;
    initGL(canvas);
    initShaders();
    initBuffers();

    gl.clearColor(0.0, 0.0, 0.0, 1.0);
    gl.enable(DEPTH_TEST);

    drawScene();

