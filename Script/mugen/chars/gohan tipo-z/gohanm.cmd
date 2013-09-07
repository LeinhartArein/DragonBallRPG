; _____________________________________
;| Gohan Tipo Z by Zerberus_Dante      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===================<COMANDOS>================
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
; Default value for the "time" parameter of a Command. Minimum 1.
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

[Defaults]
command.time=15
command.buffer.time=1

;-| Super Motions |--------------------------------------------------------
[command]
name = "EspadaTrueno"
command = D,DF,F,D,DF,F,x
time = 40

[command]
name = "KameHameHa1"
command = D,DF,F,D,DF,F,y
time = 40

[command]
name = "Light Spheres"
command = D,DF,F,D,DF,F,y
time = 40

[command]
name = "Masenko1"
command = D,DF,F,D,DF,F,z
time = 40

[command]
name = "Furia Berserker"
command = D,DF,F,D,DF,F,a
time = 40

;-| Special Motions |------------------------------------------------------

[command]
name = "combinacion 3"
command = D,B,z
time = 15

[command]
name = "Teletransporte Ade"
command = /$F,x+y
time = 30

[command]
name = "magia1"
command = D,F,z
time = 30

[command]
name = "another teleporter"
command = D,B,z
time = 30

[command]
name = "espadaataque1"
command = D,B,x
time = 30

[command]
name = "???"
command = D,F,x
time = 30

[command]
name = "espadaataque2"
command = D,F,y
time = 30

[command]
name = "ProjTeledirigidos"
command = D,B,y
time = 30

[command]
name = "Teletransporte Atr"
command = /$B,x+y
time = 30

[Command]
name = "fly"
command = b+y
time = 30

[command]
name = "Triple Leg Kick"
command = D,DF,F,b
time = 30

[command]
name = "Levanta Rocas"
command = D,DB,B,b
time = 30

[command]
name = "GhostPunch1"
command = D,DF,F,a
time = 30

[command]
name = "Tecnicmagia2"
command = D,DB,B,a
time = 30

[command]
name = "golpeestrellaaire1"
command = /D,z
time = 30

[command]
name = "golpeestrellaaire2"
command = /D,c
time = 30

[command]
name = "magiaaire1"
command = D,DF,F,z
time = 30

[command]
name = "Tecnica Sombra Adelante"
command = D,F,c
time = 30

[command]
name = "Tecnica Sombra Atras"
command = D,B,c
time = 30

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
name = "AI Prueba"
command = a+b ; con el botón A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------



[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "ki"
command = /x
time = 1

[Command]
name = "ki2"
command = /a
time = 1


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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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

[State -1, combinacion 3]
type = ChangeState
value = 4800
triggerall = command = "combinacion 3"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

;EspadaTrueno
[State -1, EspadaTrueno]
type = ChangeState
value = 504
triggerall = command = "EspadaTrueno"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

;furia berserker
[State -1, Furia Berserker]
type = ChangeState
value = 4643
triggerall = command = "Furia Berserker"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

;Masenko1
[State -1, Masenko1]
type = ChangeState
value = 501
triggerall = command = "Masenko1"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

;KameHameHa1
[State -1, KameHameHa1]
type = ChangeState
value = 500
triggerall = command = "KameHameHa1"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

;Light Spheres
[State -1, Light Spheres]
type = ChangeState
value = 502
triggerall = command = "Light Spheres"
triggerall = power >= 1000
trigger1 = (statetype = A) && ctrl

;espadaataque2
[State -1, espadaataque2]
type = ChangeState
value = 18890
triggerall = command = "espadaataque2"
triggerall = power >= 100
trigger1 = (statetype = s) && ctrl

;ProjTeledirigidos
[State -1, ProjTeledirigidos]
type = ChangeState
value = 18846
triggerall = command = "ProjTeledirigidos"
triggerall = power >= 200
trigger1 = (statetype = s) && ctrl

;levanta rocas
[State -1, levanta  rocas]
type = ChangeState
value = 18895
triggerall = command = "Levanta Rocas"
triggerall = power >= 100
trigger1 = (statetype = s) && ctrl

;tecnicamagia2
[State -1, tecnicamagia2]
type = ChangeState
value = 18896
triggerall = command = "Tecnicmagia2"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

;Tecnica Flameante
[State -1, Tecnica Flameante]
type = ChangeState
value = 201
triggerall = command = "???"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

;Air Dash Ade
[State -1, Air Dash Ade]
type = ChangeState
value = 1001
triggerall = command = "FF"
trigger1 = (statetype = A) && ctrl

;Air Dash Atras
[State -1, Air Dash Atras]
type = ChangeState
value = 1051
triggerall = command = "BB"
trigger1 = (statetype = A) && ctrl

;Tecnica Sombra Atras
[State -1, Tecnica Sombra Atras]
type = ChangeState
value = 3101
triggerall = command = "Tecnica Sombra Atras"
trigger1 = (statetype = s) && ctrl

;Tecnica Sombra Adelante
[State -1, Tecnica Sombra Adelante]
type = ChangeState
value = 3100
triggerall = command = "Tecnica Sombra Adelante"
trigger1 = (statetype = s) && ctrl

;magiaaire1
[State -1, magiaaire1]
type = ChangeState
value = 622
triggerall = command = "magiaaire1"
triggerall = power >= 100
trigger1 = (statetype = A) && ctrl

;golpehaciabajoaire
[State -1, golpehaciabajoaire]
type = ChangeState
value = 621
triggerall = command = "golpeestrellaaire1"
trigger1 = (statetype = A) && ctrl

;golpehaciabajoaire2
[State -1, golpehaciabajoaire2]
type = ChangeState
value = 658
triggerall = command = "golpeestrellaaire2"
trigger1 = (statetype = A) && ctrl

;GhostPunch1
[State -1, GhostPunch1]
type = ChangeState
value = 18005
triggerall = command = "GhostPunch1"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

;Triple Leg Kick
[State -1, Triple Leg Kick]
type = ChangeState
value = 4804
triggerall = command = "Triple Leg Kick"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl


;Teletransporte Atr
[State -1, Teletransporte Atr]
type = ChangeState
value = 7099
triggerall = command = "Teletransporte Atr"
trigger1 = (statetype = s) && ctrl

;Teletransporte Ade
[State -1, Teletransporte Ade]
type = ChangeState
value = 7098
triggerall = command = "Teletransporte Ade"
trigger1 = (statetype = s) && ctrl

;magia1
[State -1, magia1]
type = ChangeState
value = 999
triggerall = command = "magia1"
triggerall = power >= 100
trigger1 = (statetype = s) && ctrl

;espadaataque1
[State -1, espadaataque1]
type = ChangeState
value = 419
triggerall = command = "espadaataque1"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

;espadaataque1
[State -1, espadaataque1]
type = ChangeState
value = 4199
triggerall = command = "espadaataque1"
triggerall = power >= 300
trigger1 = (statetype = a) && ctrl

;Fly ; Volando
;[State -1, Volar]
;type = ChangeState
;value = 900
;triggerall = command = "fly"
;trigger1 = statetype = A
;trigger1 = ctrl = 1


;Fly ;Empezar a volar
;[State -1, Volar]
;type = ChangeState
;value = 910
;triggerall = command = "fly"
;trigger1 = statetype != A
;trigger1 = ctrl = 1


;Carga de KI
[State -1, Cargar KI]
type = ChangeState
value = 830
triggerall = command = "ki" && command = "ki2"
triggerall = power < 3001
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = statetype = S

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


