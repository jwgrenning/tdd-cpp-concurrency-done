#Set this to @ to keep the makefile quiet
SILENCE = @

#---- Outputs ----#
COMPONENT_NAME = Concurrency

#--- Inputs ----#
PROJECT_HOME_DIR = .
ifeq "$(CPPUTEST_HOME)" ""
    CPPUTEST_HOME = ../cpputest
endif
CPP_PLATFORM = Gcc

INCLUDE_DIRS =\
  .\
  include\
  include/*\
  $(CPPUTEST_HOME)/include/

SRC_DIRS = \
	src/*\
	platforms/posix

TEST_SRC_DIRS = \
	tests \
	tests/*

MOCKS_SRC_DIRS = \
	mocks

CPPUTEST_MEMLEAK_DETECTOR_NEW_MACRO_FILE = -include tests/MyMemoryLeakDetectorNewMacrosFile.h

include $(CPPUTEST_HOME)/build/MakefileWorker.mk
