#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vpalyvod <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/05 19:15:28 by vpalyvod          #+#    #+#              #
#    Updated: 2017/11/05 19:15:29 by vpalyvod         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = ft_retro

SRC =	game.cpp \
		main.cpp \
		Asteroid.cpp \
		Player.cpp \
		Background.cpp

OBJ = $(SRC:.cpp=.o)

CC = clang++ -Wall -Wextra -Werror

all: $(NAME)

DOGE = "[49m              [38;5;179m▄▄\n"\
	"             [48;5;179m [48;5;172m [49m[38;5;172m▄                    [38;5;186m▄[38;5;179m▄[38;5;178m▄[38;5;172m▄\n"\
	"             [48;5;179m [48;5;172m [48;5;136m [49m▄                 [38;5;187m▄[48;5;186m[38;5;179m▄[48;5;179m[38;5;142m▄[48;5;136m [38;5;130m▄[48;5;130m[38;5;94m▄[48;5;179m[38;5;136m▄[49m\n"\
	"             [48;5;179m[38;5;178m▄[48;5;172m [48;5;136m[38;5;130m▄[48;5;172m [48;5;179m[38;5;172m▄[49m[38;5;179m▄              ▄[48;5;179m[38;5;136m▄[48;5;136m [48;5;137m▄[48;5;136m [48;5;130m   [49m\n"\
	"            [38;5;179m▄[48;5;178m[38;5;136m▄[48;5;172m [48;5;136m[38;5;178m▄▄[48;5;172m▄▄[48;5;179m▄[49m▄▄[38;5;179m▄▄      [38;5;186m▄[38;5;172m▄[48;5;178m[38;5;136m▄[48;5;136m[38;5;130m▄ ▄[48;5;130m [48;5;94m  [48;5;130m  [49m\n"\
	"           [38;5;179m▄[48;5;178m▄▄[48;5;179m   [48;5;178m  [38;5;172m▄     [38;5;179m▄  [38;5;172m▄[48;5;172m[38;5;130m▄[38;5;136m▄[48;5;136m[38;5;130m▄[48;5;94m [48;5;130m[38;5;136m▄ [48;5;94m[38;5;52m▄[48;5;88m[38;5;233m▄[48;5;52m▄[48;5;88m[38;5;94m▄[48;5;130m  [49m\n"\
	"         [38;5;179m▄[38;5;185m▄[48;5;179m [38;5;186m▄[48;5;186m [48;5;179m▄  [48;5;178m[38;5;172m▄[48;5;172m  [38;5;178m▄[48;5;178m  [48;5;179m ▄▄[48;5;178m   [48;5;172m▄[48;5;130m[38;5;136m▄[48;5;88m[38;5;130m▄[48;5;130m [48;5;136m ▄[48;5;94m[38;5;232m▄[48;5;16m [48;5;233m[38;5;52m▄[48;5;94m[38;5;130m▄[48;5;136m [48;5;130m[38;5;136m▄[49m\n"\
	"       [38;5;186m▄[48;5;186m [48;5;185m▄[48;5;179m  [48;5;186m   [48;5;179m [38;5;178m▄[48;5;172m[38;5;136m▄ [48;5;178m [38;5;179m▄▄[48;5;179m  [48;5;142m▄[48;5;178m▄     [48;5;172m▄[48;5;130m[38;5;172m▄[38;5;94m▄[48;5;52m[38;5;16m▄[48;5;16m [38;5;52m▄[48;5;94m[38;5;136m▄[48;5;136m   [49m\n"\
	"     [38;5;186m▄[48;5;186m  [38;5;179m▄[48;5;179m[38;5;100m▄[48;5;186m[38;5;94m▄[48;5;180m[38;5;137m▄[38;5;179m▄[48;5;186m[38;5;180m▄[48;5;180m[38;5;179m▄[48;5;179m[38;5;178m▄[48;5;172m[38;5;136m▄[48;5;136m  [48;5;179m [38;5;186m▄[48;5;180m  [48;5;179m [48;5;143m[38;5;179m▄[48;5;136m  [48;5;178m[38;5;136m▄ [38;5;179m▄[48;5;179m  [48;5;178m▄[48;5;172m[38;5;178m▄[48;5;94m▄[38;5;136m▄[48;5;130m▄[48;5;136m [48;5;94m[38;5;130m▄[38;5;136m▄[49m[38;5;172m▄\n"\
	"   [38;5;186m▄[48;5;186m[38;5;223m▄[48;5;222m[38;5;224m▄[48;5;223m[38;5;230m▄[48;5;186m[38;5;187m▄[48;5;137m[38;5;144m▄[48;5;235m[38;5;233m▄[48;5;16m  [48;5;137m[38;5;136m▄[48;5;179m  [48;5;178m[38;5;179m▄[48;5;172m▄[48;5;136m▄[48;5;179m [48;5;180m▄  [38;5;143m▄[48;5;179m[38;5;137m▄  [48;5;172m[38;5;178m▄[38;5;136m▄[48;5;178m[38;5;172m▄ [38;5;179m▄[48;5;179m    [48;5;178m▄[48;5;172m[38;5;178m▄[48;5;136m [48;5;130m [38;5;88m▄[48;5;136m[38;5;130m▄[49m\n"\
	"   [48;5;186m[38;5;187m▄[48;5;224m[38;5;254m▄[48;5;254m [48;5;224m[38;5;223m▄[48;5;187m[38;5;186m▄[48;5;144m[38;5;137m▄[48;5;16m[38;5;58m▄▄[38;5;179m▄[48;5;179m      [38;5;172m▄[38;5;136m▄[48;5;143m[38;5;52m▄[48;5;100m[38;5;232m▄[48;5;58m[38;5;244m▄[48;5;16m  [48;5;94m[38;5;16m▄[48;5;136m[38;5;94m▄[48;5;178m[38;5;136m▄ [38;5;179m▄[48;5;179m      [38;5;178m▄[48;5;178m [48;5;130m[38;5;172m▄[48;5;88m[38;5;130m▄[48;5;130m [48;5;178m[38;5;172m▄[49m\n"\
	"  [48;5;187m [48;5;223m[38;5;224m▄[48;5;254m ▄[48;5;186m [48;5;179m [38;5;186m▄▄[38;5;185m▄ [38;5;186m▄▄[48;5;186m [38;5;179m▄[48;5;179m  [48;5;136m[38;5;172m▄[48;5;58m[38;5;136m▄[48;5;16m [48;5;59m[38;5;232m▄[48;5;237m[38;5;235m▄[48;5;16m  [38;5;58m▄[48;5;52m[38;5;143m▄[48;5;136m[38;5;179m▄[48;5;179m [38;5;180m▄▄      [48;5;178m[38;5;179m▄ [48;5;136m[38;5;172m▄▄[48;5;178m [49m\n"\
	" [38;5;187m▄[48;5;187m[38;5;223m▄[48;5;254m[38;5;253m▄[48;5;253m [48;5;187m[38;5;224m▄[48;5;223m[38;5;253m▄[48;5;222m[38;5;144m▄[38;5;143m▄[48;5;186m▄[38;5;144m▄[38;5;180m▄[48;5;180m [48;5;186m   [48;5;179m  [48;5;178m[38;5;179m▄▄[48;5;137m▄[48;5;94m▄[48;5;95m[38;5;143m▄[48;5;58m▄[48;5;101m[38;5;179m▄[48;5;143m▄[48;5;180m▄ [48;5;186m[38;5;187m▄[48;5;187m [48;5;186m▄ [38;5;180m▄[48;5;180m[38;5;186m▄[48;5;186m [48;5;180m▄ [48;5;179m [48;5;178m[38;5;179m▄ [48;5;172m[38;5;178m▄[48;5;178m [48;5;179m▄[49m\n"\
	"[38;5;180m▄[48;5;187m [48;5;223m[38;5;187m▄[48;5;187m [38;5;230m▄[38;5;243m▄[48;5;238m[38;5;16m▄[48;5;235m▄[48;5;236m▄[48;5;238m▄[48;5;235m▄[48;5;58m▄[48;5;144m[38;5;233m▄[48;5;186m[38;5;187m▄▄▄[48;5;180m[38;5;186m▄[48;5;179m[38;5;180m▄  [38;5;186m▄▄▄ [38;5;180m▄▄▄[48;5;186m [48;5;187m   [48;5;186m[38;5;187m▄[48;5;180m▄[48;5;186m▄   [48;5;180m [48;5;179m  [48;5;178m [38;5;179m▄▄[48;5;180m▄[49m\n"\
	"[48;5;180m[38;5;187m▄[48;5;187m[38;5;223m▄  [48;5;254m[38;5;187m▄[48;5;102m[38;5;241m▄[48;5;16m       [48;5;144m[38;5;248m▄[48;5;187m  [48;5;186m[38;5;187m▄ [48;5;180m [38;5;186m▄[48;5;186m [48;5;187m    [48;5;186m[38;5;187m▄▄[48;5;187m  [38;5;186m▄▄▄▄[48;5;186m [38;5;180m▄▄▄[48;5;180m [38;5;179m▄[48;5;179m[38;5;178m▄[48;5;178m  [38;5;179m▄[48;5;179m [49m\n"\
	"[48;5;187m[38;5;186m▄   [48;5;250m[38;5;144m▄[48;5;101m[38;5;95m▄[48;5;16m[38;5;232m▄    [38;5;238m▄[48;5;241m[38;5;102m▄[48;5;145m[38;5;144m▄[48;5;144m [38;5;180m▄[38;5;186m▄[48;5;180m [48;5;179m [48;5;180m [48;5;186m[38;5;187m▄[48;5;187m  [38;5;186m▄    ▄▄▄[48;5;186m[38;5;180m▄[48;5;180m [38;5;179m▄ ▄[48;5;179m   [48;5;172m[38;5;136m▄[48;5;136m[38;5;172m▄[48;5;178m  [48;5;179m[38;5;178m▄ [49m\n"\
	"[48;5;186m [48;5;187m   [48;5;144m [48;5;59m[38;5;95m▄[48;5;235m[38;5;233m▄[48;5;16m  [38;5;232m▄▄[48;5;238m[38;5;58m▄[48;5;102m[38;5;101m▄[48;5;138m[38;5;144m▄[48;5;144m [38;5;143m▄[48;5;179m▄  [48;5;180m[38;5;179m▄    [48;5;186m[38;5;180m▄▄[48;5;180m    [38;5;179m▄ [48;5;179m[38;5;180m▄▄[48;5;180m  [38;5;179m▄[48;5;179m [48;5;178m[38;5;142m▄[48;5;136m  [48;5;178m [38;5;136m▄ [49m\n"\
	"[48;5;186m [48;5;187m    [48;5;137m[38;5;144m▄[48;5;16m[38;5;58m▄     [48;5;94m[38;5;16m▄[48;5;137m[38;5;58m▄[48;5;143m[38;5;101m▄▄[38;5;94m▄[38;5;58m▄[38;5;52m▄[48;5;137m[38;5;58m▄[48;5;143m [48;5;180m[38;5;143m▄ [38;5;179m▄[48;5;179m [38;5;180m▄[48;5;180m   [48;5;179m▄[48;5;180m [38;5;186m▄[48;5;186m  [48;5;180m▄ [38;5;179m▄[48;5;179m [48;5;178m [48;5;136m[38;5;172m▄[48;5;178m▄[48;5;172m [38;5;178m▄[48;5;178m [49m\n"\
	" [48;5;187m   [48;5;186m[38;5;187m▄ [48;5;143m[38;5;180m▄[48;5;58m[38;5;137m▄[48;5;232m[38;5;94m▄[48;5;16m▄▄▄▄[38;5;58m▄▄[48;5;232m[38;5;94m▄[48;5;16m▄[48;5;232m[38;5;100m▄[48;5;58m[38;5;136m▄[48;5;101m[38;5;143m▄[48;5;143m[38;5;180m▄[48;5;179m▄  [48;5;180m          [38;5;179m▄▄[48;5;179m [48;5;178m[38;5;172m▄[48;5;136m  [48;5;172m[38;5;136m▄[48;5;136m [48;5;172m▄[49m\n"\
	"[38;5;223m▄[48;5;223m [48;5;187m  [38;5;186m▄[48;5;186m  [48;5;180m▄[48;5;137m[38;5;180m▄[48;5;100m[38;5;179m▄[48;5;137m▄▄[48;5;143m▄[48;5;137m▄▄[48;5;136m▄[48;5;137m▄[48;5;143m▄[48;5;179m        [48;5;180m   [38;5;186m▄  [38;5;179m▄▄[48;5;179m [38;5;178m▄[48;5;178m[38;5;172m▄[48;5;172m[38;5;136m▄[48;5;178m[38;5;172m▄[48;5;136m▄  [49m\n"\
	" [48;5;223m  [48;5;187m[38;5;186m▄▄[48;5;186m   [38;5;180m▄▄[48;5;179m        [48;5;143m[38;5;179m▄▄[48;5;179m[38;5;143m▄[48;5;143m[38;5;179m▄[48;5;179m [38;5;180m▄[48;5;180m    [48;5;186m▄[48;5;180m  [38;5;179m▄[48;5;179m  [38;5;178m▄[48;5;172m▄[48;5;136m[38;5;172m▄[48;5;172m[38;5;136m▄▄[48;5;136m[38;5;130m▄ [49m\n"\
	"  [38;5;223m▀[48;5;186m [38;5;179m▄[38;5;180m▄  [48;5;180m [38;5;179m▄[48;5;179m  [48;5;180m▄[48;5;179m   [48;5;143m▄[48;5;179m      [48;5;180m   [48;5;186m[38;5;180m▄[48;5;180m [38;5;179m▄[48;5;179m [38;5;180m▄   [48;5;178m[38;5;179m▄ [48;5;136m[38;5;172m▄  [48;5;130m[38;5;136m▄[49m▀\n"\
	"    [38;5;180m▀[48;5;179m[38;5;185m▄  [48;5;180m[38;5;179m▄[48;5;179m           [48;5;143m▄[48;5;179m  [48;5;180m▄[48;5;179m[38;5;143m▄[48;5;180m[38;5;179m▄[48;5;179m   [38;5;180m▄[48;5;180m[38;5;179m▄[48;5;179m    [48;5;178m [48;5;136m[38;5;172m▄  [49m\n"\
	"      [38;5;179m▀▀[48;5;179m    [38;5;142m▄  ▄[38;5;136m▄[38;5;142m▄[48;5;143m▄▄▄[38;5;136m▄ [38;5;142m▄[48;5;136m[38;5;143m▄[48;5;143m [48;5;179m[38;5;180m▄         [49m[38;5;178m▀▀\n"\
	"            [38;5;136m▀▀[38;5;142m▀[38;5;136m▀▀▀▀▀[38;5;143m▀▀▀[38;5;179m▀[38;5;180m▀▀[39m"

WOOF			:=	@echo $(DOGE)
SAY				:= $(shell command -v say 2> /dev/null)
ifdef SAY
 OS				:= $(shell uname)
 ifeq ($(OS), Darwin)
  WOOF			+= && say 'Woof! Woof!'
 endif
endif

$(NAME): $(OBJ)
	@$(CC) -o $(NAME) -lncurses $(OBJ)
	$(WOOF)

%.o: %.cpp
	@$(CC) -c $<

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(NAME)

re: fclean all