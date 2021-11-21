#include <stdio.h>
#include "my_mat.h"

void main(){
    int a[10][10];
    int pass = 1;
    while(pass == 1){
        char b;
        scanf("%c",&b);
        if (b == 'A'){
            mat(a);
        }
        if (b == 'B')
            check(a);
        if (b == 'C') {
            int l,m;
            scanf("%d %d",&l,&m);
            path(l,m,a);
        }
        if (b == 'D')
            pass = 0;
    }
}