HEAP_SIZE  = 8388208
STACK_SIZE = 61800

PRODUCT = Game\ Name.pdx

# Locate the SDK
SDK = ${PLAYDATE_SDK_PATH}
ifeq ($(SDK),)
SDK = $(shell egrep '^\s*SDKRoot' ~/.Playdate/config | head -n 1 | cut -c9-)
endif
ifeq ($(SDK),)
$(error SDK path not found; set ENV value PLAYDATE_SDK_PATH)
endif

# ------------------------------------------------------------------------------
# Heap Guard toggle (0=off, 1=on). CLI overrides:
#   make              --> HEAP_GUARD=0 (default)
#   make release      --> HEAP_GUARD=0
#   make debug        --> HEAP_GUARD=1 (+ debug/asan flags)
#   make HEAP_GUARD=1 --> guard on for any target
# ------------------------------------------------------------------------------

HEAP_GUARD ?= 0

# Convenience targets that forward to 'all' but tweak flags first
.PHONY: debug release
debug: HEAP_GUARD=1
debug: EXTRA_DEBUG=1
debug: all

release: HEAP_GUARD=0
release: EXTRA_DEBUG=0
release: all

# Print build mode once (optional but handy)
$(info Heap guard: $(HEAP_GUARD))
$(info Extra debug: $(EXTRA_DEBUG))

# Core flags common to both simulator/device
USER_CFLAGS += -Wall -Wextra

# Turn heap guard code on when requested
ifeq ($(HEAP_GUARD),1)
  USER_CFLAGS += -DROXY_HEAP_GUARD
endif

# Extra debug tooling only when requested (e.g., `make debug`)
ifeq ($(EXTRA_DEBUG),1)
  # Symbols, disable optimizations for clean debugging, keep frame pointers
  USER_CFLAGS += -g -O0 -fno-omit-frame-pointer

  # Helpful diagnostics (safe everywhere)
  USER_CFLAGS += -Wcast-align=strict -fno-strict-aliasing

  # Stack protection; -fstack-usage is compile-time only and harmless on both
  USER_CFLAGS      += -fstack-protector-strong -fstack-usage
  SIMULATOR_CFLAGS += -fstack-protector-strong

  # AddressSanitizer for SIMULATOR only (fast feedback, not supported on device)
  SIMULATOR_CFLAGS  += -fsanitize=address
  SIMULATOR_LDFLAGS += -fsanitize=address
endif

# ------------------------------------------------------------------------------
# Source lookup paths
# ------------------------------------------------------------------------------

VPATH +=  \
          source/libraries/roxy \
          source/libraries/roxy/core/animations \
          source/libraries/roxy/core/sequences \
          source/libraries/roxy/core/sprites \
          source/libraries/roxy/core/tilemaps \
          source/libraries/roxy/core/transitions \
          source/libraries/roxy/utilities

# ------------------------------------------------------------------------------
# C sources
# ------------------------------------------------------------------------------

SRC =   \
        source/libraries/roxy/roxy.c \
        source/libraries/roxy/core/animations/roxy_animation.c \
        source/libraries/roxy/core/sequences/roxy_sequence.c \
        source/libraries/roxy/core/sprites/roxy_particles.c \
        source/libraries/roxy/core/tilemaps/roxy_tileRenderer.c \
        source/libraries/roxy/core/transitions/roxy_transition.c \
        source/libraries/roxy/utilities/roxy_ease.c \
        source/libraries/roxy/utilities/roxy_heapguard.c \
        source/libraries/roxy/utilities/roxy_math.c

include $(SDK)/C_API/buildsupport/common.mk
