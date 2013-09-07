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
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
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
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
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
;
;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
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
name = "QCF_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 15

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 15

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 15

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 15

[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 15

[Command]
name = "QCF_2k"
command = ~D, DF, F, a+b

[Command]
name = "QCF_2k"
command = ~D, DF, F, a+c

[Command]
name = "QCF_2k"
command = ~D, DF, F, b+c

[Command]
name = "QCF_2p"
command = ~D, DF, F, x+y

[Command]
name = "QCF_2p"
command = ~D, DF, F, x+z

[Command]
name = "QCF_2p"
command = ~D, DF, F, y+z

[Command]
name = "QCB_2p"
command = ~D, DB, B, x+y

[Command]
name = "QCB_2p"
command = ~D, DB, B, x+z

[Command]
name = "QCB_2p"
command = ~D, DB, B, y+z


[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "pushback"
command = y+b

[Command]
name = "launcher"
command = x+a

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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "FWD_y"
command = /$F,y
time = 1

[Command]
name = "FWD_b"
command = /$F,b
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "counter"
command = /$B, x + a
time = 1

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

[Command]
name = "DU"
command = D, U
time = 15

[Command]
name = "DU"
command = D, UB
time = 15

[Command]
name = "DU"
command = D, UF
time = 15

[Command]
name = "airfollow"
command = U

[Command]
name = "airfollow"
command = UF

[Command]
name = "airfollow" ;Required (do not remove)
command = /$U
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
name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "CPU2"
command = D, F, D, F, F, D, F
time = 1

[Command]
name = "CPU3"
command = B, D, F, B, B, D
time = 1

[Command]
name = "CPU4"
command = D, D, U, U, D, U, F, U
time = 1

[Command]
name = "CPU5"
command = D, F, D, F, F, D, F, U, U
time = 1

[Command]
name = "CPU6"
command = B, D, F, B, B, D, U
time = 1

[Command]
name = "CPU7"
command = B, F, B, F, F, D, F, U, U, U
time = 1

[Command]
name = "CPU8"
command = B, F, F, B, F, D, U, U
time = 1

[Command]
name = "CPU9"
command = D, F, D, F, F, D, F, U, U, F, U, U, B
time = 1

[Command]
name = "CPU10"
command = B, D, F, B, B, B, B
time = 1

[Command]
name = "CPU11"
command = D, F, D, F, F, D, F, U, U, B, B, U, F
time = 1

[Command]
name = "CPU12"
command = B, D, D, B, B, D, U, U, U, F
time = 1

[Command]
name = "CPU13"
command = D, F, D, F, F, D, F, U, B, B, B, U
time = 1

[Command]
name = "CPU14"
command = B, D, F, B, B, D, F, U, B, F, U
time = 1

[Command]
name = "Hyper1"
command = F, F, D, D, F, B
time = 1

[Command]
name = "Hyper2"
command = F, B, F, D, F, F, F, B
time = 1

[Command]
name = "Hyper3"
command = F, B, F, D, F, F, F, B, F, B
time = 1

[Command]
name = "Hyper4"
command = F, B, F, D, F, F, F, B
time = 1

[Command]
name = "Hyper5"
command = F, B, F, D, F, F, F, B, F, B, D, F, D
time = 1

[Command]
name = "Hyper6"
command = F, B, F, D, F, F, F, B, D, D
time = 1

[Command]
name = "Hyper7"
command = F, B, F, D, F, F, F, B, F, B, F
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

;===========================================================================
;---------------------------------------------------------------------------

[State -1, SetAIVar]
type = varset
v = 4
value = 1
triggerall = var(4) = 0
trigger1 = (command = "CPU1") && const(data.sparkno) != 0
trigger2 = (command = "CPU2") && const(data.sparkno) != 0
trigger3 = (command = "CPU3") && const(data.sparkno) != 0
trigger4 = (command = "CPU4") && const(data.sparkno) != 0
trigger5 = (command = "CPU5") && const(data.sparkno) != 0
trigger6 = (command = "CPU6") && const(data.sparkno) != 0
trigger7 = (command = "Hyper1") && const(data.sparkno) != 0
trigger8 = (command = "Hyper2") && const(data.sparkno) != 0
trigger9 = (command = "Hyper3") && const(data.sparkno) != 0
trigger10 = (command = "Hyper4") && const(data.sparkno) != 0
trigger11 = (command = "Hyper5") && const(data.sparkno) != 0
trigger12 = (command = "Hyper6") && const(data.sparkno) != 0
trigger13 = (command = "Hyper7") && const(data.sparkno) != 0
trigger14 = (command = "CPU7") && const(data.sparkno) != 0
trigger15 = (command = "CPU8") && const(data.sparkno) != 0
trigger16 = (command = "CPU9") && const(data.sparkno) != 0
trigger17 = (command = "CPU10") && const(data.sparkno) != 0
trigger18 = (command = "CPU11") && const(data.sparkno) != 0
trigger19 = (command = "CPU12") && const(data.sparkno) != 0
trigger20 = (command = "CPU13") && const(data.sparkno) != 0
trigger21 = (command = "CPU14") && const(data.sparkno) != 0

;AI
;[State -1,Relax]
;type = ChangeState
;value = 3501
;triggerall = var(25) = 1 && ctrl
;trigger1 = (var(4) = 1) && (random > 990)
;trigger2 = (var(4) = 1) && (P2BodyDist X > 100) && (random > 920)

;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch1]
type = ChangeState
value = 200
triggerall = (statetype != A) && (var(25) = 0) && (ctrl)
trigger1 = command = "x" && (var(4) = 0)
trigger2 = (var(4) = 1)  && (var(23) = 0) && (P2BodyDist X = [0, 80]) && (P2BodyDist y = [-80, 80]) && random >= 850

[State -1, Stand Light Punch2]
type = ChangeState
value = 201
triggerall = (statetype != A) && (var(25) = 1) && (ctrl)
trigger1 = command = "x" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 201) && (var(23) = 0) && (P2BodyDist X = [0, 120]) && (P2BodyDist y = [-80, 80]) && random >= 940 && p2statetype != L

