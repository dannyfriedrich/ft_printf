# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: dfreire <dfreire@student.codam.nl>           +#+                      #
#                                                    +#+                       #
#    Created: 2019/04/09 14:47:28 by dfreire        #+#    #+#                 #
#    Updated: 2019/05/07 17:15:43 by bbremer       ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRC = ft_printf.c initialise_varargs.c getting_flags.c print_parsed_values.c\
	ctostr.c handling_o.c handling_x.c handling_u.c handling_f.c handling_di.c\
	handling_p.c handling_c.c print_null.c getting_fmt.c handling_flags.c\
	support_functions.c handling_precision_width.c
LIBNAME = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c\
	ft_memchr.c ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c\
	ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c\
	ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_isalpha.c\
	ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c\
	ft_tolower.c ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c\
	ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c\
	ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c\
	ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c\
	ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c\
	ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_memdup.c\
	ft_whitespace.c ft_swap.c ft_caesarcipher.c ft_caesarcipher_decrypt.c\
	ft_sqrt.c ft_count_if.c ft_writeincolours.c ft_strndup.c ft_numlen.c\
	ft_numlen_base.c ft_itoa_base.c ft_ftoa.c ft_putchar_int.c ft_putnbr_base.c\
	ft_put_pointer.c ft_putstr_int.c ft_put_binary.c ft_atof.c
LIBSRC = $(addprefix libft/, $(LIBNAME))
OBJ = $(SRC:.c=.o)
LIBOBJ = $(LIBNAME:.c=.o)
HEADER = ft_printf.h
FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
		make -C ./libft re
		gcc $(FLAGS) -c $(SRC) $(LIBSRC) -I$(HEADER)
		ar rc $(NAME) $(OBJ) $(LIBOBJ)

clean:
		rm -f $(OBJ) $(LIBOBJ)
		make -C ./libft/ clean

fclean: clean
		rm -f $(NAME)
		rm -f libft.a
		make -C ./libft/ fclean

re: fclean all
