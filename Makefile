##
## EPITECH PROJECT, 2020
## B-CPE-100-LYN-1-1-cpoolday10-pierre1.westphal
## File description:
## Makefile
##

SRC	=	src/strlen.asm	\
		src/strchr.asm	\
		src/memcpy.asm	\
		src/memset.asm	\
		src/memmove.asm	\
		src/strcmp.asm	\
		src/strncmp.asm	\
		src/strcspn.asm	\

OBJ	=	$(SRC:.asm=.o)

NAME	=	libasm.so

CFLAGS	=	-I./include

all:	$(NAME)

$(NAME):	$(OBJ)
			ld -shared -o $(NAME) $(OBJ)

%.o : %.asm
		nasm -o $@ $< -f elf64

clean:
	@rm -f $(OBJ) $(T_OBJS)

fclean:	clean
	@rm -f $(NAME) $(T_NAME)

re:	fclean all