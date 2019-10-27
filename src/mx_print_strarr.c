#include "header.h"

void mx_print_strarr(char **arr, const char *delim) {
    if((arr == 0) || (delim == 0)) return;
    while(*arr) {
        mx_printstr(*arr);
        if(*(arr+1))
            mx_printstr(delim);
        arr++;
    }
    mx_printchar('\n');
}