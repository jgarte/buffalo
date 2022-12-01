CC := clang
CFLAGS := -g -Wall -Wno-deprecated-declarations -Werror -fsanitize=address

all: buffalo

clean:
	rm -f buffalo

buffalo: buffalo.c gap_buffer.c gap_buffer.h ui.c ui.h buffalo_state.c buffalo_state.h
	$(CC) $(CFLAGS) -o buffalo buffalo.c buffalo_state.c gap_buffer.c ui.c -lncurses -lform -lpthread

format:
	@echo "Reformatting source code."
	@clang-format -i --style=file $(wildcard *.c) $(wildcard *.h)
	@echo "Done."

.PHONY: all clean format