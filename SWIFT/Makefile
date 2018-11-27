# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afeuerst <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/27 15:02:56 by afeuerst          #+#    #+#              #
#    Updated: 2018/11/27 15:04:25 by afeuerst         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
COLLEEN_SRC = Colleen.swift

all: $(COLLEEN)

$(COLLEEN): $(COLLEEN_SRC)
	swiftc $(COLLEEN_SRC) -o $(COLLEEN)

clean:

fclean: clean
	rm -rf $(COLLEEN)

re: fclean all
