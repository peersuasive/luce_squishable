all: luce.lua

LUCE_SOURCES ?= ../luce

squishy: $(LUCE_SOURCES)/Source/lua/luce.lua
	@./gen_squishy "$(LUCE_SOURCES)"

luce.lua: squishy
	@./squish

clean:
	@rm -f luce.lua

extraclean: clean
	@rm -f squishy
