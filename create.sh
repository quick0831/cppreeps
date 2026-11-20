#!/bin/bash

mkdir -p dist
mkdir -p build

em++                                \
    --std=c++20                     \
    --no-entry                      \
    -lembind                        \
    --pre-js pre_js.js              \
    --post-js post_js.js            \
    -sWASM_ASYNC_COMPILATION=0      \
    -sENVIRONMENT=shell             \
    -sSTRICT                        \
    -Iinclude -Ilib                 \
    -O3 -Werror -Wall -pedantic     \
        src/loop.cpp                \
    -o build/loop.js

cp build/loop.wasm      dist/
cp build/loop.js        dist/loop_mod.js
cp src/main.js          dist/
