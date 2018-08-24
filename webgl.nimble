# Package
version       = "0.2.1"
author        = "stisa"
description   = "Basic wrapper for WebGL."
license       = "MIT"

srcDir = "src"

skipDirs = @["oldwrapper","templates"]

# Deps
requires: "nim >= 0.16.1"

import ospaths

task docs, "Build docs folder - examples and documentation":
  #exec("nim js -o:docs/ex1.js examples/ex1.nim")
  #exec("nim js -o:docs/ex2.js examples/ex2.nim")
  #exec("nim js -o:docs/ex3.js examples/ex3.nim")
  mkdir "docs"/"webgl"
  mkdir "docs"/"examples"
  exec("exampler") # custom utility to generate example pages
  exec("nim doc2 -o:" & "docs"/"webgl.html " & "src"/"webgl.nim")
  exec("nim doc2 -o:" & "docs"/"webgl"/"enums.html " & "src"/"webgl"/"enums.nim")
  exec("nim doc2 -o:" & "docs"/"webgl"/"consts.html " & "src"/"webgl"/"consts.nim")
  withdir "examples":
    for file in listfiles("."):
      if splitfile(file).ext == ".nim":
        exec "nim js -o:" & ".."/"docs"/"examples"/file.changefileext("js") & " " & file
