# Package
version       = "0.1.0"
author        = "stisa"
description   = "Basic wrapper for WebGL."
license       = "MIT"

# Deps
requires: "nim >= 0.14.0"

import ospaths

task builddocs, "Build docs folder - examples and documentation":
  #exec("nim js -o:docs/ex1.js examples/ex1.nim")
  #exec("nim js -o:docs/ex2.js examples/ex2.nim")
  #exec("nim js -o:docs/ex3.js examples/ex3.nim")
  exec("exampler") # custom utility to generate example pages
  exec("nim doc2 -o:docs/webgl.html src/webgl.nim")
  withdir "examples":
    for file in listfiles("."):
      if splitfile(file).ext == ".nim":
        exec "nim js -o:../docs/examples/"&file.changefileext("js")&" "&file
