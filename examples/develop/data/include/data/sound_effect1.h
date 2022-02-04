#ifndef __sound_effect1_INCLUDE__
#define __sound_effect1_INCLUDE__

#include <gbdk/platform.h>
#include <stdint.h>

#define MUTE_MASK_sound_effect1 0b00001001

BANKREF_EXTERN(sound_effect1)
extern const uint8_t sound_effect1[];
extern void __mute_mask_sound_effect1;

#endif
