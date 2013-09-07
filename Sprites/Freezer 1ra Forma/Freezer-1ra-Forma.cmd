; The CMD file.
;

;- ia ---------------------------------------------- IA
[Command]
name = "ia"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia2"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia3"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia4"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia5"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia6"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia7"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia8"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia9"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia10"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia11"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia12"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia13"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia14"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1

[Command]
name = "ia15"
command = a+b+c+x+y+z,a,b,c,x,y,z,U,F,B,D,U,U,B,B,D,D,F,U,B,D,a,b,c,x,y,z
time= 1
;--------

;-| Super Motions |--------------------------------------------------------

[Command]
name = "kamehameha xy"
command = /B,x+y
time= 25
;command = ~D, F, x

[Command]
name = "kamehameha x"
command = ~D,DB,B,D,DB,B,x
time= 25

[Command]
name = "kamehameha y"
command = ~D,DB,B,D,DB,B,y
time= 25

[Command]
name = "2QCB a"
command = ~D,DB,B,D,DB,B,a
time= 25

[Command]
name = "2QCB b"
command = ~D,DB,B,D,DB,B,b
time= 25

[Command]
name = "QCB ab"
command = ~D,DB,B,a+b
time= 25

[Command]
name = "QCF ab"
command = ~D,DF,F,a+b
time= 25

[Command]
name = "ab"
command = a+b

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCF_x"
command = ~D,DF,F,x

[Command]
name = "QCF_y"
command = ~D,DF,F,y

[Command]
name = "QCF_z"
command = ~D,DF,F,z

[Command]
name = "QCF_a"
command = ~D,DF,F,a

[Command]
name = "QCF_b"
command = ~D,DF,F,b

[Command]
name = "QCF_c"
command = ~D,DF,F,c

[Command]
name = "QCF_xy"
command = ~D,DF,F,x+y

[Command]
name = "QCB_a"
command = ~D,DB,B,a

[Command]
name = "QCB_b"
command = ~D,DB,B,b

[Command]
name = "QCB_c"
command = ~D,DB,B,c

[Command]
name = "QCB_x"
command = ~D,DB,B,x

[Command]
name = "QCB_y"
command = ~D,DB,B,y

[Command]
name = "QCB_z"
command = ~D,DB,B,z

[Command]
name = "FF_ab"
command = F,F,a+b

[Command]
name = "FF_a"
command = F,F,a

[Command]
name = "FF_b"
command = F,F,b

[Command]
name = "xy"
command = x+y

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F,F
time= 10

[Command]
name = "BB";Required (do not remove)
command = B,B
time= 10

[Command]
name = "UU"
command = U,U
time= 10

[Command]
name = "DD"
command = D,D
time= 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time= 1

[Command]
name = "xy"
command = x+y
time= 1

[Command]
name = "ab"
command = a+b
time= 1

[Command]
name = "xa"
command = x+a
time= 1

[Command]
name = "yb"
command = y+b
time= 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time= 1

[Command]
name = "down_b"
command = /$D,b
time= 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time= 1

[Command]
name = "b"
command = b
time= 1

[Command]
name = "c"
command = c
time= 1

[Command]
name = "x"
command = x
time= 1

[Command]
name = "y"
command = y
time= 1

[Command]
name = "z"
command = z
time= 1

[Command]
name = "holdstart"
command = /s
time= 1

[Command]
name = "start"
command = s
time= 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time= 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time= 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time= 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time= 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------

[Statedef -1]

;;;;;;;;;;;;;;;;;;;;;;COMBO VAR
[State -1, combo varreseta]
type = VarSet
v = 1
value = 0
trigger1 = time< 2

[State -1, combo a]
type = VarSet
v = 1
value = 1
trigger1 = command = "a"

[State -1, combo b]
type = VarSet
v = 1
value = 2
trigger1 = command = "b"

[State -1, combo c]
type = VarSet
v = 1
value = 3
trigger1 = command = "c"

[State -1, combo x]
type = VarSet
v = 1
value = 4
trigger1 = command = "x"

[State -1, combo y]
type = VarSet
v = 1
value = 5
trigger1 = command = "y"

[State -1, combo z]
type = VarSet
v = 1
value = 6
trigger1 = command = "z"

; movimento
;---------------------------------------------------------------------------
[State -1, corre]
type = ChangeState
value = 2+(var(5):=(command = "holdfwd" || command = "holdback"))*0
triggerall = stateno = 1
trigger1 = command = "FF"
trigger2 = command = "BB"
trigger3 = command = "UU"
trigger4 = command = "DD"

[State -1, recover]
type = ChangeState
value = 4
triggerall = command = "xy"
triggerall !=var(6)
trigger1 = stateno = [1,3]

; especiais
;---------------------------------------------------------------------------
;sei la
[State -1, sei la]
type = ChangeState
value = 1000 +(var(5):=1)*0
trigger1 = command = "ab"
trigger1 = stateno = [1,3]

; normais
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600 +(var(5):=1)*0
trigger1 = command = "x"
trigger1 = stateno = [1,3]
trigger2 = stateno = 600
trigger2 = var(5) = -1
trigger2 = var(1) = 4
trigger2 = time> 10

[State -1, Jump Light Kick]
type = ChangeState
value = 600 +(var(5):=-1)*0
triggerall = pos y < -15
trigger1 = command = "a"
trigger1 = stateno = [1,3]
trigger2 = stateno = 600
trigger2 = var(5) = 1
trigger2 = var(1) = 1
trigger2 = time> 10

[State -1, Jump medio Punch]
type = ChangeState
value = 610 +(var(5):=1)*0
trigger1 = command = "y"
trigger1 = stateno = [1,3]
trigger2 = stateno = 600
trigger2 = var(5) = 1
trigger2 = var(1) = 5
trigger2 = time> 9

[State -1, Jump medio Kick]
type = ChangeState
value = 610 +(var(5):=-1)*0
triggerall = pos y < -20
trigger1 = command = "b"
trigger1 = stateno = [1,3]
trigger2 = stateno = 600
trigger2 = var(5) = -1
trigger2 = var(1) = 2
trigger2 = time> 9

[State -1, Jump forte Punch]
type = ChangeState
value = 620 +(var(5):=1)*0
trigger1 = command = "z"
trigger1 = stateno = [1,3]
trigger2 = stateno = 610
trigger2 = var(5) = 1
trigger2 = var(1) = 6
trigger2 = time> 20

[State -1, Jump forte Kick]
type = ChangeState
value = 620 +(var(5):=-1)*0
triggerall = pos y < -35
trigger1 = command = "c"
trigger1 = stateno = [1,3]
trigger2 = stateno = 610
trigger2 = var(5) = -1
trigger2 = var(1) = 3
trigger2 = time> 20



