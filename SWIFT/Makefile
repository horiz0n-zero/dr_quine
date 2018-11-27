# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afeuerst <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/27 15:02:56 by afeuerst          #+#    #+#              #
#    Updated: 2018/11/27 15:52:25 by afeuerst         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
COLLEEN_SRC = Colleen.swift

GRACE = Grace
GRACE_SRC = Grace.swift

all: $(COLLEEN) $(GRACE)

$(COLLEEN): $(COLLEEN_SRC)
	swiftc $(COLLEEN_SRC) -o $(COLLEEN)

$(GRACE): $(GRACE_SRC)
	swiftc $(GRACE_SRC) -o $(GRACE)

clean:
	rm -rf $(GRACE)_kid.swift

fclean: clean
	rm -rf $(GRACE)
	rm -rf $(COLLEEN)

re: fclean all
