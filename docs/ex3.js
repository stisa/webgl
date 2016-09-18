/* Generated by the Nim Compiler v0.14.3 */
/*   (c) 2016 Andreas Rumpf */

var framePtr = null;
var excHandler = 0;
var lastJSError = null;
if (typeof Int8Array === 'undefined') Int8Array = Array;
if (typeof Int16Array === 'undefined') Int16Array = Array;
if (typeof Int32Array === 'undefined') Int32Array = Array;
if (typeof Uint8Array === 'undefined') Uint8Array = Array;
if (typeof Uint16Array === 'undefined') Uint16Array = Array;
if (typeof Uint32Array === 'undefined') Uint32Array = Array;
if (typeof Float32Array === 'undefined') Float32Array = Array;
if (typeof Float64Array === 'undefined') Float64Array = Array;
var NTI128 = {size: 0,kind: 36,base: null,node: null,finalizer: null};
var NTI33036 = {size: 0,kind: 16,base: null,node: null,finalizer: null};
var NTI3452 = {size: 0, kind: 17, base: null, node: null, finalizer: null};
var NTI33045 = {size: 0,kind: 24,base: null,node: null,finalizer: null};
var NTI33058 = {size: 0,kind: 24,base: null,node: null,finalizer: null};
var NTI33031 = {size: 0,kind: 16,base: null,node: null,finalizer: null};
var NTI124 = {size: 0,kind: 36,base: null,node: null,finalizer: null};
var NTI33026 = {size: 0,kind: 16,base: null,node: null,finalizer: null};
var NTI33020 = {size: 0,kind: 16,base: null,node: null,finalizer: null};
var NTI3438 = {size: 0, kind: 17, base: null, node: null, finalizer: null};
var NTI104 = {size: 0,kind: 31,base: null,node: null,finalizer: null};
var NTI12409 = {size: 0, kind: 18, base: null, node: null, finalizer: null};
var NTI3408 = {size: 0, kind: 17, base: null, node: null, finalizer: null};
var NTI138 = {size: 0,kind: 28,base: null,node: null,finalizer: null};
var NTI140 = {size: 0,kind: 29,base: null,node: null,finalizer: null};
var NTI3485 = {size: 0,kind: 22,base: null,node: null,finalizer: null};
var NTI3424 = {size: 0, kind: 17, base: null, node: null, finalizer: null};
var NTI3436 = {size: 0, kind: 17, base: null, node: null, finalizer: null};
var NTI3440 = {size: 0, kind: 17, base: null, node: null, finalizer: null};
var NNI3440 = {kind: 2, len: 0, offset: 0, typ: null, name: null, sons: []};
NTI3440.node = NNI3440;
var NNI3436 = {kind: 2, len: 0, offset: 0, typ: null, name: null, sons: []};
NTI3436.node = NNI3436;
NTI3485.base = NTI3424;
var NNI3424 = {kind: 2, len: 4, offset: 0, typ: null, name: null, sons: [{kind: 1, offset: "parent", len: 0, typ: NTI3485, name: "parent", sons: null}, 
{kind: 1, offset: "name", len: 0, typ: NTI140, name: "name", sons: null}, 
{kind: 1, offset: "message", len: 0, typ: NTI138, name: "msg", sons: null}, 
{kind: 1, offset: "trace", len: 0, typ: NTI138, name: "trace", sons: null}]};
NTI3424.node = NNI3424;
var NNI3408 = {kind: 2, len: 0, offset: 0, typ: null, name: null, sons: []};
NTI3408.node = NNI3408;
NTI3424.base = NTI3408;
NTI3436.base = NTI3424;
NTI3440.base = NTI3436;
var NNI12409 = {kind: 2, len: 2, offset: 0, typ: null, name: null, sons: [{kind: 1, offset: "Field0", len: 0, typ: NTI140, name: "Field0", sons: null}, 
{kind: 1, offset: "Field1", len: 0, typ: NTI104, name: "Field1", sons: null}]};
NTI12409.node = NNI12409;
var NNI3438 = {kind: 2, len: 0, offset: 0, typ: null, name: null, sons: []};
NTI3438.node = NNI3438;
NTI3438.base = NTI3436;
NTI33020.base = NTI104;
NTI33026.base = NTI124;
NTI33031.base = NTI124;
NTI33058.base = NTI124;
NTI33045.base = NTI124;
var NNI3452 = {kind: 2, len: 0, offset: 0, typ: null, name: null, sons: []};
NTI3452.node = NNI3452;
NTI3452.base = NTI3424;
NTI33036.base = NTI128;
function makeNimstrLit(c_13403) {

    var ln = c_13403.length;
    var result = new Array(ln + 1);
    var i = 0;
    for (; i < ln; ++i) {
      result[i] = c_13403.charCodeAt(i);
    }
    result[i] = 0; // terminating zero
    return result;
    }
