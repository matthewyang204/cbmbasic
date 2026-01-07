OBJS=cbmbasic.o runtime.o plugin.o console.o
CFLAGS=-Wall -O3

all: cbmbasic

cbmbasic: ext $(OBJS)
	$(CC) -o cbmbasic $(OBJS)

ext:
	git clone https://github.com/matthewyang204/cbmbasic-extensions.git ext

updateExt:
	rm -rf ext
	$(MAKE) ext

clean:
	rm -f $(OBJS) cbmbasic

.PHONY: updateExt
