#include <unistd.h>
#include <wchar.h>
#include <stdio.h>
#include <stdlib.h>

char *mx_strcat(char *restrict s1, const char *restrict s2);
char *mx_strncpy(char *dst, const char *src, int len);
char *mx_strndup(const char *s1, size_t n);
char *mx_strdup(const char *str);
int mx_get_char_index(const char *str, char c);
void mx_del_strarr(char ***arr);
void mx_strdel(char **str);
void mx_str_reverse(char *s);
void mx_swap_char(char *s1, char *s2);
int mx_quicksort(char **arr, int left, int right);
int mx_bubble_sort(char **arr, int size);
int mx_strcmp(const char *s1, const char *s2);
int mx_binary_search(char **arr, int size, const char *s, int *count);
char* mx_nbr_to_hex(unsigned long nbr);
unsigned long mx_hex_to_nbr(const char *hex);
void mx_print_unicode(wchar_t c);
void mx_printchar(char c);
char *mx_strcpy(char *dst, const char *src);
int mx_strlen(const char *s);
char *mx_strnew(const int size);
void mx_print_strarr(char **arr, const char *delim);
void mx_printstr(const char *s);
void mx_printint(int n);
double mx_pow(double n, unsigned int pow);
int mx_sqrt(int x);
char * mx_itoa(int number);
