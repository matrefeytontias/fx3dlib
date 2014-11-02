include .knightos/variables.make

ALL_TARGETS:=$(LIB)fx3dlib $(INCLUDE)fx3dlib.inc

$(LIB)fx3dlib: fx3dlib.asm
	mkdir -p $(LIB)
	$(AS) $(ASFLAGS) --listing $(OUT)fx3dlib.list fx3dlib.asm $(LIB)fx3dlib

$(INC)fx3dlib.inc: fx3dlib.inc
	mkdir -p $(INC)
	cp fx3dlib.inc $(INC)

include .knightos/sdk.make
