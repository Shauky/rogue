#!/bin/bash

# print command in shell script and wait for confirmation before executing it
trap 'read -p "run: $BASH_COMMAND"' DEBUG

cargo build --release --target wasm32-unknown-unknown
wasm-bindgen target/wasm32-unknown-unknown/release/rogue.wasm --out-dir rogue --no-modules --no-typescript
