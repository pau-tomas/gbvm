.module trigger_18_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_18_interact = 255
.globl ___bank_trigger_18_interact

_trigger_18_interact::
        VM_LOCK

GBVM$trigger_18_interact$7baed7cf_0ac6_4128_b3fe_5c2ca461fde2$f8f027ef_b818_4038_9eda_0ac477facb41$trigger$87048e25_5900_4feb_9a3c_b5a8939e7d80$script = .
.globl GBVM$trigger_18_interact$7baed7cf_0ac6_4128_b3fe_5c2ca461fde2$f8f027ef_b818_4038_9eda_0ac477facb41$trigger$87048e25_5900_4feb_9a3c_b5a8939e7d80$script
                VM_PUSH_CONST           28              ; bit less than 45 degrees 
                VM_PUSH_CONST           100
                VM_SIN_SCALE            .ARG0, .ARG1, 6 
                VM_PUSH_CONST           100 
                VM_COS_SCALE            .ARG0, .ARG2, 6
                VM_RPN
                    .R_INT16    -360
                    .R_REF      .ARG1
                    .R_OPERATOR '*'
                    .R_INT16    220
                    .R_REF      .ARG0
                    .R_OPERATOR '*'
                    .R_STOP
                VM_SET_INT16            _plat_vel_y, .ARG1
                VM_SET_INT16            _plat_vel_x, .ARG0
        
                VM_POP                  5

        ; Stop Script
        VM_STOP
