# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afeuerst <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/27 15:02:56 by afeuerst          #+#    #+#              #
#    Updated: 2018/11/27 16:22:26 by afeuerst         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
COLLEEN_SRC = Colleen.swift

GRACE = Grace
GRACE_SRC = Grace.swift

SULLY = Sully
SULLY_SRC = Sully.swift

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_SRC)
	swiftc $(COLLEEN_SRC) -o $(COLLEEN)

$(GRACE): $(GRACE_SRC)
	swiftc $(GRACE_SRC) -o $(GRACE)

$(SULLY): $(SULLY_SRC)
	swiftc $(SULLY_SRC) -o $(SULLY)

clean:
	rm -rf $(SULLY)_*
	rm -rf $(GRACE)_kid.swift

fclean: clean
	rm -rf $(SULLY)
	rm -rf $(GRACE)
	rm -rf $(COLLEEN)

re: fclean all