function SetConstr() {

      var result = {};
      for (var i = 0; i < arguments.length; ++i) {
        var x = arguments[i];
        if (typeof(x) == "object") {
          for (var j = x[0]; j <= x[1]; ++j) {
            result[j] = true;
          }
        } else {
          result[x] = true;
        }
      }
      return result;
    }
function nimCopy(dest_18515, src_18516, ti_18517) {

var result_18829 = null;
switch (ti_18517.kind) {
case 21: case 22: case 23: case 5: if (!(isfatpointer_18498(ti_18517))) {
result_18829 = src_18516;
}
else {
result_18829 = [src_18516[0], src_18516[1]];}


break;
case 19:       if (dest_18515 === null || dest_18515 === undefined) {
        dest_18515 = {};
      }
      else {
        for (var key in dest_18515) { delete dest_18515[key]; }
      }
      for (var key in src_18516) { dest_18515[key] = src_18516[key]; }
      result_18829 = dest_18515;
    
break;
case 18: case 17: if (!((ti_18517.base == null))) {
result_18829 = nimCopy(dest_18515, src_18516, ti_18517.base);
}
else {
if ((ti_18517.kind == 17)) {
result_18829 = (dest_18515 === null || dest_18515 === undefined) ? {m_type: ti_18517} : dest_18515;}
else {
result_18829 = (dest_18515 === null || dest_18515 === undefined) ? {} : dest_18515;}
}
nimCopyAux(result_18829, src_18516, ti_18517.node);

break;
case 24: case 4: case 27: case 16:       if (src_18516 === null) {
        result_18829 = null;
      }
      else {
        if (dest_18515 === null || dest_18515 === undefined) {
          dest_18515 = new Array(src_18516.length);
        }
        else {
          dest_18515.length = src_18516.length;
        }
        result_18829 = dest_18515;
        for (var i = 0; i < src_18516.length; ++i) {
          result_18829[i] = nimCopy(result_18829[i], src_18516[i], ti_18517.base);
        }
      }
    
break;
case 28:       if (src_18516 !== null) {
        result_18829 = src_18516.slice(0);
      }
    
break;
default: 
result_18829 = src_18516;
break;
}
return result_18829;
}
function eqStrings(a_16003, b_16004) {

    if (a_16003 == b_16004) return true;
    if ((!a_16003) || (!b_16004)) return false;
    var alen = a_16003.length;
    if (alen != b_16004.length) return false;
    for (var i = 0; i < alen; ++i)
      if (a_16003[i] != b_16004[i]) return false;
    return true;
  }
function arrayConstr(len_19003, value_19004, typ_19005) {

      var result = new Array(len_19003);
      for (var i = 0; i < len_19003; ++i) result[i] = nimCopy(null, value_19004, typ_19005);
      return result;
    }
function cstrToNimstr(c_13603) {

  var ln = c_13603.length;
  var result = new Array(ln);
  var r = 0;
  for (var i = 0; i < ln; ++i) {
    var ch = c_13603.charCodeAt(i);

    if (ch < 128) {
      result[r] = ch;
    }
    else if((ch > 127) && (ch < 2048)) {
      result[r] = (ch >> 6) | 192;
      ++r;
      result[r] = (ch & 63) | 128;
    }
    else {
      result[r] = (ch >> 12) | 224;
      ++r;
      result[r] = ((ch >> 6) & 63) | 128;
      ++r;
      result[r] = (ch & 63) | 128;
    }
    ++r;
  }
  result[r] = 0; // terminating zero
  return result;
  }
