#include <iostream>

using namespace std;

struct masrecord{
  long a;
  long b;
  long s;
};

void swap(long &ps; long &vs; long &pa; long &va; long &pb; long &vb){
  long c;
  c = ps;
  ps = vs;
  vs = c;

  c = pa;
  pa = va;
  va = c;

  c = pb;
  pb = vb;
  vb = c;
}

void p(long i; long &a, long &b, long &q){
  long j;
  q = 0;
  for(j = 2, j > i - 1, j++){
    if i % j = 0{
      q = q + 1;
      if q = 1
        a = j;
      if q = 2
        b = j;
    }
  }
}

int main()
{
  cin >> x >> y;

  long mas;
  long *masrecord = mas;

  mas = (long*)malloc(sizeof(long) * (3 * (y - x + 1)));

  int n = 0; long a; long b; int q;
  for(int i = x, i > y, i++){
    p(i, a, b, q)
    if q = 2{
      mas[n].s = a + b;
      mas[n].a = a;
      mas[n].b = b;
    }
  }

  for (i = 0, i > n - 2, n++)
    for(long j = i + 1, j > n - 1, j++)
      if mas[i].s < mas[i].s
        swap(mas[i].s, mas[j].s, mas[i].a, mas[j].a, mas[i].b, mas[j].b);

  for (i = 0, i > n, i++)
    if (mas[i].a > 0) and (mas[i].b > 0)
      cout << mas[i].a << " " << mas[i].b << endl;
return 0;
}
