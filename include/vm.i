; bytecode
; calling convention
;      args: big-endian
;      order: left-to-right (leftmost argument pushed first)

; exception ID's
EXCEPTION_RESET	        = 1
EXCEPTION_CHANGE_SCENE	= 2
EXCEPTION_SAVE          = 3
EXCEPTION_LOAD          = 4

; aliases
.ARG0 = -1
.ARG1 = -2
.ARG2 = -3
.ARG3 = -4
.ARG4 = -5
.ARG5 = -6
.ARG6 = -7
.ARG7 = -8
.ARG8 = -9
.ARG9 = -10
.ARG10 = -11
.ARG11 = -12
.ARG12 = -13
.ARG13 = -14
.ARG14 = -15
.ARG15 = -16
.ARG16 = -17

.PARAM0 = .ARG2
.PARAM1 = .ARG3
.PARAM2 = .ARG4
.PARAM3 = .ARG5
.PARAM4 = .ARG6
.PARAM5 = .ARG7
.PARAM6 = .ARG8
.PARAM7 = .ARG9
.PARAM8 = .ARG10
.PARAM9 = .ARG11
.PARAM10 = .ARG12
.PARAM11 = .ARG13
.PARAM12 = .ARG14
.PARAM13 = .ARG15
.PARAM14 = .ARG16
.PARAM15 = -18
.PARAM16 = -19


; Stops execution of context
OP_VM_STOP         = 0x00
.macro VM_STOP
        .db OP_VM_STOP
.endm

; Pushes immediate value `VAL` to the top of the VM stack.
OP_VM_PUSH_CONST   = 0x01
.macro VM_PUSH_CONST ARG0
        .db OP_VM_PUSH_CONST, #>ARG0, #<ARG0
.endm

; Removes the top `ARG0` values from VM stack.
OP_VM_POP          = 0x02
.macro VM_POP ARG0
        .db OP_VM_POP, #ARG0
.endm

; Calls by near address.
OP_VM_CALL         = 0x04
.macro VM_CALL ARG0
        .db OP_VM_CALL, #>ARG0, #<ARG0
.endm

; Returns from relative or near call.
OP_VM_RET          = 0x05
.macro VM_RET
        .db OP_VM_RET, 0
.endm

; Returns from relative or near call and clear `ARG0` arguments on stack.
.macro VM_RET_N N
        .db OP_VM_RET, #<N
.endm

; get byte or word by far pointer into variable
OP_VM_GET_FAR      = 0x06
.GET_BYTE          = 0
.GET_WORD          = 1
.macro VM_GET_FAR IDX, SIZE, BANK, ADDR
        .db OP_VM_GET_FAR, #>ADDR, #<ADDR, #<BANK, #<SIZE, #>IDX, #<IDX
.endm

; Loops by near address, counter is on stack, counter is removed on exit.
OP_VM_LOOP         = 0x07
.macro VM_LOOP IDX, LABEL, N
        .db OP_VM_LOOP, #<N, #>LABEL, #<LABEL, #>IDX, #<IDX
.endm

; Compares a variable or value on stack (`IDX`) with a set of values, and if equal jump to the specified label. Then, clear `N` arguments from stack.
; `SIZE` sets the number of values to compare, and each of the values are defined with:
;
;```
;  .dw A, LABEL
;```
;
; Where `A` is the value and `LABEL` the label to jump to.
OP_VM_SWITCH       = 0x08
.macro VM_SWITCH IDX, SIZE, N
        .db OP_VM_SWITCH, #<N, #<SIZE, #>IDX, #<IDX
.endm

; Jumps to near address.
OP_VM_JUMP         = 0x09
.macro VM_JUMP ARG0
        .db OP_VM_JUMP, #>ARG0, #<ARG0
.endm

; call far (inter-bank call)
OP_VM_CALL_FAR     = 0x0A
.macro VM_CALL_FAR ARG0, ARG1
        .db OP_VM_CALL_FAR, #>ARG1, #<ARG1, #<ARG0
.endm

; rerurn from far call
OP_VM_RET_FAR      = 0x0B
.macro VM_RET_FAR
        .db OP_VM_RET_FAR, 0
.endm

; rerurn from far call and remove N arguments on stack
.macro VM_RET_FAR_N N
        .db OP_VM_RET_FAR, #<N
.endm

; Invokes `BANK:ADDR` C function until it returns true.
; Valid functions are:
;  * `_wait_frames`
;  * `_camera_shake`
OP_VM_INVOKE       = 0x0D
.macro VM_INVOKE ARG0, ARG1, ARG2, ARG3
        .db OP_VM_INVOKE, #>ARG3, #<ARG3, #<ARG2, #>ARG1, #<ARG1, #<ARG0
.endm

; Spawns a thread in a separate context
OP_VM_BEGINTHREAD  = 0x0E
.macro VM_BEGINTHREAD BANK, THREADPROC, HTHREAD, NARGS
        .db OP_VM_BEGINTHREAD, #<NARGS, #>HTHREAD, #<HTHREAD, #>THREADPROC, #<THREADPROC, #<BANK
.endm


; Compares two variables or values on stack (`IDXA` and `IDXB`) using a `CONDITION`. If the comparision is true the execution will jump to `LABEL`, if false continue execution. Then, clear `N` arguments from stack.
OP_VM_IF           = 0x0F
.EQ                = 1
.LT                = 2
.LTE               = 3
.GT                = 4
.GTE               = 5
.NE                = 6
.AND               = 7
.OR                = 8
.macro VM_IF CONDITION, IDXA, IDXB, LABEL, N
        .db OP_VM_IF, #<N, #>LABEL, #<LABEL, #>IDXB, #<IDXB, #>IDXA, #<IDXA, #<CONDITION
.endm

; Pushes a value on VM stack or a global indirectly from an index in the variable on VM stack or in a global onto VM stack
OP_VM_PUSH_VALUE_IND = 0x10
.macro VM_PUSH_VALUE_IND ARG0
        .db OP_VM_PUSH_VALUE_IND, #>ARG0, #<ARG0
.endm

; pushes a value on VM stack or a global onto VM stack
OP_VM_PUSH_VALUE   = 0x11
.macro VM_PUSH_VALUE ARG0
        .db OP_VM_PUSH_VALUE, #>ARG0, #<ARG0
.endm

; Similar to pop
OP_VM_RESERVE      = 0x12
.macro VM_RESERVE ARG0
        .db OP_VM_RESERVE, #<ARG0
.endm

; Assigns a value on VM stack or a global to a value on VM stack or a global
OP_VM_SET         = 0x13
.macro VM_SET IDXA, IDXB
        .db OP_VM_SET, #>IDXB, #<IDXB, #>IDXA, #<IDXA
.endm

; Assigns a constant value `VAL` to a variable in the stack. A non-negative index `IDX` points to a global variable. A negative index points to the variable in the position relative to the top of the stack.
OP_VM_SET_CONST   = 0x14
.macro VM_SET_CONST IDX, VAL
        .db OP_VM_SET_CONST, #>VAL, #<VAL, #>IDX, #<IDX
.endm

