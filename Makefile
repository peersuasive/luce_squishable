all: luce.lua

LUCE_SOURCES ?= ../luce

squishy: $(LUCE_SOURCES)/Source/lua/luce.lua
	@./gen_squishy "$(LUCE_SOURCES)"

luce.lua: squishy
	@./squish
	@ln -sf luce.lua oluce.lua

clean:
	@rm -f luce.lua oluce.lua

extraclean: clean
	@rm -f squishy
