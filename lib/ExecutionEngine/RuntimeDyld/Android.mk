LOCAL_PATH:= $(call my-dir)

runtimedyld_SRC_FILES := \
  GDBRegistrar.cpp \
  RuntimeDyld.cpp \
  RuntimeDyldELF.cpp \
  RuntimeDyldMachO.cpp

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(runtimedyld_SRC_FILES)

LOCAL_MODULE := libLLVMRuntimeDyld

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
