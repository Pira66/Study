#include <iostream>

using namespace std;

void p(int i, int& a, int& b, int& q){
  q = 0;
  for (int j = 2; j < i; j++)
    if (i % j == 0){
      q ++;
      a = q == 1 ? j : a;
      b = q == 2 ? j : b;
    }
}

int main(){
  //freopen("tests\\01", "r", stdin);

  int x, y;
  cin >> x >> y;

  int a, b, q;
  for (int i = x; i <= y; i ++){
    p(i, a, b, q);
    if (q == 2)
      cout << a << " " << b << endl;
  }

  return 0;

}
