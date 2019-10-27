#include "header.h"
int mx_read_line(char **lineptr, int buf_size, int delim, const int fd) {
    static int iFD;//index fd
    static size_t index = 0;//Index of string
    char same = 0;
    int countOfLetters = 0;
    if (fd == iFD) same = 1;
    else {
        iFD = fd;
        index = 0;
    }
    *lineptr = *lineptr;
    char c = 0;
    int status = 0;
    if (fd < 0) return -1;
    while((status = read(fd, &c, 1)) > 0) {
        
        *(*lineptr + index) = c;
        index++;
        countOfLetters++;
        if ((countOfLetters >= buf_size) || (c == delim)) break;
    }
    if (status <= 0) return status; 
    return countOfLetters;
}
