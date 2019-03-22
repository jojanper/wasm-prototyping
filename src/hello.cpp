
#include <emscripten/bind.h>

emscripten::val doubler(int x) {
  return emscripten::val(2 * x);
}

EMSCRIPTEN_BINDINGS(doubler)
{
	emscripten::function("doubler", &doubler);
}
