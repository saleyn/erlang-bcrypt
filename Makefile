all: compile

REBAR := $(shell which rebar3 2>/dev/null)
REBAR := $(if $(REBAR),$(REBAR),rebar)

compile clean:
	@$(MAKE) -sC c_src
	@$(REBAR) $@

tests:
	@$(REBAR) eunit
