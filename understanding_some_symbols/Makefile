SRC = main.c helper1.c 
OBJ = $(SRC:.c=.o)		# convert the .c to .o

MAIN_OBJ = main.o 
HELPER_OBJ = helper1.o 

# exe_path is environment variabel and i set it by export exe_path=<path>
#

APP = ${exe_path}/main.exe

${APP}: ${OBJ}
	mkdir -p ${exe_path}
	gcc $^ -o $@

${MAIN_OBJ}: main.c 
	gcc -c $< -o $@

# var is environment variable
${var}: helper1.c
	gcc -c $^ -o $@