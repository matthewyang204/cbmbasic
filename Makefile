OBJS=cbmbasic.o runtime.o plugin.o console.o
CFLAGS=-Wall -O3

all: cbmbasic

cbmbasic: ext $(OBJS)
	$(CC) -o cbmbasic $(OBJS)

ext:
	./fetchext

clean:
	rm -f $(OBJS) cbmbasic

