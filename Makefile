NAME = libmx

INC =  ./inc/header.h 

HEADTMP = header.h 

SRCS = ./src/main.c \
	./src/mx_printchar.c \
	./src/mx_print_unicode.c \
	./src/mx_strlen.c \
	./src/mx_strcpy.c \
	./src/mx_strnew.c \
	./src/mx_hex_to_nbr.c \
	./src/mx_print_strarr.c \
	./src/mx_printstr.c \
	./src/mx_printint.c \
	./src/mx_pow.c \
	./src/mx_sqrt.c \
	./src/mx_nbr_to_hex.c \
	./src/mx_itoa.c \
	./src/mx_foreach.c \
	./src/mx_strcmp.c \
	./src/mx_binary_search.c \
	./src/mx_bubble_sort.c \
	./src/mx_quicksort.c \
	./src/mx_swap_char.c \
	./src/mx_str_reverse.c \
	./src/mx_strdel.c \
	./src/mx_del_strarr.c \
	./src/mx_get_char_index.c \
	./src/mx_strdup.c \
	./src/mx_strndup.c \
	./src/mx_strncpy.c \
	./src/mx_strcat.c \
	./src/mx_strstr.c \
	./src/mx_get_substr_index.c \
	./src/mx_count_substr.c \
	./src/mx_count_words.c \
	./src/mx_strtrim.c \
	./src/mx_del_extra_spaces.c \
	./src/mx_strsplit.c \

CTMP = 	main.c \
	mx_printchar.c \
	mx_print_unicode.c \
	mx_strlen.c \
	mx_strcpy.c \
	mx_strnew.c \
	mx_hex_to_nbr.c \
	mx_print_strarr.c \
	mx_printstr.c \
	mx_printint.c \
	mx_pow.c \
	mx_sqrt.c \
	mx_nbr_to_hex.c \
	mx_itoa.c \
	mx_foreach.c \
	mx_strcmp.c \
	mx_binary_search.c \
	mx_bubble_sort.c \
	mx_quicksort.c \
	mx_swap_char.c \
	mx_str_reverse.c \
	mx_strdel.c \
	mx_del_strarr.c \
	mx_get_char_index.c \
	mx_strdup.c \
	mx_strndup.c \
	mx_strncpy.c \
	mx_strcat.c \
	mx_strstr.c \
	mx_get_substr_index.c \
	mx_count_substr.c \
	mx_count_words.c \
	mx_strtrim.c \
	mx_del_extra_spaces.c \
	mx_strsplit.c \

DFLAGS = -fsanitize=address -g
CFLSGS = -std=c11 -Wall -Wextra -Wpedantic -Werror

all: install uninstall

debug:
	@cp $(SRCS) .
	@cp $(INC) .
	@clang $(CFLSGS) -o $(NAME) $(CTMP) 

install:
	@cp $(SRCS) .
	@cp $(INC) .
	@clang $(CFLSGS) -o $(NAME) $(CTMP) 

uninstall:
	@rm -rf $(CTMP)
	@rm -rf $(OUT)
	@rm -rf $(HEADTMP)
clean:
	@rm -rf $(NAME)
	@rm -rf $(CTMP)
	@rm -rf $(OUT)
	@rm -rf $(HEADTMP)
reinstall: clean all
start: all
	./a.out
