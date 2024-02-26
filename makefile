EMU = ../visualboyadvance-m/build/visualboyadvance-m
BIN = game

all:
	rgbasm -L -o $(BIN).o $(BIN).asm
	rgblink -o $(BIN).gb  $(BIN).o
	rgbfix -v -p 0xFF $(BIN).gb

.PHONY: clean
clean:
	rm *.o *.gb

.PHONY: run
run: all
	$(EMU) $(BIN).gb
