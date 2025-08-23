return {
  s("#", fmt([[
#include <iostream>

int main() {{
  std::cout << "{}\n";
  {}
  return 0;
}}
]], { i(1, "Hello world"), i(0) }))
}
