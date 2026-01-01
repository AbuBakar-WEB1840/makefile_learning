# compiler
CC:= gcc

# flags
CFLAG:= -c
PPFLAG:= -E 
AFLAG:= -S
BUILD_DIR:= build
MAIN_EXE:= ${BUILD_DIR}/main.exe

INCLUDE := -Ihelper1 -Ihelper2

# object files
MAIN_OBJ:= main.o
HELPER_OBJ:= helper1/helper1.o
HELPER2_OBJ:= helper2/helper2.o

# helper folder dir
HELPER_DIR:= helper1/helper1 
#--------------
# Final linking
#--------------

${MAIN_EXE}: ${MAIN_OBJ} ${HELPER_OBJ} ${HELPER2_OBJ}
# 	rm -rf ${BUILD_DIR}
	mkdir -p ${BUILD_DIR}
	${CC} $^ -o $@

#------------------------
# main compilation stages
#------------------------

# object file stage
main.o: main.s 
	${CC} ${CFLAG} $^ -o $@

# asembly stage
main.s: main.i 
	${CC} ${AFLAG} $^ -o $@

# preprocessor stage
main.i: main.c 
	${CC} ${PPFLAG} ${INCLUDE} $< -o $@

#---------------------------
# helper1 compilation stages
#---------------------------


# object file stage
helper1/helper1.o: helper1/helper1.s
	${CC} ${CFLAG} $< -o $@

# asm stage
helper1/helper1.s: helper1/helper1.i 
	${CC} ${AFLAG} $< -o $@

# preprocessor stage
helper1/helper1.i: helper1/helper1.c 
	${CC} ${PPFLAG} $< -o $@

# ${HELPER_DIR}.o: ${HELPER_DIR}.s 
# 	${CC} ${CFLAG} $< -o $@

# # asm stage
# ${HELPER_DIR}.s: ${HELPER_DIR}.i 
# 	${CC} ${AFLAG} $< -o $@

# # preprocessor stage
# ${HELPER_DIR}.i: ${HELPER_DIR}.c 
# 	${CC} ${PPFLAG} $< -o $@

#---------------------------
# helper2 compilation stages
#---------------------------

helper2/helper2.o: helper2/helper2.c  
	${CC} ${CFLAG} $< -o $@

filenames:= main.o main.i main.s helper1/helper1.o helper1/helper1.i helper1/helper1.s
# clean the files
.PHONY: clean
clean:
	rm -f ${filenames}






