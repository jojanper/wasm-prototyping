# wasm-prototyping
> WebAssembly prototyping

## Quickstart

### Install dependencies

Install [emscripten](https://emscripten.org/) and then prepare local toolchain
```
npm install
```

### Build Wasm target
```
npm run build
```

### Start HTTP server
```
npm run serve-build
```
Open http://localhost:8081/index.html in your browser.

### Tips
To translate between wasm and wat [(WebAssembly Text)](https://github.com/WebAssembly/wabt) format
```
wasm2wat <file>.wasm
```

## License

[MIT](/LICENSE)
