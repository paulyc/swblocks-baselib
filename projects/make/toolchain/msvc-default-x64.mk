ifeq ($(TOOLCHAIN),vc14)
ifeq ($(BL_WIN_ARCH_IS_X64),1)
PATH     := $(MSVC)/VC/bin/amd64:$(MSVC)/VC/redist/x64/$(MSVCRTTAG):$(PATH)
else
PATH     := $(MSVC)/VC/bin/x86_amd64:$(MSVC)/VC/bin:$(MSVC)/VC/redist/x86/$(MSVCRTTAG):$(PATH)
endif
else
PATH     := $(MSVC)/VC/bin/x86_amd64:$(MSVC)/VC/bin:$(MSVC)/VC/redist/x86/$(MSVCRTTAG):$(PATH)
endif
LIBPATH  += $(MSVC)/VC/lib/amd64
LDFLAGS  += -machine:x64
