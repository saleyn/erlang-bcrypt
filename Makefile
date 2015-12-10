all: compile

REBAR := $(shell which rebar3 2>/dev/null)
REBAR := $(if $(REBAR),$(REBAR),rebar)

compile:
	@$(REBAR) $@

clean:
	@$(REBAR) $@ $(if $(all),--all)
	@rm -fr _build ebin

tests:
	@$(REBAR) eunit

run:
	@$(REBAR) shell