; rpn calculator, returns result on VM stack
OP_VM_RPN          = 0x15
.ADD               = '+'
.SUB               = '-'
.MUL               = '*'
.DIV               = '/'
.MOD               = '%'
.B_AND             = '&'
.B_OR              = '|'
.B_XOR             = '^'
.B_NOT             = '~'
.ABS               = '@'
.MIN               = 'm'
.MAX               = 'M'
.ISQRT             = 'Q'
;.EQ                = 1
;.LT                = 2
;.LTE               = 3
;.GT                = 4
;.GTE               = 5
;.NE                = 6
;.AND               = 7
;.OR                = 8
.NOT               = 9
.macro VM_RPN
        .db OP_VM_RPN
.endm
.macro .R_INT8 ARG0
        .db -1, #<ARG0
.endm
.macro .R_INT16 ARG0
        .db -2
        .dw #ARG0
.endm
.macro .R_REF ARG0
        .db -3
        .dw #ARG0
.endm
.macro .R_REF_IND ARG0
        .db -4
        .dw #ARG0
.endm
.macro .R_REF_SET ARG0
        .db -5
        .dw #ARG0
.endm
.macro .R_OPERATOR ARG0
        .db ARG0
.endm
.macro .R_STOP
        .db 0
.endm

; Joins a thread
OP_VM_JOIN       = 0x16
.macro VM_JOIN IDX
        .db OP_VM_JOIN, #>IDX, #<IDX
.endm

; Kills a thread
OP_VM_TERMINATE  = 0x17
.macro VM_TERMINATE IDX
        .db OP_VM_TERMINATE, #>IDX, #<IDX
.endm

; Signals runner that context is in a waitable state
OP_VM_IDLE      = 0x18
.macro VM_IDLE
        .db OP_VM_IDLE
.endm

; Gets thread local variable. Non-negative index of `IDXB` points to a thread local variable (parameters passed into thread).
OP_VM_GET_TLOCAL= 0x19
.macro VM_GET_TLOCAL IDXA, IDXB
        .db OP_VM_GET_TLOCAL, #>IDXB, #<IDXB, #>IDXA, #<IDXA
.endm

; Compares a variable or value on stack (`IDXA`) with a constant (`B`) using a `CONDITION`. If the comparision is true the execution will jump to `LABEL`, if false continue execution. Then, clear `N` arguments from stack.
OP_VM_IF_CONST  = 0x1A
.macro VM_IF_CONST CONDITION, IDXA, B, LABEL, N
        .db OP_VM_IF_CONST, #<N, #>LABEL, #<LABEL, #>B, #<B, #>IDXA, #<IDXA, #<CONDITION
.endm

; Gets unsigned int8 from WRAM. `ADDR` is an address of unsigned int8
OP_VM_GET_UINT8 = 0x1B
.macro VM_GET_UINT8 IDXA, ADDR
        .db OP_VM_GET_UINT8, #>ADDR, #<ADDR, #>IDXA, #<IDXA
.endm

; Gets int8 from WRAM. `ADDR` is an address of int8
OP_VM_GET_INT8  = 0x1C
.macro VM_GET_INT8 IDXA, ADDR
        .db OP_VM_GET_INT8, #>ADDR, #<ADDR, #>IDXA, #<IDXA
.endm

; Gets int16 from WRAM. `ADDR` is an address of int16
OP_VM_GET_INT16  = 0x1D
.macro VM_GET_INT16 IDXA, ADDR
        .db OP_VM_GET_INT16, #>ADDR, #<ADDR, #>IDXA, #<IDXA
.endm

; Sets unsigned int8 in WRAM. `ADDR` is an address of unsigned int8
OP_VM_SET_UINT8 = 0x1E
.macro VM_SET_UINT8 ADDR, IDXA
        .db OP_VM_SET_UINT8, #>IDXA, #<IDXA, #>ADDR, #<ADDR
.endm

; Sets int8 in WRAM. `ADDR` is an address of int8
OP_VM_SET_INT8  = 0x1F
.macro VM_SET_INT8 ADDR, IDXA
        .db OP_VM_SET_INT8, #>IDXA, #<IDXA, #>ADDR, #<ADDR
.endm

; Sets int8 in WRAM. `ADDR` is an address of int16
OP_VM_SET_INT16  = 0x20
.macro VM_SET_INT16 ADDR, IDXA
        .db OP_VM_SET_INT16, #>IDXA, #<IDXA, #>ADDR, #<ADDR
.endm

; Sets int8 in WRAM. `ADDR` is an address of int8
OP_VM_SET_CONST_INT8 = 0x21
.macro VM_SET_CONST_INT8 ADDR, V
        .db OP_VM_SET_CONST_INT8, #<V, #>ADDR, #<ADDR
.endm

; Sets unsigned int8 in WRAM. `ADDR` is an address of int8
.macro VM_SET_CONST_UINT8 ADDR, V
        .db OP_VM_SET_CONST_INT8, #<V, #>ADDR, #<ADDR
.endm

; Sets int16 in WRAM. `ADDR` is an address of int16
OP_VM_SET_CONST_INT16 = 0x22
.macro VM_SET_CONST_INT16 ADDR, V
        .db OP_VM_SET_CONST_INT16, #>V, #<V, #>ADDR, #<ADDR
.endm

; Initializes RNG seed
OP_VM_INIT_RNG        = 0x23
.macro VM_INIT_RNG IDX
        .db OP_VM_INIT_RNG, #>IDX, #<IDX
.endm

; Initializes RNG seed
.macro VM_RANDOMIZE
        VM_RESERVE      2
        VM_GET_UINT8    .ARG0, _DIV_REG
        VM_GET_UINT8    .ARG1, _game_time
        VM_RPN
            .R_INT16    256
            .R_OPERATOR .MUL
            .R_OPERATOR .ADD
            .R_STOP
        VM_INIT_RNG     .ARG0
        VM_POP          1
.endm

; Returns random value between `MIN` and `MIN` + `LIMIT`
OP_VM_RAND            = 0x24
.macro VM_RAND IDX, MIN, LIMIT
        .db OP_VM_RAND
        .db #>(LIMIT | (LIMIT >> 1) | (LIMIT >> 2) | (LIMIT >> 3) | (LIMIT >> 4) | (LIMIT >> 5) | (LIMIT >> 6) | (LIMIT >> 7) | (LIMIT >> 8) | (LIMIT >> 9) | (LIMIT >> 10) | (LIMIT >> 11) | (LIMIT >> 12) | (LIMIT >> 13) | (LIMIT >> 14) | (LIMIT >> 15))
        .db #<(LIMIT | (LIMIT >> 1) | (LIMIT >> 2) | (LIMIT >> 3) | (LIMIT >> 4) | (LIMIT >> 5) | (LIMIT >> 6) | (LIMIT >> 7) | (LIMIT >> 8) | (LIMIT >> 9) | (LIMIT >> 10) | (LIMIT >> 11) | (LIMIT >> 12) | (LIMIT >> 13) | (LIMIT >> 14) | (LIMIT >> 15))
        .db #>LIMIT, #<LIMIT, #>MIN, #<MIN, #>IDX, #<IDX
