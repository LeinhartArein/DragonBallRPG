; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = b,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = b,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a
time = 1

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "2XQCF_x"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "Torpedos"
command = ~D, DB, B, c
time = 20

[Command]
name = "Torpedos Lanzamiento"
command = ~D, DF, F, c
time = 20

[Command]
name = "meteor"
command = ~DF, y
time = 30

[Command]
name = "hyper kamehameha"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "Hyper 2"
command = ~D, DF, B, a
time = 30

[Command]
name = "fireball"
command = ~D, F, c
time = 30

[Command]
name = "2XQCB_x"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "2XQCB_y"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "Volleyball"
command = ~DF, x
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "Ki Explosion"
command = ~D, F, D, F, b

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "teleporthit"
command = b+z

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "holddown_z"
command = /$D,z
time = 1

[command]
name = "superjump"
command = ~$D,U
time = 15
[command]
name = "superjumpF"
command = ~$D,UF
time = 15
[command]
name = "superjumpB"
command = ~$D,UB
time = 15

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdc"
command = /c
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
;[State -1, Smash Kung Fu Upper]
;type = ChangeState
;value = 3050
;triggerall = command = "SmashKFUpper"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3050,3100)
;trigger2 = movecontact

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;Hyper kamehameha
[State -1, hyper kamehameha]
type = ChangeState
value = 3000
triggerall = command = "hyper kamehameha"
triggerall = power >= 3000
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Hyper 2
[State -1, Hyper 2]
type = ChangeState
value = 3501
triggerall = command = "Hyper 2"
triggerall = power >= 500
trigger1 = var(1) 

;---------------------------------------------------------------------------
;Hyper 3
[State -1, Hyper 3]
type = ChangeState
value = 2024
triggerall = command = "Ki Explosion"
triggerall = power >= 500
trigger1 = var(1)

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Super Jump Extracted on Vegeta by Duende Macabro

[State -1, Superjump]
type = changestate
triggerall = command = "superjump" && statetype!= A
trigger1 = ctrl = 1
value = 55

[State -1, SuperjumpF]
type=changestate
triggerall = command = "superjumpF" && statetype != A
trigger1 = ctrl = 1
value = 57

[State -1,SuperjumpB]
type = changestate
triggerall = command = "superjumpB" && statetype != A
trigger1 = ctrl = 1
value = 59

;----------------------------------------------------------------------------
; Ki Charge
[State -1, Charge]
type = ChangeState
value = 700
triggerall = statetype = s
triggerall = power < 3000
triggerall = command = "holdz"
triggerall = command = "holdc"
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 400) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

[State -1, combo punch 1]
type = ChangeState
value = 501
triggerall = command = "a"
triggerall = stateno = 200
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 3196) && (Movecontact)

[State -1, combo punch 2]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = stateno = 501
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 220) && (Movecontact)
trigger4 = (stateno = 230) && (Movecontact)
trigger5 = (stateno = 240) && (Movecontact)
trigger6 = (stateno = 400) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

[State -1, combo punch 3]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = stateno = 210
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 3196) && (Movecontact)
trigger14 = (stateno = 897) && (Movecontact)

[State -1, combo punch 4]
type = ChangeState
value = 3196
triggerall = command = "z"
triggerall = stateno = 440
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

[State -1, combo punch 4]
type = ChangeState
value = 897
triggerall = command = "c"
triggerall = stateno = 3196
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 3196) && (Movecontact)

;----------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 230) && (Movecontact)
trigger4 = (stateno = 400) && (Movecontact)
trigger5 = (stateno = 430) && (Movecontact)
trigger6 = (stateno = 220) && (Movecontact)
trigger7 = (stateno = 240) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

;---------------------------------------------------------------------------
[State -1, Run Down kick]
type = changestate
triggerall = command = "b" && stateno = 100 && pos y = 0
trigger1 = ctrl && statetype = S
value = 1201

;----------------------------------------------------------------------------
[State -1, Teleport Back Strong Kick]
type = ChangeState
value = 252
trigger1 = command = "a" && command = "holdfwd"
trigger1 = stateno = 100 && pos y = 0 && p2bodydist x < 60

[State -1, COMBO FLY PUNCH A]
type = ChangeState
value = 1110
triggerall = command = "a"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]
;---------------------------------------------------------------------------
;Heavy Blow
;立ち強キック
[State -1, Heavy Blow]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 230) && (Movecontact)
trigger5 = (stateno = 240) && (Movecontact)
trigger6 = (stateno = 400) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 240) && (Movecontact)
trigger6 = (stateno = 400) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 3196) && (Movecontact)
trigger11 = (stateno = 897) && (Movecontact)

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 400) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 3196) && (Movecontact)
trigger11 = (stateno = 897) && (Movecontact)

[State -1, combo kick 1]
type = ChangeState
value = 501
triggerall = command = "a"
triggerall = stateno = 230
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)


[State -1, combo kick 3]
type = ChangeState
value = 502
triggerall = command = "a"
triggerall = stateno = 501
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 501) && (Movecontact)

