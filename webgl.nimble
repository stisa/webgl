# Package
version       = "0.1.0"
author        = "stisa"
description   = "Basic wrapper for WebGL."
license       = "MIT"

# Deps
requires: "nim >= 0.14.0"

task buildexamples, "Build examples":
  exec("nim js -o:docs/ex1.js examples/ex1.nim")
  exec("nim js -o:docs/ex2.js examples/ex2.nim")
  exec("nim js -o:docs/ex3.js examples/ex3.nim")