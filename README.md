TODO
====
- Some utilites: setting up a context, reading errors, emitting to console
- Have a module for `Webgl2`

webgl.nim
=========
Experimental wrapper to webgl for Nim (JS backend).  
Mostly taken from [mozilla webgl api](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API)

__NOTE: it is still incomplete and there are probably bugs__

A couple of examples are provided in `/examples` 
( they are direct translation of js code taken from mozilla tutorials and [webgl-lessons](https://github.com/tparisi/webgl-lessons), so
don't expect idiomatic nim code. I'll work on improving them )

Using this wrapper
------------------
While this wrapper is not currently in nimble, you can still use it by  
cloning it into your project folder and then using `import <webgl>/webgl`, where  
`<webgl>` is the path to the folder containing the file `webgl.nim`

Compiling to JS
---------------

```
nim js <filename>
```

You can find your compiled file inside `nimcache`.  
Or just pass `-o:<file>` to nim to have it compile to that file.