[State -1, combo kick 4]
type = ChangeState
value = 226
triggerall = command = "b"
triggerall = stateno = 502
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 502) && (Movecontact)

[State -1, combo kick 5]
type = ChangeState
value = 227
triggerall = command = "x"
triggerall = stateno = 226
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 226) && (Movecontact)
;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 410) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 430) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 500) && (Movecontact)
trigger10 = (stateno = 501) && (Movecontact)
trigger11 = (stateno = 502) && (Movecontact)
trigger12 = (stateno = 3196) && (Movecontact)
trigger13 = (stateno = 897) && (Movecontact)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && (Movecontact)
trigger3 = (stateno = 210) && (Movecontact)
trigger4 = (stateno = 220) && (Movecontact)
trigger5 = (stateno = 230) && (Movecontact)
trigger6 = (stateno = 240) && (Movecontact)
trigger7 = (stateno = 400) && (Movecontact)
trigger8 = (stateno = 410) && (Movecontact)
trigger9 = (stateno = 430) && (Movecontact)
trigger10 = (stateno = 500) && (Movecontact)
trigger11 = (stateno = 501) && (Movecontact)
trigger12 = (stateno = 502) && (Movecontact)
trigger13 = (stateno = 3196) && (Movecontact)
trigger14 = (stateno = 897) && (Movecontact)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 610) && (Movecontact)
trigger5 = (stateno = 630) && (Movecontact)
trigger6 = (stateno = 640) && (Movecontact)
trigger7 = (stateno = 1110) && (Movecontact)

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger11 = (stateno = 630) && (Movecontact)
trigger12 = (stateno = 640) && (Movecontact)
trigger13 = (stateno = 600) && (Movecontact)

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 600) && (Movecontact)
trigger5 = (stateno = 610) && (Movecontact)
trigger6 = (stateno = 640) && (Movecontact)

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno= 610
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 600) && (Movecontact)
trigger5 = (stateno = 610) && (Movecontact)
trigger6 = (stateno = 630) && (Movecontact)

;---------------------------------------------------------------------------
;Fireball 2
[State -1, Fireball 2]
type = ChangeState
value = 1501
triggerall = var(20) >= 0
triggerall = command = "fireball"
trigger1 = stateno = 1500
trigger1 = animelemtime(2) >= 5
triggerall = Numhelper(2250) = 0

;---------------------------------------------------------------------------
;Fireball
[State -1, Fireball]
type = ChangeState
value = 1500
triggerall = var(20) >= 0
triggerall = command = "fireball"
triggerall = power >= 200
triggerall = Numhelper(2250) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1501
trigger2 = animelemtime(2) >= 5

;-------------------------------------------
;Meteor
[State -1, Meteor]
type = ChangeState
value = 2555
triggerall = Var(30) != 59
triggerall = command = "meteor"
triggerall = statetype != A
triggerall = stateno!= 1051
triggerall = stateno!= 1052
triggerall = power >= 3000 ;Level 3 Super
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = var(32) != 1
trigger2 = movecontact = 0
trigger3 = stateno = 80

;-------------------------------------------------------------------------------
;Volleyball atack
[State -1, Volleyball]
type = ChangeState
value = 1900
triggerall = command = "Volleyball"
triggerall = power >= 1000
trigger1 = var(1) ;Use combo condition (above)
;-----------------------------------------------------------------------------
;Torpedos
[State -1, Torpedos]
type = ChangeState
triggerall = power >= 200
triggerall = command = "Torpedos"
triggerall = Numhelper(2250) < 1
value = ifelse(Numhelper(2250)=3,2203,ifelse(Numhelper(2250)=2,2202,ifelse(Numhelper(2250)=1, 2201, 2200)))
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 220) && (movecontact = 1)
trigger6 = (stateno = 230)  && (movecontact = 1)
trigger7 = (stateno = 400)  && (movecontact = 1)
trigger8 = (stateno = 410)  && (movecontact = 1)
trigger9 = (stateno = 420)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 440) && (movecontact = 1)

;Torpedos en el aire
[State -1, Torpedos]
type = ChangeState
triggerall = power >= 200
triggerall = command = "Torpedos"
triggerall = Numhelper(2250) < 4
value = 2300
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 620) && (movecontact = 1)
trigger5 = (stateno = 630) && (movecontact = 1)
trigger6 = (stateno = 510)  && (movecontact = 1)
trigger7 = (stateno = 520)  && (movecontact = 1)
trigger8 = (stateno = 530)  && (movecontact = 1)
trigger9 = (stateno = 540)  && (movecontact = 1)
trigger10 = (stateno = 991)
trigger11 = (stateno = 1200) && (time >= 16)
trigger12 = (stateno = 1250) && (time >= 16)

;------------------------------------------------------------------------------
; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25

;-----------------------------------------------------------------------------
;Ativar Intelig麩cia Artificial
[Command]
name = "AI Prueba"
command = a+b ; con el bot A+B activamos la AI
time = 1

;Desativar Intelig麩cia Artificial
[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

