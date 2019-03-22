#!/bin/bash

# https://developers.google.com/web/updates/2018/08/embind
# https://gist.github.com/surma/d04cd0fd896610575126d30de36d7eb6

emcc src/hello.c -I src -Os -s WASM=1 -o hello_world.wasm

#-Os
em++ src/hello.cpp -I src --bind -s WASM=1 -s ALLOW_MEMORY_GROWTH=1 -o output.js

# --std=c++11
#em++ hello.cpp -Os --bind -s WASM=1 -s ALLOW_MEMORY_GROWTH=1 -s ONLY_MY_CODE=1 -s ERROR_ON_UNDEFINED_SYMBOLS=0 -o hello_world.wasm
