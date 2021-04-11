#include  "hello_world.h"
#include  <stdio.h>


char* hello_world() {
    static int i = 0;
    static char str[12];
    i -= 1;
    sprintf(str, "%d", i);
    return str;
}

int get_counter() {
    return 1000;
}