function toJSStr(s_13803) {

    var len = s_13803.length-1;
    var asciiPart = new Array(len);
    var fcc = String.fromCharCode;
    var nonAsciiPart = null;
    var nonAsciiOffset = 0;
    for (var i = 0; i < len; ++i) {
      if (nonAsciiPart !== null) {
        var offset = (i - nonAsciiOffset) * 2;
        var code = s_13803[i].toString(16);
        if (code.length == 1) {
          code = "0"+code;
        }
        nonAsciiPart[offset] = "%";
        nonAsciiPart[offset + 1] = code;
      }
      else if (s_13803[i] < 128)
        asciiPart[i] = fcc(s_13803[i]);
      else {
        asciiPart.length = i;
        nonAsciiOffset = i;
        nonAsciiPart = new Array((len - i) * 2);
        --i;
      }
    }
    asciiPart = asciiPart.join("");
    return (nonAsciiPart === null) ?
        asciiPart : asciiPart + decodeURIComponent(nonAsciiPart.join(""));
  }
function raiseException(e_12806, ename_12807) {

e_12806.name = ename_12807;
if ((excHandler == 0)) {
unhandledException(e_12806);
}

e_12806.trace = nimCopy(null, rawwritestacktrace_12628(), NTI138);
throw e_12806;}
var startx_33025 = nimCopy(null, [-7.5000000000000000e-001, 7.5000000000000000e-001, -7.5000000000000000e-001, 7.5000000000000000e-001], NTI33026);
var starty_33030 = nimCopy(null, [-7.5000000000000000e-001, -7.5000000000000000e-001, 7.5000000000000000e-001, 7.5000000000000000e-001], NTI33031);
function divInt(a_16803, b_16804) {

      if (b_16804 == 0) raiseDivByZero();
      if (b_16804 == -1 && a_16803 == 2147483647) raiseOverflow();
      return Math.floor(a_16803 / b_16804);
    }
function addInt(a_16256, b_16257) {

      var result = a_16256 + b_16257;
      if (result > 2147483647 || result < -2147483648) raiseOverflow();
      return result;
    }
function mulInt(a_16603, b_16604) {

      var result = a_16603 * b_16604;
      if (result > 2147483647 || result < -2147483648) raiseOverflow();
      return result;
    }
function chckIndx(i_19009, a_19010, b_19011) {

var Tmp1;
var result_19012 = 0;
BeforeRet: do {
if (!(a_19010 <= i_19009)) Tmp1 = false; else {Tmp1 = (i_19009 <= b_19011); }if (Tmp1) {
result_19012 = i_19009;
break BeforeRet;
}
else {
raiseIndexError();
}

} while (false); 
return result_19012;
}
var freqs_33035 = nimCopy(null, [1.0000000000000000e+000, 1.1892071150027210e+000, 1.2599210498948732e+000, 1.4142135623730951e+000], NTI33036);
var nimvm_5554 = false;
var nim_program_result = 0;
var globalraisehook_10414 = [null];
var localraisehook_10419 = [null];
var outofmemhook_10422 = [null];
function isfatpointer_18498(ti_18500) {

var result_18501 = false;
BeforeRet: do {
result_18501 = !((SetConstr(17, 16, 4, 18, 27, 19, 23, 22, 21)[ti_18500.base.kind] != undefined));
break BeforeRet;
} while (false); 
return result_18501;
}
function nimCopyAux(dest_18520, src_18521, n_18523) {

switch (n_18523.kind) {
case 0: 
break;
case 1:       dest_18520[n_18523.offset] = nimCopy(dest_18520[n_18523.offset], src_18521[n_18523.offset], n_18523.typ);
    
break;
case 2: L1: do {
var i_18815 = 0;
var HEX3Atmp_18817 = 0;
HEX3Atmp_18817 = (n_18523.len - 1);
var res_18820 = 0;
L2: do {
L3: while (true) {
if (!(res_18820 <= HEX3Atmp_18817)) break L3;
i_18815 = res_18820;
nimCopyAux(dest_18520, src_18521, n_18523.sons[i_18815]);
res_18820 += 1;
}
} while(false);
} while(false);

break;
case 3:       dest_18520[n_18523.offset] = nimCopy(dest_18520[n_18523.offset], src_18521[n_18523.offset], n_18523.typ);
      for (var i = 0; i < n_18523.sons.length; ++i) {
        nimCopyAux(dest_18520, src_18521, n_18523.sons[i][1]);
      }
    
break;
}
}
function add_10438(x_10441, x_10441_Idx, y_10442) {

        var len = x_10441[0].length-1;
        for (var i = 0; i < y_10442.length; ++i) {
          x_10441[0][len] = y_10442.charCodeAt(i);
          ++len;
        }
        x_10441[0][len] = 0
      }
