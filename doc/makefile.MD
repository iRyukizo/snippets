## How to use Makefile snippets

make.snippets file is located [here](https://github.com/iRyukizo/snippets/blob/master/UltiSnips/make.snippets)

---

### What does it do ?
---
#### SRC
`src` will display all `*.c` *files* with `SRC=` prefix.\
Example:
```
src
```
will become:
```make
SRC= main.c tata.c titi.c toto.c
```
---
#### LS
`ls` will display all `*.c` *files* without any prefix.\
Except if you mention a pattern to seek.\
Example:
```
ls
ls t
```
will become:
```make
main.c tata.c titi.c toto.c
tata.c titi.c toto.c
```
---
#### BIN
`bin` will output:
```make
BIN= binary
```
---
#### OBJ
`obj` will output:
```make
OBJ= ${SRC:.c=.o}
```
---
#### LIB
`lib` will output:
```make
LIB= library.a
```
---
#### CC
`cc` will output:
```make
CC=gcc
CFLAGS= -fsanitize=address -Wall -Wextra -Werror -pedantic -std=c99
```
---
#### CLEAN
`clean` will output:
```make
clean:
        ${RM} ${OBJ} ${BIN}
```
---
#### RULE
`rule` will ouput:
```make
${BIN}: ${OBJ}
        ${CC} ${OBJ} -o ${BIN}
```
---
#### ALL
`all` will output:
```make
all: ${BIN}
```
---
