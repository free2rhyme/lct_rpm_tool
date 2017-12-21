
ifndef $(LCT_SVC_PRJ_ROOT)
	CURR_DIR_PATH     := $(strip $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST)))))
	LAST_DIR_PATH     := $(shell dirname $(CURR_DIR_PATH))

	SRC_POST_PATH     := $(lastword  $(subst src, ,$(CURR_DIR_PATH)))

	LCT_SVC_PRJ_ROOT  := $(firstword $(subst /src$(SRC_POST_PATH), ,$(CURR_DIR_PATH)))
	LCT_SVC_SRC_ROOT  := $(LCT_SVC_PRJ_ROOT)/src
endif

TARGET_TYPE       = app
SRC_SUFFIX        = cpp
INC_DIR           += 
SYS_LIB           += 
DEP_OBJ           +=
TARGET            := version-tool

include $(LCT_SVC_SRC_ROOT)/lct_common/common.mk
