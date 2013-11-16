LOCAL_PATH:= $(call my-dir)

mc_mcdisassembler_SRC_FILES := \
  Disassembler.cpp \
  EDDisassembler.cpp \
  EDInst.cpp \
  EDOperand.cpp \
  EDToken.cpp

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(mc_mcdisassembler_SRC_FILES)

LOCAL_MODULE := libLLVMMCDisassembler

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
