#include <iostream>
#include <type_traits>
#include <vector>

template <typename L, typename R> class MyClass {
public:
  MyClass(const L l, const R r) : l(l), r(r) { res = l + r; }

private:
  L l;
  R r;
  std::common_type_t<L, R> res;

  using ct = std::common_type_t<L, R>;

public:
  ct operator()() { return res; }
};

int main(int argc, char *argv[]) {
  std::cout << "test" << std::endl;

  std::vector<double> v{3};

  MyClass mc(1, 2);

  return 0;
}