.endm

; Locks VM
OP_VM_LOCK            = 0x25
.macro VM_LOCK
        .db OP_VM_LOCK
.endm

; Unlocks VM
OP_VM_UNLOCK          = 0x26
.macro VM_UNLOCK
        .db OP_VM_UNLOCK
.endm

; Raises an exception `CODE`.
;
; Valid values for `CODE` are:
;
; * `EXCEPTION_RESET`: Resets the device. Always called with `SIZE` equal to `0`.
; * `EXCEPTION_CHANGE_SCENE`: Changes to a new scene. See [Scene](#SCENE) for more details.
; * `EXCEPTION_SAVE`: Saves the state of the game. See [Save State](#SAVE-STATE) for more details.
; * `EXCEPTION_LOAD`: Loads the saved state of the game. See [Save State](#SAVE-STATE) for more details.
OP_VM_RAISE           = 0x27
.macro VM_RAISE CODE, SIZE
        .db OP_VM_RAISE, #<SIZE, #<CODE
.endm

; Assigns a value on VM stack or a global indirectly to a value on VM stack ar a global
OP_VM_SET_INDIRECT    = 0x28
.macro VM_SET_INDIRECT IDXA, IDXB
        .db OP_VM_SET_INDIRECT, #>IDXB, #<IDXB, #>IDXA, #<IDXA
.endm

; Assigns a value on VM stack or a global to a value on VM stack ar a global indirectly
OP_VM_GET_INDIRECT    = 0x29
.macro VM_GET_INDIRECT IDXA, IDXB
        .db OP_VM_GET_INDIRECT, #>IDXB, #<IDXB, #>IDXA, #<IDXA
.endm

; Terminates unit-testing immediately
OP_VM_TEST_TERMINATE  = 0x2A
.TEST_WAIT_VBL        = 1
.macro VM_TEST_TERMINATE FLAGS
        .db OP_VM_TEST_TERMINATE, #<FLAGS
.endm

; Checks that VM state was restored and reset the restore flag
OP_VM_POLL_LOADED     = 0x2B
.macro VM_POLL_LOADED IDX
        .db OP_VM_POLL_LOADED, #>IDX, #<IDX
.endm

; Translates `IDX` into absolute index and pushes result to VM stack
OP_VM_PUSH_REFERENCE  = 0x2C
.macro VM_PUSH_REFERENCE IDX
        .db OP_VM_PUSH_REFERENCE, #>IDX, #<IDX
.endm

; Calls native code by far pointer.
OP_VM_CALL_NATIVE     = 0x2D
.macro VM_CALL_NATIVE BANK, PTR
        .db OP_VM_CALL_NATIVE, #>PTR, #<PTR, #<BANK
.endm

; clear VM memory
OP_VM_MEMSET          = 0x76
.macro VM_MEMSET DEST, VALUE, COUNT
        .db OP_VM_MEMSET, #>COUNT, #<COUNT, #>VALUE, #<VALUE, #>DEST, #<DEST
.endm

; copy VM memory
OP_VM_MEMCPY          = 0x77
.macro VM_MEMCPY DEST, SOUR, COUNT
        .db OP_VM_MEMCPY, #>COUNT, #<COUNT, #>SOUR, #<SOUR, #>DEST, #<DEST
.endm

; --- engine-specific instructions ------------------------------------------

; --- LOAD/SAVE --------------------------------------
; To save or load the state of the game an `EXCEPTION_SAVE` or `EXCEPTION_LOAD` exception should be raised using `VM_RAISE`.

; There's three save slots (`0`, `1` and `2`) available to save. `.SAVE_SLOT n` is used to set which one will be used.

; For example, to save on slot `0`:

; ```
; VM_RAISE  	EXCEPTION_SAVE, 1
;   .SAVE_SLOT 0
; ```

; And to load from slot `0`:

; ```
; VM_RAISE  	EXCEPTION_LOAD, 1
;   .SAVE_SLOT 0
; ```

.macro .SAVE_SLOT SLOT
        .db #<SLOT
.endm
; Reads `COUNT` variables from save slot `SLOT` into variable `DEST` and puts the result of the operation into `RES`.
OP_VM_SAVE_PEEK         = 0x2E
.macro VM_SAVE_PEEK RES, DEST, SOUR, COUNT, SLOT
        .db OP_VM_SAVE_PEEK, #<SLOT, #>COUNT, #<COUNT, #>SOUR, #<SOUR, #>DEST, #<DEST, #>RES, #<RES
.endm

; Erases data in save slot `SLOT`.
OP_VM_SAVE_CLEAR         = 0x2F
.macro VM_SAVE_CLEAR SLOT
        .db OP_VM_SAVE_CLEAR, #<SLOT
.endm

; --- ACTOR ------------------------------------------

OP_VM_ACTOR_MOVE_TO             = 0x30
.ACTOR_ATTR_H_FIRST             = 0x01
.ACTOR_ATTR_CHECK_COLL          = 0x02
.ACTOR_ATTR_DIAGONAL            = 0x04
.macro VM_ACTOR_MOVE_TO IDX
        .db OP_VM_ACTOR_MOVE_TO, #>IDX, #<IDX
.endm

OP_VM_ACTOR_MOVE_CANCEL         = 0x88
.macro VM_ACTOR_MOVE_CANCEL ACTOR
        .db OP_VM_ACTOR_MOVE_CANCEL, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_ACTIVATE            = 0x31
.macro VM_ACTOR_ACTIVATE ACTOR
        .db OP_VM_ACTOR_ACTIVATE, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_DIR             = 0x32
.DIR_DOWN                       = 0
.DIR_RIGHT                      = 1
.DIR_UP                         = 2
.DIR_LEFT                       = 3
.macro VM_ACTOR_SET_DIR ACTOR, DIR
        .db OP_VM_ACTOR_SET_DIR, #<DIR, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_DEACTIVATE          = 0x33
.macro VM_ACTOR_DEACTIVATE ACTOR
        .db OP_VM_ACTOR_DEACTIVATE, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_ANIM            = 0x34
.macro VM_ACTOR_SET_ANIM ACTOR, ANIM
        .db OP_VM_ACTOR_SET_ANIM, #>ANIM, #<ANIM, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_POS             = 0x35
.macro VM_ACTOR_SET_POS IDX
        .db OP_VM_ACTOR_SET_POS, #>IDX, #<IDX
.endm

OP_VM_ACTOR_EMOTE               = 0x36
.macro VM_ACTOR_EMOTE ACTOR, AVATAR_BANK, AVATAR
        .db OP_VM_ACTOR_EMOTE, #>AVATAR, #<AVATAR, #<AVATAR_BANK, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_BOUNDS          = 0x37
.macro VM_ACTOR_SET_BOUNDS ACTOR, LEFT, RIGHT, TOP, BOTTOM
        .db OP_VM_ACTOR_SET_BOUNDS, #<BOTTOM, #<TOP, #<RIGHT, #<LEFT, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_SPRITESHEET     = 0x38
.macro VM_ACTOR_SET_SPRITESHEET ACTOR, SHEET_BANK, SHEET
        .db OP_VM_ACTOR_SET_SPRITESHEET, #>SHEET, #<SHEET, #<SHEET_BANK, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_SPRITESHEET_BY_REF     = 0x87
.macro VM_ACTOR_SET_SPRITESHEET_BY_REF ACTOR, FAR_PTR
        .db OP_VM_ACTOR_SET_SPRITESHEET_BY_REF, #>FAR_PTR, #<FAR_PTR, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_REPLACE_TILE        = 0x39
.macro VM_ACTOR_REPLACE_TILE ACTOR, TARGET_TILE, TILEDATA_BANK, TILEDATA, START, LEN
        .db OP_VM_ACTOR_REPLACE_TILE, #<LEN, #<START, #>TILEDATA, #<TILEDATA, #<TILEDATA_BANK, #<TARGET_TILE, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_GET_POS             = 0x3A
.macro VM_ACTOR_GET_POS IDX
        .db OP_VM_ACTOR_GET_POS, #>IDX, #<IDX
.endm

OP_VM_ACTOR_GET_DIR             = 0x3C
.macro VM_ACTOR_GET_DIR IDX, DEST
        .db OP_VM_ACTOR_GET_DIR, #>DEST, #<DEST, #>IDX, #<IDX
.endm

OP_VM_ACTOR_GET_ANGLE           = 0x86
.macro VM_ACTOR_GET_ANGLE IDX, DEST
        .db OP_VM_ACTOR_GET_ANGLE, #>DEST, #<DEST, #>IDX, #<IDX
.endm

OP_VM_ACTOR_SET_ANIM_TICK       = 0x3D
.macro VM_ACTOR_SET_ANIM_TICK ACTOR, TICK
        .db OP_VM_ACTOR_SET_ANIM_TICK, #<TICK, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_MOVE_SPEED      = 0x3E
.macro VM_ACTOR_SET_MOVE_SPEED ACTOR, SPEED
        .db OP_VM_ACTOR_SET_MOVE_SPEED, #<SPEED, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_FLAGS           = 0x3F
.ACTOR_FLAG_PINNED              = 0x01
.ACTOR_FLAG_HIDDEN              = 0x02
.ACTOR_FLAG_ANIM_NOLOOP         = 0x04
.ACTOR_FLAG_COLLISION           = 0x08
.ACTOR_FLAG_PERSISTENT          = 0x10
.macro VM_ACTOR_SET_FLAGS ACTOR, FLAGS, MASK
        .db OP_VM_ACTOR_SET_FLAGS, #<MASK, #<FLAGS, #>ACTOR, #<ACTOR
.endm

.ACTOR_VISIBLE                  = 0
.ACTOR_HIDDEN                   = 1
.macro VM_ACTOR_SET_HIDDEN ACTOR, HIDDEN
        VM_ACTOR_SET_FLAGS ACTOR, ^/(HIDDEN << 1)/, .ACTOR_FLAG_HIDDEN
.endm

.ACTOR_COLLISION_DISABLED       = 0
.ACTOR_COLLISION_ENABLED        = 1
.macro VM_ACTOR_SET_COLL_ENABLED ACTOR, ENABLED
        VM_ACTOR_SET_FLAGS ACTOR, ^/(ENABLED << 3)/, .ACTOR_FLAG_COLLISION
.endm

OP_VM_ACTOR_TERMINATE_UPDATE    = 0x74
.macro VM_ACTOR_TERMINATE_UPDATE ACTOR
        .db OP_VM_ACTOR_TERMINATE_UPDATE, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_ANIM_FRAME      = 0x75
.macro VM_ACTOR_SET_ANIM_FRAME ACTOR
        .db OP_VM_ACTOR_SET_ANIM_FRAME, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_GET_ANIM_FRAME      = 0x83
.macro VM_ACTOR_GET_ANIM_FRAME ACTOR
        .db OP_VM_ACTOR_GET_ANIM_FRAME, #>ACTOR, #<ACTOR
.endm

OP_VM_ACTOR_SET_ANIM_SET        = 0x84
.macro VM_ACTOR_SET_ANIM_SET ACTOR, OFFSET
        .db OP_VM_ACTOR_SET_ANIM_SET, #>OFFSET, #<OFFSET, #>ACTOR, #<ACTOR
.endm

; --- UI ------------------------------------------

;-- Loads a text in memory that contains `N` variables.
;
; The text string is defined using the `.asciz` command:
;
; ```
; VM_LOAD_TEXT   0
;   .asciz "text to render"
; ```
;
; #### Displaying variables:
; The following format specifiers allow to render variables as part of the text:
; * `%d`  Render a variable value
; * `%Dn` Render a variable value with `n` length
; * `%c`  Render a character based on the variable value

; The variables need to be defined before the `.asciz` call using `.dw` followed by a list of `N` variables in the order they'll be rendered.

; ```
; VM_LOAD_TEXT   3
;   .dw VAR_0, VAR_1, VAR_1
;   .asciz "Var 0 is %d, Var 1 is %d, Var 2 is %d"
; ```

; #### Escape Sequences:

; The text string can contain escape sequence that modify the behavior or apparence of the text.

; * `\001\x` Sets the text speed for the next characters in the current text. `x` is a value between `1` and `8` that represents the number of frames between the render of a character using `2^(x-2)`.
; * `\002\x` Sets the text font
; * `\003\x\y` Sets the position for the next character
; * `\004\x\y` Sets the position for the next character relative to the last character
; * `\005\` TBD
; * `\006\mask` Wait for input to continue to the next character.
; * `\007\n` Inverts the colors of the following characters.
; * `\n` Next line
; * `\r` Scroll text one line up
OP_VM_LOAD_TEXT         = 0x40
.macro VM_LOAD_TEXT ARG0
        .db OP_VM_LOAD_TEXT, #<ARG0
.endm

OP_VM_DISPLAY_TEXT      = 0x41
.DISPLAY_DEFAULT        = 0
.DISPLAY_PRESERVE_POS   = 1
.TEXT_TILE_CONTINUE     = 0xFF
;-- Renders the text in the defined layer (overlay, by default)
; @param OPTIONS Text rendering options:
;   .DISPLAY_DEFAULT      - default behavior
;   .DISPLAY_PRESERVE_POS - preserve text position
; @param START_TILE Tile number within the text rendering area to be rendered from; use .TEXT_TILE_CONTINUE to proceed from the current position
.macro VM_DISPLAY_TEXT_EX OPTIONS, START_TILE
        .db OP_VM_DISPLAY_TEXT, #<START_TILE, #<OPTIONS
.endm
;-- Renders the text in the defined layer (obsolete)
.macro VM_DISPLAY_TEXT
        VM_DISPLAY_TEXT_EX .DISPLAY_DEFAULT, .TEXT_TILE_CONTINUE
.endm

OP_VM_SWITCH_TEXT_LAYER = 0x85
.TEXT_LAYER_BKG         = 0
.TEXT_LAYER_WIN         = 1
;-- Changes the `LAYER` where the text will be rendered.
; @param LAYER
;   .TEXT_LAYER_BKG    - Render text in the background layer
;   .TEXT_LAYER_WIN    - Render text in the overlay layer
.macro VM_SWITCH_TEXT_LAYER LAYER
        .db OP_VM_SWITCH_TEXT_LAYER, #<LAYER
.endm

OP_VM_OVERLAY_SETPOS    = 0x42
;-- Set position of the overlay window in tiles
; @param X X-coordinate of the overlay window in tiles
; @param Y Y-coordinate of the overlay window in tiles
.macro VM_OVERLAY_SETPOS X, Y
        .db OP_VM_OVERLAY_SETPOS, #<Y, #<X
.endm

.MENU_CLOSED_Y          = 0x12
;-- Hide the overlay window
.macro VM_OVERLAY_HIDE
        VM_OVERLAY_SETPOS 0, .MENU_CLOSED_Y
.endm

OP_VM_OVERLAY_WAIT      = 0x44
.UI_NONMODAL            = 0
.UI_MODAL               = 1
.UI_WAIT_NONE           = 0
.UI_WAIT_WINDOW         = 1
.UI_WAIT_TEXT           = 2
.UI_WAIT_BTN_A          = 4
.UI_WAIT_BTN_B          = 8
.UI_WAIT_BTN_ANY        = 16
;-- Wait for the UI operation(s) completion
; @param IS_MODAL indicates whether the operation is modal: .UI_MODAL, or not: .UI_NONMODAL
; @param WAIT_FLAGS bit field, set of events to be waited for:
;   .UI_WAIT_NONE     - No wait
;   .UI_WAIT_WINDOW   - Wait until the window moved to its final position
;   .UI_WAIT_TEXT     - Wait until all the text finished rendering
;   .UI_WAIT_BTN_A    - Wait until "A" is pressed
;   .UI_WAIT_BTN_B    - Wait until "B" is pressed
;   .UI_WAIT_BTN_ANY  - Wait until any button is pressed
.macro VM_OVERLAY_WAIT IS_MODAL, WAIT_FLAGS
        .db OP_VM_OVERLAY_WAIT, #<WAIT_FLAGS, #<IS_MODAL
.endm

OP_VM_OVERLAY_MOVE_TO   = 0x45
.OVERLAY_IN_SPEED       = -1
.OVERLAY_TEXT_IN_SPEED  = -1    ; obsolete
.OVERLAY_OUT_SPEED      = -2
.OVERLAY_TEXT_OUT_SPEED = -2    ; obsolete
.OVERLAY_SPEED_INSTANT  = -3
;-- Animated move of the overlay window to the new position
; @param X X-coordinate of the new position
; @param Y Y-coordinate of the new position
; @param SPEED speed of the movement:
;   .OVERLAY_IN_SPEED       - default speed for appearing of the overlay
;   .OVERLAY_OUT_SPEED      - default speed for disappearing of the overlay
;   .OVERLAY_SPEED_INSTANT  - instant movement
.macro VM_OVERLAY_MOVE_TO X, Y, SPEED
        .db OP_VM_OVERLAY_MOVE_TO, #<SPEED, #<Y, #<X
.endm

OP_VM_OVERLAY_SHOW      = 0x46
.UI_COLOR_BLACK         = 0
.UI_COLOR_WHITE         = 1
.UI_DRAW_FRAME          = 1
.UI_AUTO_SCROLL         = 2
;-- Show the overlay window
; @param X X-coordinate of the new position
; @param Y Y-coordinate of the new position
; @param COLOR initial color of the overlay window:
;   .UI_COLOR_BLACK     - black overlay window
;   .UI_COLOR_WHITE     - white overlay window
; @param OPTIONS display options:
;   .UI_DRAW_FRAME      - draw overlay frame
;   .UI_AUTO_SCROLL     - set automatic text scroll area; text will be scrolled up when printing more lines than the overlay height.
.macro VM_OVERLAY_SHOW X, Y, COLOR, OPTIONS
        .db OP_VM_OVERLAY_SHOW, #<OPTIONS, #<COLOR, #<Y, #<X
.endm

OP_VM_OVERLAY_CLEAR     = 0x47
;-- Clear the rectangle area of the overlay window
; @param X X-Coordinate in tiles of the upper left corner
; @param Y Y-Coordinate in tiles of the upper left corner
; @param W Width in tiles of the rectangle area
; @param H Height in tiles of the rectangle area
; @param COLOR initial color of the overlay window:
;   .UI_COLOR_BLACK     - black overlay window
;   .UI_COLOR_WHITE     - white overlay window
; @param OPTIONS display options:
;   .UI_DRAW_FRAME      - draw overlay frame
;   .UI_AUTO_SCROLL     - set automatic text scroll area; text will be scrolled up when printing more lines than the overlay height.
.macro VM_OVERLAY_CLEAR X, Y, W, H, COLOR, OPTIONS
        .db OP_VM_OVERLAY_CLEAR, #<OPTIONS, #<COLOR, #<H, #<W, #<Y, #<X
.endm

OP_VM_CHOICE            = 0x48
.UI_MENU_STANDARD       = 0
.UI_MENU_LAST_0         = 1
.UI_MENU_CANCEL_B       = 2
.UI_MENU_SET_START      = 4
.macro .MENUITEM X, Y, iL, iR, iU, iD
        .db #<X, #<Y, #<iL, #<iR, #<iU, #<iD
.endm
;-- Execute menu
; @param IDX Variable that receive the result of the menu execution
; @param OPTIONS bit field, set of the possible menu options:
;   .UI_MENU_STANDARD    - default menu behavior
;   .UI_MENU_LAST_0      - last item return result of 0
;   .UI_MENU_CANCEL_B    - B button cancels the menu execution
;   .UI_MENU_SET_START   - if set IDX may contain the initial item index
; @param COUNT number of menu items
;
; instruction must be followed by the COUNT of .MENUITEM definitions:
; .MENUITEM X, Y, iL, iR, iU, iD
; where:
;   X - X-Coordinate of the cursor pointer in tiles
;   Y - Y-Coordinate of the cursor pointer in tiles
;   iL - menu item number, where the cursor must move, when you press LEFT
;   iR - menu item number, where the cursor must move, when you press RIGHT
;   iU - menu item number, where the cursor must move, when you press UP
;   iD - menu item number, where the cursor must move, when you press DOWN
.macro VM_CHOICE IDX, OPTIONS, COUNT
        .db OP_VM_CHOICE, #<COUNT, #<OPTIONS, #>IDX, #<IDX
.endm

OP_VM_SET_FONT          = 0x4B
;-- Sets active font
; @param FONT_INDEX the index of the font to be activated
.macro VM_SET_FONT FONT_INDEX
        .db OP_VM_SET_FONT, #<FONT_INDEX
.endm

.UI_PRINT_LEFTTORIGHT   = 0
.UI_PRINT_RIGHTTOLEFT   = 1
;-- Sets print direction
; @param DIRECTION direction of the text rendering:
;   .UI_PRINT_LEFTTORIGHT  - text is rendered from left to right (left justify)
;   .UI_PRINT_RIGHTTOLEFT  - text is rendered from right to left (right justify)
.macro VM_SET_PRINT_DIR DIRECTION
        VM_SET_CONST_UINT8 _vwf_direction, ^/DIRECTION & 1/
.endm

OP_VM_OVERLAY_SET_SUBMAP_EX = 0x4C
;-- Copies rectange area of the background map onto the overlay window
; @param PARAMS_IDX points to the beginning of the pseudo-structure that contains these members:
;    x       - X-Coordinate within the overlay window in tiles
;    y       - Y-Coordinate tithin the overlay window in tiles
;    w       - Width of the copied area in tiles
;    h       - Height of the copied area in tiles
;    scene_x - X-Coordinate within the background map in tiles
;    scene_y - Y-Coordinate within the background map in tiles
.macro VM_OVERLAY_SET_SUBMAP_EX PARAMS_IDX
        .db OP_VM_OVERLAY_SET_SUBMAP_EX, #>PARAMS_IDX, #<PARAMS_IDX
.endm

OP_VM_OVERLAY_SCROLL    = 0x4D
;-- Scrolls the rectangle area
; @param X X-Coordinate of the upper left corner in tiles
; @param Y Y-Coordinate of the upper left corner in tiles
; @param W Width of the area in tiles
; @param H Height of the area in tiles
; @param COLOR Color of the empty row of tiles that appear at the bottom of the scroll area
.macro VM_OVERLAY_SCROLL X, Y, W, H, COLOR
        .db OP_VM_OVERLAY_SCROLL, #<COLOR, #<H, #<W, #<Y, #<X
.endm

OP_VM_OVERLAY_SET_SCROLL = 0x4E
;-- Defines the scroll area for the overlay
; When the text overflows that area it'll scroll up by 1 row
; @param X X-Coordinate of the upper left corner in tiles
; @param Y Y-Coordinate of the upper left corner in tiles
; @param W Width of the area in tiles
; @param H Height of the area in tiles
; @param COLOR Color of the empty row of tiles that appear at the bottom of the scroll area
.macro VM_OVERLAY_SET_SCROLL X, Y, W, H, COLOR
        .db OP_VM_OVERLAY_SET_SCROLL, #<COLOR, #<H, #<W, #<Y, #<X
.endm

OP_VM_OVERLAY_SET_SUBMAP = 0x4F
;-- Copies a rectange area of tiles from the scene background
; @param X X-Coordinate within the overlay window of the upper left corner in tiles
; @param Y Y-Coordinate within the overlay window of the upper left corner in tiles
; @param W Width of the area in tiles
; @param H Height of the area in tiles
; @param SX X-Coordinate within the level background map
; @param SY Y-Coordinate within the level background map
.macro VM_OVERLAY_SET_SUBMAP X, Y, W, H, SX, SY
        .db OP_VM_OVERLAY_SET_SUBMAP, #<SY, #<SX, #<H, #<W, #<Y, #<X
.endm

; --- GAMEBOY ------------------------------------------

OP_VM_LOAD_TILES        = 0x49
.FRAME_TILE_ID          = 0xC0
.FRAME_LENGTH           = 9
.CURSOR_TILE_ID         = 0xCB
.CURSOR_LENGTH          = 1
.macro VM_LOAD_TILES ID, LEN, BANK, ADDR
        .db OP_VM_LOAD_TILES, #>ADDR, #<ADDR, #<BANK, #<LEN, #<ID
.endm

; Loads a new tileset into the background VRAM tiles starting at a given tile id (`IDX`).
OP_VM_LOAD_TILESET      = 0x50
.macro VM_LOAD_TILESET IDX, BANK, BKG
        .db OP_VM_LOAD_TILESET, #>BKG, #<BKG, #<BANK, #>IDX, #<IDX
.endm

OP_VM_SET_SPRITE_VISIBLE = 0x51
.SPRITES_SHOW           = 0
.SPRITES_HIDE           = 1
.macro VM_SET_SPRITE_VISIBLE MODE
        .db OP_VM_SET_SPRITE_VISIBLE, #<MODE
.endm

.macro VM_SHOW_SPRITES
        VM_SET_SPRITE_VISIBLE .SPRITES_SHOW
.endm
.macro VM_HIDE_SPRITES
        VM_SET_SPRITE_VISIBLE .SPRITES_HIDE
.endm

OP_VM_INPUT_WAIT        = 0x52
.macro VM_INPUT_WAIT MASK
        .db OP_VM_INPUT_WAIT, #<MASK
.endm

OP_VM_INPUT_ATTACH      = 0x53
.OVERRIDE_DEFAULT       = 0x80
.macro VM_INPUT_ATTACH MASK, SLOT
        .db OP_VM_INPUT_ATTACH, #<SLOT, #<MASK
.endm

OP_VM_INPUT_GET         = 0x54
.JOY0                   = 0
.JOY1                   = 1
.JOY2                   = 2
.JOY3                   = 3
.macro VM_INPUT_GET IDX, JOYID
        .db OP_VM_INPUT_GET, #<JOYID, #>IDX, #<IDX
.endm

OP_VM_CONTEXT_PREPARE   = 0x55
.macro VM_CONTEXT_PREPARE SLOT, BANK, ADDR
        .db OP_VM_CONTEXT_PREPARE, #>ADDR, #<ADDR, #<BANK, #<SLOT
.endm

OP_VM_OVERLAY_SET_MAP   = 0x56
.macro VM_OVERLAY_SET_MAP IDX, X_IDX, Y_IDX, BANK, BKG
        .db OP_VM_OVERLAY_SET_MAP, #>BKG, #<BKG, #<BANK, #>Y_IDX, #<Y_IDX, #>X_IDX, #<X_IDX, #>IDX, #<IDX
.endm

OP_VM_FADE              = 0x57
.FADE_NONMODAL          = 0x00
.FADE_MODAL             = 0x01
.FADE_OUT               = 0x00
.FADE_IN                = 0x02
.macro VM_FADE FLAGS
        .db OP_VM_FADE, #<FLAGS
.endm

.macro VM_FADE_IN IS_MODAL
        .if IS_MODAL
                VM_FADE ^/(.FADE_IN | .FADE_MODAL)/
        .else
                VM_FADE ^/(.FADE_IN)/
        .endif
.endm
.macro VM_FADE_OUT IS_MODAL
        .if IS_MODAL
                VM_FADE ^/(.FADE_OUT | .FADE_MODAL)/
        .else
                VM_FADE ^/(.FADE_OUT)/
        .endif
.endm

; Load script into timer context
OP_VM_TIMER_PREPARE     = 0x58
.macro VM_TIMER_PREPARE TIMER, BANK, ADDR
        .db OP_VM_TIMER_PREPARE, #>ADDR, #<ADDR, #<BANK, #<TIMER
.endm

; Start a timer calling once every `INTERVAL` * 16 frames
OP_VM_TIMER_SET         = 0x59
.macro VM_TIMER_SET TIMER, INTERVAL
        .db OP_VM_TIMER_SET, #<INTERVAL, #<TIMER
.endm

; Stop a timer
OP_VM_TIMER_STOP         = 0x72
.macro VM_TIMER_STOP TIMER
        .db OP_VM_TIMER_STOP, #<TIMER
.endm

; Reset a timers countdown to 0
OP_VM_TIMER_RESET         = 0x73
.macro VM_TIMER_RESET TIMER
        .db OP_VM_TIMER_RESET, #<TIMER
.endm

OP_VM_GET_TILE_XY       = 0x5A
.macro VM_GET_TILE_XY TILE_IDX, X_IDX, Y_IDX
        .db OP_VM_GET_TILE_XY, #>Y_IDX, #<Y_IDX, #>X_IDX, #<X_IDX, #>TILE_IDX, #<TILE_IDX
.endm

OP_VM_REPLACE_TILE      = 0x5B
.macro VM_REPLACE_TILE TARGET_TILE_IDX, TILEDATA_BANK, TILEDATA, START_IDX, LEN
        .db OP_VM_REPLACE_TILE, #<LEN, #>START_IDX, #<START_IDX, #>TILEDATA, #<TILEDATA, #<TILEDATA_BANK, #>TARGET_TILE_IDX, #<TARGET_TILE_IDX
.endm

OP_VM_POLL              = 0x5C
.macro VM_POLL IDX_EVENT, IDX_VALUE, MASK
        .db OP_VM_POLL, #<MASK, #>IDX_VALUE, #<IDX_VALUE, #>IDX_EVENT, #<IDX_EVENT
.endm

OP_VM_SET_SPRITE_MODE   = 0x5D
.MODE_8X8               = 0
.MODE_8X16              = 1
.macro VM_SET_SPRITE_MODE MODE
        .db OP_VM_SET_SPRITE_MODE, #<MODE
.endm

OP_VM_REPLACE_TILE_XY   = 0x5E
.macro VM_REPLACE_TILE_XY X, Y, TILEDATA_BANK, TILEDATA, START_IDX
        .db OP_VM_REPLACE_TILE_XY, #>START_IDX, #<START_IDX, #>TILEDATA, #<TILEDATA, #<TILEDATA_BANK, #<Y, #<X
.endm

OP_VM_INPUT_DETACH      = 0x5F
.macro VM_INPUT_DETACH MASK
        .db OP_VM_INPUT_DETACH, #<MASK
.endm

; --- MUSIC AND SOUND -------------------------------

; Starts playing of music track
OP_VM_MUSIC_PLAY        = 0x60
.MUSIC_NO_LOOP          = 0
.MUSIC_LOOP             = 1
.macro VM_MUSIC_PLAY TRACK_BANK, TRACK, LOOP
        .db OP_VM_MUSIC_PLAY, #<LOOP, #>TRACK, #<TRACK, #<TRACK_BANK
.endm

; Stops playing of music track
OP_VM_MUSIC_STOP        = 0x61
.macro VM_MUSIC_STOP
        .db OP_VM_MUSIC_STOP
.endm

; Mutes/unmutes channels using `MASK`. The 4 lower bits of the mask represent the 4 audio channels.

; | `Mask`   | Channel 1 | Channel 2 | Channel 3 | Channel 4 |
; | -------- | --------- | --------- | --------- | --------- |
; | `0b0000` | Muted     | Muted     | Muted     | Muted     |
; | `0b0001` | Muted     | Muted     | Muted     | Not Muted |
; | `0b0010` | Muted     | Muted     | Not Muted | Muted     |
; | `0b0011` | Muted     | Muted     | Not Muted | Not Muted |
; | `0b0100` | Muted     | Not Muted | Muted     | Muted     |
; | `0b0101` | Muted     | Not Muted | Muted     | Not Muted |
; | `0b0110` | Muted     | Not Muted | Not Muted | Muted     |
; | `0b0111` | Muted     | Not Muted | Not Muted | Not Muted |
; | `0b1000` | Not Muted | Muted     | Muted     | Muted     |
; | `0b1001` | Not Muted | Muted     | Muted     | Not Muted |
; | `0b1010` | Not Muted | Muted     | Not Muted | Muted     |
; | `0b1011` | Not Muted | Muted     | Not Muted | Not Muted |
; | `0b1100` | Not Muted | Not Muted | Muted     | Muted     |
; | `0b1101` | Not Muted | Not Muted | Muted     | Not Muted |
; | `0b1110` | Not Muted | Not Muted | Not Muted | Muted     |
; | `0b1111` | Not Muted | Not Muted | Not Muted | Not Muted |
OP_VM_MUSIC_MUTE        = 0x62
.macro VM_MUSIC_MUTE MASK
        .db OP_VM_MUSIC_MUTE, #<MASK
.endm

; Sets master volume to `VOL`
OP_VM_SOUND_MASTERVOL   = 0x63
.macro VM_SOUND_MASTERVOL VOL
        .db OP_VM_SOUND_MASTERVOL, #<VOL
.endm

; Attach script to music event
OP_VM_MUSIC_ROUTINE     = 0x65
.macro VM_MUSIC_ROUTINE ROUTINE, BANK, ADDR
        .db OP_VM_MUSIC_ROUTINE, #>ADDR, #<ADDR, #<BANK, #<ROUTINE
.endm

; Play a sound effect asset
OP_VM_SFX_PLAY          = 0x66
.SFX_PRIORITY_MINIMAL   = 0
.SFX_PRIORITY_NORMAL    = 4
.SFX_PRIORITY_HIGH      = 8
.macro VM_SFX_PLAY BANK, ADDR, MASK, PRIO
        .db OP_VM_SFX_PLAY, #<PRIO, #<MASK, #>ADDR, #<ADDR, #<BANK
.endm

; Sets music playback position
OP_VM_MUSIC_SETPOS      = 0x67
.macro VM_MUSIC_SETPOS PATTERN, ROW
        .db OP_VM_MUSIC_SETPOS, #<ROW, #<PATTERN
.endm

; --- SCENES -------------------------------

; To load a new scene raise a `EXCEPTION_CHANGE_SCENE` exception using `VM_RAISE`.

; The scene to load is defined using `IMPORT_FAR_PTR_DATA` followed by the scene symbol.

; For example to load `scene 10`:

; ```
; VM_RAISE  	EXCEPTION_CHANGE_SCENE, 3
;   IMPORT_FAR_PTR_DATA _scene_10
; ```

; Pushes the current scene to the scene stack.
OP_VM_SCENE_PUSH        = 0x68
.macro VM_SCENE_PUSH
        .db OP_VM_SCENE_PUSH
.endm

; Removes the last scene from the scene stack an loads it.
OP_VM_SCENE_POP         = 0x69
.macro VM_SCENE_POP
        .db OP_VM_SCENE_POP
.endm

; Removes all scenes from the scene stack and loads the first one.
OP_VM_SCENE_POP_ALL     = 0x6A
.macro VM_SCENE_POP_ALL
        .db OP_VM_SCENE_POP_ALL
.endm

; Removes all the scenes from the scene stack.
OP_VM_SCENE_STACK_RESET = 0x6B
.macro VM_SCENE_STACK_RESET
        .db OP_VM_SCENE_STACK_RESET
.endm

; --- SIO ----------------------------------

OP_VM_SIO_SET_MODE      = 0x6C
.SIO_MODE_NONE          = 0
.SIO_MODE_MASTER        = 1
.SIO_MODE_SLAVE         = 2
.macro VM_SIO_SET_MODE MODE
        .db OP_VM_SIO_SET_MODE, #<MODE
.endm

OP_VM_SIO_EXCHANGE      = 0x6D
.macro VM_SIO_EXCHANGE SOUR, DEST, SIZE
        .db OP_VM_SIO_EXCHANGE, #<(SIZE << 1), #>DEST, #<DEST, #>SOUR, #<SOUR
.endm

; --- CAMERA -------------------------------

; Moves the camera to a position set in the stack at a given `SPEED` and configures the lock status of the camera.
OP_VM_CAMERA_MOVE_TO     = 0x70
.macro VM_CAMERA_MOVE_TO IDX, SPEED, AFTER_LOCK
        .db OP_VM_CAMERA_MOVE_TO, #<AFTER_LOCK, #<SPEED, #>IDX, #<IDX
.endm

.CAMERA_LOCK             = 0b00000011
.CAMERA_LOCK_X           = 0b00000001
.CAMERA_LOCK_Y           = 0b00000010
.CAMERA_UNLOCK           = 0b00000000

OP_VM_CAMERA_SET_POS     = 0x71
.macro VM_CAMERA_SET_POS IDX
        .db OP_VM_CAMERA_SET_POS, #>IDX, #<IDX
.endm

.CAMERA_SHAKE_X          = 1
.CAMERA_SHAKE_Y          = 2

; --- RTC ----------------------------------

; Latch RTC value for access
OP_VM_RTC_LATCH          = 0x78
.macro VM_RTC_LATCH
        .db OP_VM_RTC_LATCH
.endm

; Read RTC value
OP_VM_RTC_GET            = 0x79
.RTC_SECONDS             = 0x00
.RTC_MINUTES             = 0x01
.RTC_HOURS               = 0x02
.RTC_DAYS                = 0x03
.macro VM_RTC_GET IDX, WHAT
        .db OP_VM_RTC_GET, #<WHAT, #>IDX, #<IDX
.endm

; Write RTC value
OP_VM_RTC_SET            = 0x7A
.macro VM_RTC_SET IDX, WHAT
        .db OP_VM_RTC_SET, #<WHAT, #>IDX, #<IDX
.endm

; Start or stop RTC
OP_VM_RTC_START          = 0x7B
.RTC_STOP                = 0
.RTC_START               = 1
.macro VM_RTC_START START
        .db OP_VM_RTC_START, #<START
.endm

; --- COLOR ---------------------------------------

OP_VM_LOAD_PALETTE       = 0x7C
.PALETTE_COMMIT          = 1
.PALETTE_BKG             = 2
.PALETTE_SPRITE          = 4
.macro .DMG_PAL COL1, COL2, COL3, COL4
        .dw #((COL1 & 0x03) | ((COL2 & 0x03) << 2) | ((COL3 & 0x03) << 4) | ((COL4 & 0x03) << 6))
        .dw 0,0,0
.endm
.macro .CGB_PAL R1,G1,B1 R2,G2,B2 R3,G3,B3 R4,G4,B4
        .dw #((R1 & 0x1F) | ((G1 & 0x1F) << 5) | ((B1 & 0x1F) << 10))
        .dw #((R2 & 0x1F) | ((G2 & 0x1F) << 5) | ((B2 & 0x1F) << 10))
        .dw #((R3 & 0x1F) | ((G3 & 0x1F) << 5) | ((B3 & 0x1F) << 10))
        .dw #((R4 & 0x1F) | ((G4 & 0x1F) << 5) | ((B4 & 0x1F) << 10))
.endm

.macro VM_LOAD_PALETTE MASK, OPTIONS
        .db OP_VM_LOAD_PALETTE, #<OPTIONS, #<MASK
.endm

; --- SGB -----------------------------------------

; Transfers SGB packet(s). Data of variable length is placed after this instruction, for example:
;
; ```
; VM_SGB_TRANSFER
;     .db ((0x04 << 3) | 1), 1, 0x07, ((0x01 << 4) | (0x02 << 2) | 0x03), 5,5, 10,10,  0, 0, 0, 0, 0, 0, 0, 0 ; ATTR_BLK packet
; ```
;
; SGB packet size is a multiple of 16 bytes and encoded in the packet itself.
OP_VM_SGB_TRANSFER       = 0x7E
.macro VM_SGB_TRANSFER
        .db OP_VM_SGB_TRANSFER
.endm

; --- RUMBLE --------------------------------------

; Enables or disables rumble on a cart that has that function.
OP_VM_RUMBLE             = 0x7F
.macro VM_RUMBLE ENABLE
        .db OP_VM_RUMBLE, #<ENABLE
.endm

; --- PROJECTILES ---------------------------------

OP_VM_PROJECTILE_LAUNCH  = 0x80
.PROJECTILE_ANIM_ONCE    = 0x01
.PROJECTILE_STRONG       = 0x02
.macro VM_PROJECTILE_LAUNCH TYPE, IDX
        .db OP_VM_PROJECTILE_LAUNCH, #>IDX, #<IDX, #<TYPE
.endm

OP_VM_PROJECTILE_LOAD_TYPE = 0x81
.macro VM_PROJECTILE_LOAD_TYPE TYPE, BANK, ADDR
        .db OP_VM_PROJECTILE_LOAD_TYPE, #>ADDR, #<ADDR, #<BANK, #<TYPE
.endm

; --- MATH -------------------------------------------

OP_VM_SIN_SCALE         = 0x89
.macro VM_SIN_SCALE IDX, IDX_ANGLE, SCALE
        .db OP_VM_SIN_SCALE, #<SCALE, #>IDX_ANGLE, #<IDX_ANGLE, #>IDX, #<IDX
.endm

OP_VM_COS_SCALE         = 0x8A
.macro VM_COS_SCALE IDX, IDX_ANGLE, SCALE
        .db OP_VM_COS_SCALE, #<SCALE, #>IDX_ANGLE, #<IDX_ANGLE, #>IDX, #<IDX
.endm

; --- TEXT SOUND -------------------------------------

; Set sound effect asset for text
OP_VM_SET_TEXT_SOUND    = 0x8B
.macro VM_SET_TEXT_SOUND BANK, ADDR, MASK
        .db OP_VM_SET_TEXT_SOUND, #<MASK, #>ADDR, #<ADDR, #<BANK
.endm

; --- GB PRINTER -------------------------------------

; Detect printer
OP_VM_PRINTER_DETECT    = 0x8C
.macro VM_PRINTER_DETECT ERROR, DELAY
        .db OP_VM_PRINTER_DETECT, #<DELAY, #>ERROR, #<ERROR
.endm

; Print up to HEIGHT rows of the overlay window (must be multiple of 2)
OP_VM_PRINT_OVERLAY     = 0x8D
.macro VM_PRINT_OVERLAY ERROR, START, HEIGHT, MARGIN
        .db OP_VM_PRINT_OVERLAY, #<MARGIN, #<HEIGHT, #<START, #>ERROR, #<ERROR
.endm
