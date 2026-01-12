SOURCES:=$(filter-out src/_excluded/%,$(wildcard src/**/*.c))
OBJECTS:=$(patsubst %.c,obj/%.o,$(notdir $(SOURCES)))

include platforms/$(MAKE_HOST)/settings.mk

all: pdclib

pdclib: bin/$(ARTARGET)

clean:
	@$(RMDIR) obj/ bin/

%/:
	@$(MKDIR) $@

obj/%.o: src/*/%.c | obj/
	@$(CC) $(CFLAGS) -c $< -o $@

bin/$(ARTARGET): $(OBJECTS) | bin/
	@$(AR) $(ARFLAGS) bin/$(ARTARGET) $^
