LOCAL_PATH:= $(call my-dir)

mcjit_SRC_FILES := \
  MCJIT.cpp \
  MCJITMemoryManager.cpp

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(mcjit_SRC_FILES)

LOCAL_MODULE := libLLVMMCJIT

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
