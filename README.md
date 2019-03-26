# wasm-prototyping
> WebAssembly prototyping. Minimal working environment to study WebAssembly and JavaScript interaction.

## Quickstart

### Install dependencies

Install [emscripten](https://emscripten.org/) and then prepare local toolchain
```
npm install
```

### Build Wasm target

- Directly usimg `emcc`
  ```
  npm run build
  ```

- With `CMake` (you may need to adjust `cmake-build` script in `package.json`, currently it is assumed that emscripten is installed under `bin` folder within user's home directory)
  ```
  npm run cbuild
  ```

### Start HTTP server
```
npm run serve-build
```
Open http://localhost:3003/index.html in your browser.


## Other build targets
 - Use threads
   ```
   npm run tbuild
   ```
   Open http://localhost:3003/threads.html in your browser.


### Tips
To translate between wasm and wat [(WebAssembly Text)](https://github.com/WebAssembly/wabt) format
```
wasm2wat <file>.wasm
```

## License

[MIT](/LICENSE)
