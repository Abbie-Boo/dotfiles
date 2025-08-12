return {
s("#", fmt([[
#include <iostream>

int main() {{
  std::cout << "{}";
  return 0;
}}
]], { i(0, "Hello world") }))
}