[State -1, Stand Light Punch3]
type = ChangeState
value = 202
triggerall = (statetype != A) && (var(25) = 2) && (ctrl)
trigger1 = command = "x" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 202) && (var(23) = 0) && (P2BodyDist X = [10, 80]) && random >= 800

;---------------------------------------------------------------------------
;Stand Medium Punch
;立ち強パンチ
[State -1, Stand Medium Punch1]
type =  ChangeState
value = 210
triggerall =  (statetype = S) && (var(25) = 0) && (ctrl)
trigger1 = command = "y" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 210) && (var(23) = 0) && (P2BodyDist X >= 120) && random >= 990

[State -1, Stand Medium Punch2]
type =  ChangeState
value = 221
triggerall =  (statetype = S) && (var(25) = 1) && (ctrl)
trigger1 = command = "y" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 221) && (var(23) = 0) && (P2BodyDist X = [0,130]) && random >= 940 && p2statetype != L

[State -1, Stand Medium Punch3]
type =  ChangeState
value = 212
triggerall =  (statetype = S) && (var(25) = 2) && (ctrl)
trigger1 = command = "y" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 212) && (var(23) = 0) && (P2BodyDist X = [0,100]) && random >= 500

;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch1]
type =  ChangeState
value = 220
triggerall = (statetype = S) && (var(25) = 0) && (ctrl)
trigger1 = (var(4) = 0) && (command = "z")
trigger2 = (var(4) = 1) && (var(24) != 220) && (var(23) = 0) && (P2BodyDist X = [20, 100]) && random >= 940

[State -1, Stand Strong Punch2]
type =  ChangeState
value = 211
triggerall = (statetype = S) && (var(25) = 1) && (ctrl)
trigger1 = (var(4) = 0) && (command = "z") && numhelper(214) = 0
trigger2 = (var(4) = 1) && (var(24) != 211) && (var(23) = 0) && numhelper(214) = 0 && random >= 988

[State -1, Stand Strong Punch3]
type =  ChangeState
value = 222
triggerall = (statetype = S) && (var(25) = 2) && (ctrl)
trigger1 = (var(4) = 0) && (command = "z")
trigger2 = (var(4) = 1) && (var(24) != 222) && (var(23) = 0) && (P2BodyDist X > 0) && random >= 990

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick1]
type = ChangeState
value = 230
triggerall = (statetype = S) && (var(25) = 0) && (ctrl)
trigger1 = (var(4) = 0) && command = "a"
trigger2 = (var(4) = 1) && (var(23) = 0) && (P2BodyDist y = [-80, 80]) && random >= 930

[State -1, Stand Light Kick2]
type = ChangeState
value = 231
triggerall = (statetype = S) && (var(25) = 1) && (ctrl)
trigger1 = command = "a" && (var(4) = 0)
trigger2 = command = "b" && (var(4) = 0)
trigger3 = (var(4) = 1) && (var(24) != 231) && (var(23) = 0) && (P2BodyDist X >= 105) && random >= 920

[State -1, Stand Light Kick3]
type = ChangeState
value = 332
triggerall = (statetype = S) && (var(25) = 2) && (ctrl)
trigger1 = command = "a" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 332) && (var(23) = 0) && numhelper(333) = 0 && random >= 950

;---------------------------------------------------------------------------
;Standing Medium Kick
;立ち強キック
[State -1, Standing Medium Kick1]
type = ChangeState
value = 240
triggerall = (statetype = S) && (var(25) = 0) && (ctrl)
trigger1 = command = "b" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 240) && (var(23) = 0) && random >= 990

;[State -1, Stand Medium Kick2]
;type = ChangeState
;value = 241
;triggerall = (statetype = S) && (var(25) = 1) && (ctrl)
;trigger1 = command = "b" && (var(4) = 0)
;trigger2 = (var(4) = 1) && (var(24) != 231) && (var(23) = 0) && (P2BodyDist X >= 110) && random >= 950

[State -1, Stand Medium Kick3]
type = ChangeState
value = 242
triggerall = (statetype = S) && (var(25) = 2) && (ctrl)
trigger1 = command = "b" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 242) && (var(23) = 0) && random >= 980

;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick1]
type =ChangeState
value = 250
triggerall = (statetype = S) && (var(25) = 0) && (ctrl)
trigger1 = command = "c" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 250) && (var(23) = 0) && (p2bodydist x > 100) && random >= 980

;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick2]
type =ChangeState
value = 251
triggerall = (statetype = S) && (var(25) = 1) && (ctrl)
trigger1 = command = "c" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 251) && (var(23) = 0) && random >= 990
trigger3 = (var(4) = 1) && (var(24) != 251) && (var(23) = 0) && (p2bodydist x = [0,10]) && random >= 950

;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick3]
type =ChangeState
value = 253
triggerall = (statetype = S) && (var(25) = 2) && (ctrl)
trigger1 = command = "c" && (var(4) = 0)
trigger2 = (var(4) = 1) && (var(24) != 253) && (var(23) = 0) && (p2bodydist x = [-100,200]) && random >= 990
trigger3 = (var(4) = 1) && (var(24) != 253) && (var(23) = 0) && (p2bodydist x > 200 ) && random >= 998
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 0
trigger1 = command = "start"  && ctrl && (var(4) = 0)