function auxwritestacktrace_12404(f_12406) {

var Tmp3;
var result_12407 = [null];
var it_12415 = f_12406;
var i_12416 = 0;
var total_12417 = 0;
var tempframes_12421 = arrayConstr(64, {Field0: null, Field1: 0}, NTI12409);
L1: do {
L2: while (true) {
if (!!((it_12415 == null))) Tmp3 = false; else {Tmp3 = (i_12416 <= 63); }if (!Tmp3) break L2;
tempframes_12421[i_12416].Field0 = it_12415.procname;
tempframes_12421[i_12416].Field1 = it_12415.line;
i_12416 += 1;
total_12417 += 1;
it_12415 = it_12415.prev;
}
} while(false);
L4: do {
L5: while (true) {
if (!!((it_12415 == null))) break L5;
total_12417 += 1;
it_12415 = it_12415.prev;
}
} while(false);
result_12407[0] = nimCopy(null, makeNimstrLit(""), NTI138);
if (!((total_12417 == i_12416))) {
if (result_12407[0] != null) { result_12407[0] = (result_12407[0].slice(0, -1)).concat(makeNimstrLit("(")); } else { result_12407[0] = makeNimstrLit("(");};
if (result_12407[0] != null) { result_12407[0] = (result_12407[0].slice(0, -1)).concat(cstrToNimstr(((total_12417 - i_12416))+"")); } else { result_12407[0] = cstrToNimstr(((total_12417 - i_12416))+"");};
if (result_12407[0] != null) { result_12407[0] = (result_12407[0].slice(0, -1)).concat(makeNimstrLit(" calls omitted) ...\x0A")); } else { result_12407[0] = makeNimstrLit(" calls omitted) ...\x0A");};
}

L6: do {
var j_12615 = 0;
var HEX3Atmp_12621 = 0;
HEX3Atmp_12621 = (i_12416 - 1);
var res_12624 = HEX3Atmp_12621;
L7: do {
L8: while (true) {
if (!(0 <= res_12624)) break L8;
j_12615 = res_12624;
add_10438(result_12407, 0, tempframes_12421[j_12615].Field0);
if ((0 < tempframes_12421[j_12615].Field1)) {
if (result_12407[0] != null) { result_12407[0] = (result_12407[0].slice(0, -1)).concat(makeNimstrLit(", line: ")); } else { result_12407[0] = makeNimstrLit(", line: ");};
if (result_12407[0] != null) { result_12407[0] = (result_12407[0].slice(0, -1)).concat(cstrToNimstr((tempframes_12421[j_12615].Field1)+"")); } else { result_12407[0] = cstrToNimstr((tempframes_12421[j_12615].Field1)+"");};
}

if (result_12407[0] != null) { result_12407[0] = (result_12407[0].slice(0, -1)).concat(makeNimstrLit("\x0A")); } else { result_12407[0] = makeNimstrLit("\x0A");};
res_12624 -= 1;
}
} while(false);
} while(false);
return result_12407[0];
}
function rawwritestacktrace_12628() {

var result_12630 = null;
if (!((framePtr == null))) {
result_12630 = nimCopy(null, (makeNimstrLit("Traceback (most recent call last)\x0A").slice(0,-1)).concat(auxwritestacktrace_12404(framePtr)), NTI138);
}
else {
result_12630 = nimCopy(null, makeNimstrLit("No stack traceback available\x0A"), NTI138);
}

return result_12630;
}
function unhandledException(e_12654) {

var Tmp1;
var buf_12655 = /**/[makeNimstrLit("")];
if (!!(eqStrings(e_12654.message, null))) Tmp1 = false; else {Tmp1 = !((e_12654.message[0] == 0)); }if (Tmp1) {
if (buf_12655[0] != null) { buf_12655[0] = (buf_12655[0].slice(0, -1)).concat(makeNimstrLit("Error: unhandled exception: ")); } else { buf_12655[0] = makeNimstrLit("Error: unhandled exception: ");};
if (buf_12655[0] != null) { buf_12655[0] = (buf_12655[0].slice(0, -1)).concat(e_12654.message); } else { buf_12655[0] = e_12654.message;};
}
else {
if (buf_12655[0] != null) { buf_12655[0] = (buf_12655[0].slice(0, -1)).concat(makeNimstrLit("Error: unhandled exception")); } else { buf_12655[0] = makeNimstrLit("Error: unhandled exception");};
}

if (buf_12655[0] != null) { buf_12655[0] = (buf_12655[0].slice(0, -1)).concat(makeNimstrLit(" [")); } else { buf_12655[0] = makeNimstrLit(" [");};
add_10438(buf_12655, 0, e_12654.name);
if (buf_12655[0] != null) { buf_12655[0] = (buf_12655[0].slice(0, -1)).concat(makeNimstrLit("]\x0A")); } else { buf_12655[0] = makeNimstrLit("]\x0A");};
if (buf_12655[0] != null) { buf_12655[0] = (buf_12655[0].slice(0, -1)).concat(rawwritestacktrace_12628()); } else { buf_12655[0] = rawwritestacktrace_12628();};
var cbuf_12801 = toJSStr(buf_12655[0]);
framePtr = null;
  if (typeof(Error) !== "undefined") {
    throw new Error(cbuf_12801);
  }
  else {
    throw cbuf_12801;
  }
  }
