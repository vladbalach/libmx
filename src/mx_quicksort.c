#include "header.h"
static void swap(char **el1, char** el2) {
    char* tmp = *el1;
    *el1 = *el2;
    *el2 = tmp;
}

int mx_quicksort(char **arr, int left, int right) {
    int l = left, r = right;
  int piv = mx_strlen(arr[(l + r) / 2]); // Опорным элементом для примера возьмём средний
  int count = 0;
  while (l <= r)
  {
    while (mx_strlen(arr[l]) < piv)
      l++;
    while (mx_strlen(arr[r]) > piv)
      r--;
    if (l <= r)
      swap (&arr[l++], &arr[r--]);
      count++;
  }
  if (left < r)
    count += mx_quicksort (arr,left, r);
  if (right > l)
    count += mx_quicksort (arr,l, right);
    return count;
}