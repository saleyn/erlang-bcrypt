DEPS = $(wildcard *.c) $(wildcard *.h)
INC  = $(shell erl -eval 'io:format("~s\n", [code:root_dir() ++ "/usr/include"]).' \
                   -s erlang halt -noshell -noinput)
all: ../priv ../priv/bcrypt_drv.so

clean:
	@rm -f ../priv/bcrypt_drv.so erl_crash.dump *.o

../priv/bcrypt_drv.so: $(DEPS)
	gcc -g -O2 -I. -I$(INC) -fPIC -shared -o $@ $^