function raiseOverflow() {

var e_13236 = null;
e_13236 = {m_type: NTI3440, parent: null, name: null, message: null, trace: null};
e_13236.message = nimCopy(null, makeNimstrLit("over- or underflow"), NTI138);
raiseException(e_13236, "OverflowError");
}
function raiseDivByZero() {

var e_13252 = null;
e_13252 = {m_type: NTI3438, parent: null, name: null, message: null, trace: null};
e_13252.message = nimCopy(null, makeNimstrLit("division by zero"), NTI138);
raiseException(e_13252, "DivByZeroError");
}
var x_33022 = nimCopy(null, [1, 2, 3], NTI33020);
var y_33023 = /**/[nimCopy(null, x_33022, NTI33020)];
var z_33024 = /**/[nimCopy(null, x_33022, NTI33020)];
y_33023[0][0] = 10;
var modelx_33041 = /**/[nimCopy(null, startx_33025, NTI33026)];
var modely_33042 = /**/[nimCopy(null, starty_33030, NTI33031)];
var vertexshadercode_33060 = makeNimstrLit("attribute vec2 position;\x0Avoid main(void) {\x0A    gl_Position = vec4(position, 0.0, 1.0);\x0A}\x0A");
var fragmentshadercode_33061 = makeNimstrLit("void main(void) {\x0A    gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);\x0A}\x0A");
var canv_33062 = /**/[document.getElementById("canvas")];
function getcontextwebgl_28101(c_28103) {

var result_28104 = null;
var F={procname:"webgl.getContextWebGL",prev:framePtr,filename:"c:\\users\\silvio\\documents\\dev\\nim\\webgl\\webgl.nim",line:0};
framePtr = F;
F.line = 309;
result_28104 = c_28103.getContext('webgl') || c_28103.getContext('experimental-webgl');framePtr = F.prev;
return result_28104;
}
function initwebgl_33001(canvas_33004) {

var result_33005 = null;
var F={procname:"ex3.initWebGL",prev:framePtr,filename:"ex3.nim",line:0};
framePtr = F;
F.line = 5;
result_33005 = getcontextwebgl_28101(canvas_33004);
framePtr = F.prev;
return result_33005;
}
var gl_33063 = /**/[initwebgl_33001(canv_33062[0])];
function newseq_33067(len_33071) {

var result_33073 = null;
var F={procname:"newSeq.newSeq",prev:framePtr,filename:"c:\\dev\\nim-devel\\lib\\system.nim",line:0};
framePtr = F;
result_33073 = new Array(len_33071); for (var i=0;i<len_33071;++i) {result_33073[i]=0.0;}framePtr = F.prev;
return result_33073;
}
function makemodel_33043() {

var result_33046 = null;
var F={procname:"ex3.makeModel",prev:framePtr,filename:"ex3.nim",line:0};
framePtr = F;
BeforeRet: do {
F.line = 28;
result_33046 = nimCopy(null, [modelx_33041[0][0], modely_33042[0][0], modelx_33041[0][1], modely_33042[0][1], modelx_33041[0][0], modely_33042[0][0], modelx_33041[0][2], modely_33042[0][2], modelx_33041[0][0], modely_33042[0][0], modelx_33041[0][3], modely_33042[0][3], modelx_33041[0][1], modely_33042[0][1], modelx_33041[0][3], modely_33042[0][3], modelx_33041[0][2], modely_33042[0][2], modelx_33041[0][1], modely_33042[0][1], modelx_33041[0][2], modely_33042[0][2], modelx_33041[0][3], modely_33042[0][3]], NTI33058);
break BeforeRet;
} while (false); 
framePtr = F.prev;
return result_33046;
}
var packedmodel_33110 = /**/[newseq_33067((makemodel_33043() != null ? makemodel_33043().length : 0))];
var vertices_33111 = /**/[gl_33063[0].createBuffer()];
var vertexshader_33112 = /**/[gl_33063[0].createShader(35633)];
gl_33063[0].shaderSource(vertexshader_33112[0], toJSStr(vertexshadercode_33060));
gl_33063[0].compileShader(vertexshader_33112[0]);
function getstatus_28148(gl_28150, what_28151) {

var result_28152 = false;
var F={procname:"webgl.getStatus",prev:framePtr,filename:"c:\\users\\silvio\\documents\\dev\\nim\\webgl\\webgl.nim",line:0};
framePtr = F;
F.line = 327;
result_28152 = gl_28150.getShaderParameter(what_28151, gl_28150.COMPILE_STATUS);framePtr = F.prev;
return result_28152;
}
function checkshader_33006(gl_33008, shader_33009) {

var F={procname:"ex3.checkShader",prev:framePtr,filename:"ex3.nim",line:0};
framePtr = F;
if (!(getstatus_28148(gl_33008, shader_33009))) {
console.log(gl_33008.getShaderInfoLog(shader_33009));
}

framePtr = F.prev;
}
checkshader_33006(gl_33063[0], vertexshader_33112[0]);
var fragmentshader_33113 = /**/[gl_33063[0].createShader(35632)];
gl_33063[0].shaderSource(fragmentshader_33113[0], toJSStr(fragmentshadercode_33061));
gl_33063[0].compileShader(fragmentshader_33113[0]);
checkshader_33006(gl_33063[0], fragmentshader_33113[0]);
var program_33114 = /**/[gl_33063[0].createProgram()];
gl_33063[0].attachShader(program_33114[0], vertexshader_33112[0]);
gl_33063[0].attachShader(program_33114[0], fragmentshader_33113[0]);
gl_33063[0].linkProgram(program_33114[0]);
function getstatus_28153(gl_28155, what_28156) {

var result_28157 = false;
var F={procname:"webgl.getStatus",prev:framePtr,filename:"c:\\users\\silvio\\documents\\dev\\nim\\webgl\\webgl.nim",line:0};
framePtr = F;
F.line = 329;
result_28157 = gl_28155.getProgramParameter(what_28156, gl_28155.LINK_STATUS);framePtr = F.prev;
return result_28157;
}
function checkprogram_33013(gl_33015, prog_33016) {

var F={procname:"ex3.checkProgram",prev:framePtr,filename:"ex3.nim",line:0};
framePtr = F;
if (!(getstatus_28153(gl_33015, prog_33016))) {
console.log(gl_33015.getProgramInfoLog(prog_33016));
}

framePtr = F.prev;
}
checkprogram_33013(gl_33063[0], program_33114[0]);
var positionattrib_33115 = /**/[gl_33063[0].getAttribLocation(program_33114[0], "position")];
var theta_33116 = /**/[0.0];
function bufferdata_27917(gl_27919, target_27920, data_27921, usage_27922) {

var F={procname:"webgl.bufferData",prev:framePtr,filename:"c:\\users\\silvio\\documents\\dev\\nim\\webgl\\webgl.nim",line:0};
framePtr = F;
F.line = 238;
gl_27919.bufferData(target_27920,data_27921,usage_27922);framePtr = F.prev;
}
function tofloat32array_28086(a_28089) {

var result_28090 = null;
var F={procname:"webgl.toFloat32Array",prev:framePtr,filename:"c:\\users\\silvio\\documents\\dev\\nim\\webgl\\webgl.nim",line:0};
framePtr = F;
F.line = 301;
result_28090 = new Float32Array(a_28089);framePtr = F.prev;
return result_28090;
}
function HEX2BHEX3D_33142(x_33147, x_33147_Idx, y_33149) {

var F={procname:"+=.+=",prev:framePtr,filename:"c:\\dev\\nim-devel\\lib\\system.nim",line:0};
framePtr = F;
F.line = 3334;
x_33147[x_33147_Idx] = (x_33147[x_33147_Idx] + y_33149);
framePtr = F.prev;
}
function raiseIndexError() {

var e_13284 = null;
e_13284 = {m_type: NTI3452, parent: null, name: null, message: null, trace: null};
e_13284.message = nimCopy(null, makeNimstrLit("index out of bounds"), NTI138);
raiseException(e_13284, "IndexError");
}
function draw_33118(gl_33120) {

var F={procname:"ex3.draw",prev:framePtr,filename:"ex3.nim",line:0};
framePtr = F;
F.line = 84;
var bg_33121 = ((Math.cos(theta_33116[0]) + 1.0000000000000000e+000) / 2.0000000000000000e+000);
F.line = 87;
var model_33122 = makemodel_33043();
F.line = 88;
packedmodel_33110[0] = nimCopy(null, model_33122, NTI33045);
gl_33120.bindBuffer(34962, vertices_33111[0]);
bufferdata_27917(gl_33120, 34962, tofloat32array_28086(packedmodel_33110[0]), 35048);
gl_33120.bindBuffer(34962, null);
gl_33120.viewport(0, 0, gl_33120.canvas.width, gl_33120.canvas.height);
gl_33120.clearColor(bg_33121, 0.0, 0.0, 1.0000000000000000e+000);
gl_33120.enable(2929);
gl_33120.depthFunc(515);
gl_33120.clear(16640);
gl_33120.useProgram(program_33114[0]);
gl_33120.bindBuffer(34962, vertices_33111[0]);
gl_33120.vertexAttribPointer(positionattrib_33115[0], 2, 5126, false, 0, 0);
gl_33120.enableVertexAttribArray(positionattrib_33115[0]);
gl_33120.drawArrays(1, 0, divInt((model_33122 != null ? model_33122.length : 0), 2));
HEX2BHEX3D_33142(theta_33116, 0, 6.1359231515425647e-003);
L1: do {
F.line = 114;
var i_33181 = 0;
F.line = 3631;
var i_33191 = 0;
L2: do {
F.line = 3632;
L3: while (true) {
if (!(i_33191 < 4)) break L3;
F.line = 3631;
i_33181 = i_33191;
F.line = 115;
var at_33183 = ((theta_33116[0] * 8.0000000000000000e+000) - (addInt(mulInt(i_33181, 4), 1) * 3.1415926535897931e+000));
if ((0.0 < at_33183)) {
F.line = 117;
modelx_33041[0][chckIndx(i_33181, 0, modelx_33041[0].length)-0] = (startx_33025[chckIndx(i_33181, 0, startx_33025.length)-0] + (Math.sin((at_33183 * freqs_33035[chckIndx(i_33181, 0, freqs_33035.length)-0])) / 8.0000000000000000e+000));
}

i_33191 = addInt(i_33191, 1);
}
} while(false);
} while(false);
framePtr = F.prev;
}
function animloop_33193() {

var F={procname:"ex3.animLoop",prev:framePtr,filename:"ex3.nim",line:0};
framePtr = F;
draw_33118(gl_33063[0]);
F.line = 121;
window.requestAnimationFrame(animloop_33193);framePtr = F.prev;
}
if (!((gl_33063[0] == null))) {
canv_33062[0].width = window.innerWidth;
canv_33062[0].height = window.innerHeight;
draw_33118(gl_33063[0]);
animloop_33193();
}

