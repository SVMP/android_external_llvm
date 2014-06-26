LOCAL_PATH:= $(call my-dir)

executionengine_SRC_FILES := \
  ExecutionEngine.cpp \
  ExecutionEngineBindings.cpp \
  RTDyldMemoryManager.cpp \
  TargetSelect.cpp

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(executionengine_SRC_FILES)

LOCAL_MODULE := libLLVMExecutionEngine

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
