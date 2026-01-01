# app.i: app.c		#app.i will not be created, as gcc -E send output to console
# 	gcc -E app.c

# app.exe: app.o
# 	gcc app.o -o app.exe

# app.o: app.s
# 	gcc -c app.s -o app.o

# app.s: app.c
# 	gcc -S app.c -o app.s




# clean:    #to delete the files
# 	rm -f main.i main.s main.o 

# main.exe: main.o
# 	gcc main.o -o main.exe

# main.o: main.s 
# 	gcc -c main.s -o main.o

# main.s: main.i
# 	gcc -S main.i -o main.s 

# main.i: app.c 
# 	gcc -E app.c -o main.i


# with variales
app: app.o
	gcc ${OBJS} -o app

.PHONY: remove		# phony is just a directive that define the target to run the associated
#command or else if not declare phony then if the clean file exist then make clean command 
#consider the clean as file
remove:
	rm -f ${filenames}
# store file names in varibale
OBJS:= app.o

filenames:= app.o app.i app.s 

#creating the object file
app.o: app.s 
	gcc -c app.s -o app.o

# creating the assembly file from preprocessor file
app.s: app.i
	gcc -S app.i -o app.s

# creating the preprocessor file
app.i: app.c 
	gcc -E app.c -o app.i