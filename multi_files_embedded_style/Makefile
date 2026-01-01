# flags
CC:= gcc
CFLAG:= -c

# directories
BUILD_DIR:= build
TARGET:= app

# source files
SRC:=   \
		Src/main.c \
		MAX/max30102.c \
		IMU/imu.c

# object files
OBJ:= ${SRC:%.c=${BUILD_DIR}/%.o}

# includes
INCLUDE := \
			-IIMU \
			-IMAX \
			-ISrc


# all: $(OBJ)
all: $(BUILD_DIR)/${TARGET}.exe

$(BUILD_DIR)/${TARGET}.exe: $(OBJ)
	@mkdir -p $(BUILD_DIR)
	$(CC) $^ -o $@


$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAG) ${INCLUDE} $< -o $@

.PHONY:clean
clean:
	rm -rf ${BUILD_DIR}