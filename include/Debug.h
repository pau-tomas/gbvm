#ifndef _DEBUG_H_INCLUDE
#define _DEBUG_H_INCLUDE

#ifdef VM_DEBUG_OUTPUT
    #include <gb/bgb_emu.h>
    #include <stdio.h>
    #define LOG(...) sprintf(debug_msg, __VA_ARGS__);BGB_MESSAGE2(BGB_ADD_DOLLARD(__LINE__), BGB_MAKE_LABEL(_##debug_msg));
    extern char debug_msg[100];
#else
    #define LOG(...) 
#endif

#endif
