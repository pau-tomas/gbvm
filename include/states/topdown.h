#ifndef STATE_TOP_DOWN_H
#define STATE_TOP_DOWN_H

#include <gb/gb.h>

void topdown_init(void) BANKED;
void topdown_update(void) BANKED;

extern UBYTE topdown_grid;

#endif
