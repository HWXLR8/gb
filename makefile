EMU = ../visualboyadvance-m/build/visualboyadvance-m
BIN = test.gb

all:
	rgbasm -L -o hello-world.o hello-world.asm
	rgblink -o $(BIN) hello-world.o
	rgbfix -v -p 0xFF $(BIN)

.PHONY: clean
clean:
	rm *.o *.gb

.PHONY: run
run: all
	$(EMU) $(BIN)
