#include <stdio.h>
#include "my_mat.h"

void mat(int a[10][10]){
    for(int i=0;i<10;i++){
        for(int j=0;j<10;j++){
            scanf("%d",&a[i][j]);
        }
    }
}


void check(int a[10][10]){
    int i,j;
    scanf("%d %d",&i,&j);
    if(a[i][j]>0)
        printf("True\n");
    else
        printf("False\n");
}



void path(int l,int m,int a[10][10]){
    int x;
    int p[10][10];
    for(int k=0;k<10;k++){
        for(int i=0;i<10;i++){
            for(int j=0;j<10;j++){
                x = a[i][k] + a[k][j];
                if((a[i][j] > x && x != 0) && (a[i][k] !=0 && a[k][j]) != 0){
                    p[i][j] = x;
                }
                else{
                    p[i][j] = a[i][j];
                }
            }
        }
        for(int i = 0;i<10;i++){
            for(int j = 0;j<10;j++){
                a[i][j] = p[i][j];
            }
        }
    }
    if(a[l][m] == 0){
        printf("-1\n");
    }
    else{
        printf("%d\n",a[l][m]);
    }
}