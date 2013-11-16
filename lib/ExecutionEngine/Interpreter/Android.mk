LOCAL_PATH:= $(call my-dir)

interpreter_SRC_FILES := \
  ExternalFunctions.cpp \

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(interpreter_SRC_FILES)

LOCAL_MODULE := libLLVMInterpreter

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_STATIC_LIBRARY)
