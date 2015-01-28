#include <algorithm>
#include <bitset>
#include <cassert>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <list>
#include <map>
#include <queue>
#include <set>
#include <sstream>
#include <stack>
#include <string>
#include <utility>
#include <vector>
using namespace std;

#define all(o) (o).begin(), (o).end()
#define allr(o) (o).rbegin(), (o).rend()
const int INF = 2147483647;
typedef long long ll;
typedef pair<int, int> ii;
typedef vector<int> vi;
typedef vector<ii> vii;
typedef vector<vi> vvi;
typedef vector<vii> vvii;
template <class T> int size(T &x) { return x.size(); }

// assert or gtfo

int main()
{
    int n;
    scanf("%d\n", &n);

    bool ok = true;
    int last = -1;

    for (int i = 0; i < n; i++)
    {
        int cur;
        scanf("%d", &cur);
        ok = ok && (i == 0 || cur > last);
        last = cur;
    }

    if (ok)
        printf("Haekkandi\n");
    else
        printf("Ekki haekkandi\n");

    return 0;
}
