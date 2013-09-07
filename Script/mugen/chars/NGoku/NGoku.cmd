;Sabre's Goku CMD
;-| Hyper Motions |--------------------------------------------------------


;-| Super Motions |--------------------------------------------------------

;Kamehameha-------
[Command]
name = "Kame"
command = D
time = 30
;----------------

;Flying Fists----
[Command]
name = "FlyFist"
command = D, DF, F,
time = 30
;----------------

;-| Special Motions |------------------------------------------------------

;Knee Attack------
[Command]
name = "Knee"
command = F, D, 
time = 30

[Command]
name = "Knee"
command = F, D, DF
time = 30

[Command]
name = "Knee"
command = D, DF, c
time = 30
;-----------------

;Spinning Kick----
[Command]
name = "Spin"
command = D, DB, B, a
time = 30

[Command]
name = "Spin"
command = D, DB, B, b
time = 30

[Command]
name = "Spin"
command = D, DB, B, c
time = 30
;-----------------

;Ki Shot----------
[Command]
name = "Ki"
command = D, DF, F, x
time = 30

[Command]
name = "Ki2"
command = D, DF, F, y
time = 30

[Command]
name = "Ki3"
command = D, z
time = 30
;-----------------

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = a+b
time = 5

[Command]
name = "recovery"
command = b+a
time = 5

[Command]
name = "recovery"
command = a+b
time = 5

[Command]
name = "recovery"
command = b+c
time = 5

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "yz"
command = y+z
time = 5

[Command]
name = "xz"
command = x+z
time = 10

[Command]
name = "xyz"
command = x+y+z
time = 5

[Command]
name = "ab"
command = a+b
time = 5

[Command]
name = "bc"
command = b+c
time = 5

[Command]
name = "ac"
command = a+c
time = 5

[Command]
name = "abc"
command = a+b+c
time = 5

[Command]
name = "xa"
command = x+a
time = 5

[Command]
name = "by"
command = b+y
time = 5

[Command]
name = "cz"
command = c+z
time = 5

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "back_b"
command = /$B, b
time = 1

[Command]
name = "back_x"
command = /$B, x
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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx" 
command = /x
time = 1

[Command]
name = "holdy" 
command = /y
time = 1

[Command]
name = "holdz" 
command = /z
time = 1

[Command]
name = "holda" 
command = /a
time = 1

[Command]
name = "holdb" 
command = /b
time = 1

[Command]
name = "holdc" 
command = /c
time = 1

[Command]
name = "holds" 
command = /s
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
;-| Misc |------------------------------------------------------------------

;---------------------------------------------------------------------------
;KI Charge
[State -1:		KIC]
type			= Changestate
value			= 2000
triggerall		= (Command = "xa") && (Command != "holddown")
trigger1		= (Statetype = S) && (Ctrl)
trigger2		= (Stateno = 218) && (animelem = 4, >2)
trigger3		= (Stateno = 205) && (animelem = 2, >5)

;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 		= 105
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Air Run Fwd
[State -1: 		Air Run Fwd]
type 			= ChangeState
value 		= 103
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= ((Stateno = 650) && (movecontact))
trigger7		= ((Stateno = 675) && (movecontact))

;---------------------------------------------------------------------------
;Air Run Back
[State -1: 		Air Run Back]
type 			= ChangeState
value 		= 107
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= ((Stateno = 650) && (movecontact))
trigger7		= ((Stateno = 675) && (movecontact))

;---------------------------------------------------------------------------
;Run Up
[State -1: 		Run Up]
type 			= ChangeState
value 		= 110
triggerall 		= (Command = "UU") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= ((Stateno = 650) && (movecontact))
trigger7		= ((Stateno = 675) && (movecontact))

;---------------------------------------------------------------------------
;Run Down
[State -1: 		Run Down]
type 			= ChangeState
value 		= 112
triggerall 		= (Command = "DD") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= ((Stateno = 650) && (movecontact))
trigger7		= ((Stateno = 675) && (movecontact))

;===========================================================================
;-| Hyper |-----------------------------------------------------------------

;===========================================================================
;-| Super |-----------------------------------------------------------------

;---------------------------------------------------------------------------

;Kamehameha--------------------
;Ground
[State -1:		Kame]
type			= Changestate
value			= 999
triggerall		= ((Command = "Kame") && (Command != "holddown") && (power>1000))
trigger1		= ((Statetype = S) && (Ctrl))

;Air
[State -1:		AKame]
type			= Changestate
value			= 1009
triggerall		= ((Command = "Kame") && (Command != "holddown") && (power>1000))
trigger1		= ((Statetype = A) && (Ctrl))
;------------------------------
;---------------------------------------------------------------------------

;Flying Fists------------------
;Initial
[State -1:		FlyFist]
type			= Changestate
value			= 2999
triggerall		= ((Command = "FlyFist") && (Command != "holddown") && (power>1000))
trigger1		= ((Statetype = S) && (Ctrl))

;Left Hand Reverse
[State -1:		LHR]
type			= Changestate
value			= 3001
triggerall		= (((Command = "a") || (Command = "b")) && (var(41)=0))
trigger1		= ((Stateno = 3000) && (movecontact) && (var(40)< 20))
trigger2		= ((Stateno = 3001) && (movecontact) && (var(40)< 20))
trigger3		= ((Stateno = 3002) && (movecontact) && (var(40)< 20))
trigger4		= ((Stateno = 3003) && (movecontact) && (var(40)< 20))
trigger5		= ((Stateno = 3004) && (movecontact) && (var(40)< 20))
trigger6		= ((Stateno = 3005) && (movecontact) && (var(40)< 20))
trigger7		= ((Stateno = 3006) && (movecontact) && (var(40)< 20))
trigger8		= ((Stateno = 3007) && (movecontact) && (var(40)< 20))
trigger9		= ((Stateno = 3008) && (movecontact) && (var(40)< 20))

;Right Hand Reverse
[State -1:		RHR]
type			= Changestate
value			= 3002
triggerall		= (((Command = "a") || (Command = "b")) && (var(41)=1))
trigger1		= ((Stateno = 3000) && (movecontact) && (var(40)< 20))
trigger2		= ((Stateno = 3001) && (movecontact) && (var(40)< 20))
trigger3		= ((Stateno = 3002) && (movecontact) && (var(40)< 20))
trigger4		= ((Stateno = 3003) && (movecontact) && (var(40)< 20))
trigger5		= ((Stateno = 3004) && (movecontact) && (var(40)< 20))
trigger6		= ((Stateno = 3005) && (movecontact) && (var(40)< 20))
trigger7		= ((Stateno = 3006) && (movecontact) && (var(40)< 20))
trigger8		= ((Stateno = 3007) && (movecontact) && (var(40)< 20))
trigger9		= ((Stateno = 3008) && (movecontact) && (var(40)< 20))

;Left Hand
[State -1:		LH]
type			= Changestate
value			= 3003
triggerall		= (((Command = "a") || (Command = "b")) && (var(41)=2))
trigger1		= ((Stateno = 3000) && (movecontact) && (var(40)< 20))
trigger2		= ((Stateno = 3001) && (movecontact) && (var(40)< 20))
trigger3		= ((Stateno = 3002) && (movecontact) && (var(40)< 20))
trigger4		= ((Stateno = 3003) && (movecontact) && (var(40)< 20))
trigger5		= ((Stateno = 3004) && (movecontact) && (var(40)< 20))
trigger6		= ((Stateno = 3005) && (movecontact) && (var(40)< 20))
trigger7		= ((Stateno = 3006) && (movecontact) && (var(40)< 20))
trigger8		= ((Stateno = 3007) && (movecontact) && (var(40)< 20))
trigger9		= ((Stateno = 3008) && (movecontact) && (var(40)< 20))

;Right Hand
[State -1:		RH]
type			= Changestate
value			= 3004
triggerall		= (((Command = "a") || (Command = "b")) && (var(41)=3))
trigger1		= ((Stateno = 3000) && (movecontact) && (var(40)< 20))
trigger2		= ((Stateno = 3001) && (movecontact) && (var(40)< 20))
trigger3		= ((Stateno = 3002) && (movecontact) && (var(40)< 20))
trigger4		= ((Stateno = 3003) && (movecontact) && (var(40)< 20))
trigger5		= ((Stateno = 3004) && (movecontact) && (var(40)< 20))
trigger6		= ((Stateno = 3005) && (movecontact) && (var(40)< 20))
trigger7		= ((Stateno = 3006) && (movecontact) && (var(40)< 20))
trigger8		= ((Stateno = 3007) && (movecontact) && (var(40)< 20))
trigger9		= ((Stateno = 3008) && (movecontact) && (var(40)< 20))

;Air Left Hand
[State -1:		ALH]
type			= Changestate
value			= 3005
triggerall		= (((Command = "a") || (Command = "b")) && (var(41)=4) && (var(42)!=1))
trigger1		= ((Stateno = 3000) && (movecontact) && (var(40)< 19))
trigger2		= ((Stateno = 3001) && (movecontact) && (var(40)< 19))
trigger3		= ((Stateno = 3002) && (movecontact) && (var(40)< 19))
trigger4		= ((Stateno = 3003) && (movecontact) && (var(40)< 19))
trigger5		= ((Stateno = 3004) && (movecontact) && (var(40)< 19))
trigger6		= ((Stateno = 3005) && (movecontact) && (var(40)< 19))
trigger7		= ((Stateno = 3006) && (movecontact) && (var(40)< 19))
trigger8		= ((Stateno = 3007) && (movecontact) && (var(40)< 19))
trigger9		= ((Stateno = 3008) && (movecontact) && (var(40)< 19))	

;Air Right Hand
[State -1:		ARH]
type			= Changestate
value			= 3006
triggerall		= (((Command = "a") || (Command = "b")) && (var(41)=5) && (var(42)!=1))
trigger1		= ((Stateno = 3000) && (movecontact) && (var(40)< 19))
trigger2		= ((Stateno = 3001) && (movecontact) && (var(40)< 19))
trigger3		= ((Stateno = 3002) && (movecontact) && (var(40)< 19))
trigger4		= ((Stateno = 3003) && (movecontact) && (var(40)< 19))
trigger5		= ((Stateno = 3004) && (movecontact) && (var(40)< 19))
trigger6		= ((Stateno = 3005) && (movecontact) && (var(40)< 19))
trigger7		= ((Stateno = 3006) && (movecontact) && (var(40)< 19))
trigger8		= ((Stateno = 3007) && (movecontact) && (var(40)< 19))
trigger9		= ((Stateno = 3008) && (movecontact) && (var(40)< 19))

;Air Left Hand Reverse
[State -1:		ALHR]
type			= Changestate
value			= 3007
triggerall		= (((Command = "a") || (Command = "b")) && (var(41)=6))
trigger1		= ((Stateno = 3000) && (movecontact) && (var(40)< 19))
trigger2		= ((Stateno = 3001) && (movecontact) && (var(40)< 19))
trigger3		= ((Stateno = 3002) && (movecontact) && (var(40)< 19))
trigger4		= ((Stateno = 3003) && (movecontact) && (var(40)< 19))
trigger5		= ((Stateno = 3004) && (movecontact) && (var(40)< 19))
trigger6		= ((Stateno = 3005) && (movecontact) && (var(40)< 19))
trigger7		= ((Stateno = 3006) && (movecontact) && (var(40)< 19))
trigger8		= ((Stateno = 3007) && (movecontact) && (var(40)< 19))
trigger9		= ((Stateno = 3008) && (movecontact) && (var(40)< 19))	

;Air Right Hand Reverse
[State -1:		ARHR]
type			= Changestate
value			= 3008
triggerall		= (((Command = "a") || (Command = "b")) && (var(41)=7))
trigger1		= ((Stateno = 3000) && (movecontact) && (var(40)< 19))
trigger2		= ((Stateno = 3001) && (movecontact) && (var(40)< 19))
trigger3		= ((Stateno = 3002) && (movecontact) && (var(40)< 19))
trigger4		= ((Stateno = 3003) && (movecontact) && (var(40)< 19))
trigger5		= ((Stateno = 3004) && (movecontact) && (var(40)< 19))
trigger6		= ((Stateno = 3005) && (movecontact) && (var(40)< 19))
trigger7		= ((Stateno = 3006) && (movecontact) && (var(40)< 19))
trigger8		= ((Stateno = 3007) && (movecontact) && (var(40)< 19))
trigger9		= ((Stateno = 3008) && (movecontact) && (var(40)< 19))
;------------------------------

;===========================================================================
;-| Special |---------------------------------------------------------------

;---------------------------------------------------------------------------
;Knee Attack
;[State -1:		KNEE]
;type			= Changestate
;value			= 300
;triggerall		= ((Command = "Knee") && (Command != "holddown"))
;trigger1		= ((Statetype = S) && (Ctrl))
;trigger2		= ((Stateno = 200) && (animelem = 2, >4))
;trigger3		= ((Stateno = 201) && (animelem = 3, >4))
;trigger4		= ((Stateno = 210) && (animelem = 2, >4))
;trigger5		= ((Stateno = 211) && (animelem = 3, >4))
;trigger6		= ((Stateno = 400) && (animelem = 2, >4))
;trigger7		= ((Stateno = 401) && (animelem = 3, >4))
;trigger8		= ((Stateno = 410) && (animelem = 2, >4))
;trigger9		= ((Stateno = 411) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Spinning Kick (Ground)
[State -1:		SPIN]
type			= Changestate
value			= 350
triggerall		= ((Command = "Spin") && (Command != "holddown"))
trigger1		= ((Statetype = S) && (Ctrl))
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger3		= ((Stateno = 201) && (animelem = 3, >4))
trigger4		= ((Stateno = 210) && (animelem = 2, >4))
trigger5		= ((Stateno = 211) && (animelem = 3, >4))
trigger6		= ((Stateno = 400) && (animelem = 2, >4))
trigger7		= ((Stateno = 401) && (animelem = 3, >4))
trigger8		= ((Stateno = 410) && (animelem = 2, >4))
trigger9		= ((Stateno = 411) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Spinning Kick (Air)
[State -1:		SPINA]
type			= Changestate
value			= 351
triggerall		= ((Command = "back_b") && (Command != "holddown"))
trigger1		= ((Statetype = A) && (Ctrl))
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= (Stateno = 109)
trigger7		= ((Stateno = 103) && (animelem = 5))

;---------------------------------------------------------------------------
;Ki Shot
[State -1:		KI3]
type			= Changestate
value			= 702
triggerall		= ((Command = "x") || (Command = "y") || (Command = "z") && (Command != "holddown"))
trigger1		= ((stateno = 701) && (animelem = 2, >4) && (var(30)<5) && (power>50))
;---------------
[State -1:		KI2]
type			= Changestate
value			= 701
triggerall		= ((Command = "x") || (Command = "y") || (Command = "z") && (Command != "holddown"))
trigger1		= ((stateno = 700) && (animelem = 3, >4) && (var(30)<5) && (power>50))
trigger2		= ((stateno = 702) && (animelem = 2, >4) && (var(30)<5))
;----------------
[State -1:		KI]
type			= Changestate
value			= 700
triggerall		= ((Command = "Ki") || (Command = "Ki2") || (Command = "Ki3") && (Command != "holddown"))
trigger1		= ((Statetype = S) && (Ctrl) && (power>100))
trigger2		= ((stateno = 350) && (movecontact) && (power>100))

;---------------------------------------------------------------------------
;Ki Shot AIR
[State -1:		KI3]
type			= Changestate
value			= 782
triggerall		= (Command = "x")
trigger1		= ((stateno = 781) && (animelem = 2, >4) && (var(30)<5) && (power>50))
;---------------
[State -1:		KI2]
type			= Changestate
value			= 781
triggerall		= (Command = "x")
trigger1		= ((stateno = 780) && (animelem = 3, >4) && (var(30)<5) && (power>50))
trigger2		= ((stateno = 782) && (animelem = 2, >4) && (var(30)<5))
;----------------
[State -1:		KI]
type			= Changestate
value			= 780
triggerall		= ((Command = "Ki") && (Command != "holddown"))
trigger1		= ((Statetype = A) && (Ctrl) && (power>100))
trigger2		= ((stateno = 351) && (movecontact) && (power>100))

;---------------------------------------------------------------------------
;Ki Shot AIR Down
[State -1:		KI3]
type			= Changestate
value			= 792
triggerall		= ((Command = "y") || (Command = "z"))
trigger1		= ((stateno = 791) && (animelem = 2, >4) && (var(30)<5) && (power>50))
;---------------
[State -1:		KI2]
type			= Changestate
value			= 791
triggerall		= ((Command = "y") || (Command = "z"))
trigger1		= ((stateno = 790) && (animelem = 3, >4) && (var(30)<5) && (power>50))
trigger2		= ((stateno = 792) && (animelem = 2, >4) && (var(30)<5))
;----------------
[State -1:		KI]
type			= Changestate
value			= 790
triggerall		= ((Command = "Ki2") || (Command = "Ki3") && (Command != "holddown"))
trigger1		= ((Statetype = A) && (Ctrl) && (power>100))

;===========================================================================
;-| Extra Basics |----------------------------------------------------------

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;==========================================================================
;-| Basic |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Stand Weak Punch
[State -1: 		SWP]
type 			= Changestate
value 		= 200
triggerall 		= ((Command = "x") && (Command != "holddown"))
trigger1		= ((Statetype = S) && (Ctrl))
trigger3		= ((Stateno = 210) && (animelem = 2, >4))
trigger4		= ((Stateno = 400) && (animelem = 2, >4))
trigger5		= ((Stateno = 401) && (animelem = 3, >4))
trigger6		= ((Stateno = 410) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Stand Mid Punch
[State -1: 		SMP]
type 			= Changestate
value 		= 201
triggerall 		= ((Command = "y") && (Command != "holddown"))
trigger1		= ((Statetype = S) && (Ctrl))
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger4		= ((Stateno = 400) && (animelem = 2, >4))
trigger5		= ((Stateno = 410) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1:		SSP]
type			= Changestate
value			= 205
triggerall		= ((Command = "z") && (Command != "holddown"))
trigger1		= ((Statetype = S) && (Ctrl))
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger3		= ((Stateno = 201) && (animelem = 3, >4))
trigger4		= ((Stateno = 210) && (animelem = 2, >4))
trigger5		= ((Stateno = 211) && (animelem = 3, >4))
trigger6		= ((Stateno = 400) && (animelem = 2, >4))
trigger7		= ((Stateno = 401) && (animelem = 3, >4))
trigger8		= ((Stateno = 410) && (animelem = 2, >4))
trigger9		= ((Stateno = 411) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Stand Weak Kick
[State -1: 		SWK]
type 			= Changestate
value 		= 210
triggerall 		= ((Command = "a") && (Command != "holddown"))
trigger1		= ((Statetype = S) && (Ctrl))
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger3		= ((Stateno = 201) && (animelem = 3, >4))
trigger4		= ((Stateno = 400) && (animelem = 2, >4))
trigger5		= ((Stateno = 401) && (animelem = 3, >4))
trigger6		= ((Stateno = 410) && (animelem = 2, >4))
trigger7		= ((Stateno = 411) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Stand Mid Kick
[State -1: 		SMK]
type 			= Changestate
value 		= 211
triggerall 		= ((Command = "b") && (Command != "holddown"))
trigger1		= ((Statetype = S) && (Ctrl))
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger3		= ((Stateno = 201) && (animelem = 3, >4))
trigger4		= ((Stateno = 210) && (animelem = 2, >4))
trigger5		= ((Stateno = 400) && (animelem = 2, >4))
trigger6		= ((Stateno = 410) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1:		SSK]
type			= Changestate
value			= 215
triggerall		= ((Command = "c") && (Command != "holddown"))
trigger1		= ((Statetype = S) && (Ctrl))
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger3		= ((Stateno = 201) && (animelem = 3, >4))
trigger4		= ((Stateno = 210) && (animelem = 2, >4))
trigger5		= ((Stateno = 211) && (animelem = 3, >4))
trigger6		= ((Stateno = 400) && (animelem = 2, >4))
trigger7		= ((Stateno = 401) && (animelem = 3, >4))
trigger8		= ((Stateno = 410) && (animelem = 2, >4))
trigger9		= ((Stateno = 411) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Stand Strong Kick Charge
[State -1:		SSKC]
type			= Changestate
value			= 216
triggerall		= ((Command = "holdc") && (Command != "holddown"))
trigger1		= ((Statetype = S) && (Ctrl))
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger3		= ((Stateno = 201) && (animelem = 3, >4))
trigger4		= ((Stateno = 210) && (animelem = 2, >4))
trigger5		= ((Stateno = 211) && (animelem = 3, >4))
trigger6		= ((Stateno = 400) && (animelem = 2, >4))
trigger7		= ((Stateno = 401) && (animelem = 3, >4))
trigger8		= ((Stateno = 410) && (animelem = 2, >4))
trigger9		= ((Stateno = 411) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Crouch Weak Punch
[State -1: 		CWP]
type 			= ChangeState
value 		= 400
triggerall 		= (Command = "x") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger3		= ((Stateno = 201) && (animelem = 3, >4))
trigger4		= ((Stateno = 210) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Crouch Mid Punch
[State -1: 		CMP]
type 			= ChangeState
value 		= 401
triggerall 		= (Command = "y") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger3		= ((Stateno = 201) && (animelem = 3, >4))
trigger4		= ((Stateno = 210) && (animelem = 2, >4))
trigger5		= ((Stateno = 400) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Crouch Weak Kick
[State -1: 		CWK]
type 			= ChangeState
value 		= 410
triggerall 		= (Command = "a") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= ((Stateno = 200) && (animelem = 2, >4))
trigger3		= ((Stateno = 201) && (animelem = 3, >4))
trigger4		= ((Stateno = 210) && (animelem = 2, >4))
trigger5		= ((Stateno = 400) && (animelem = 2, >4))
trigger6		= ((Stateno = 401) && (animelem = 3, >4))

;---------------------------------------------------------------------------
;Crouch Mid Kick
[State -1: 		CMK]
type 			= ChangeState
value 		= 411
triggerall 		= (Command = "b") && (Command = "holddown")
trigger1		= (StateType = C) && (Ctrl)
trigger2		= ((Stateno = 400) && (animelem = 2, >4))
trigger3		= ((Stateno = 401) && (animelem = 3, >4))
trigger4		= ((Stateno = 410) && (animelem = 2, >4))

;---------------------------------------------------------------------------
;Crouch Strong Kick
[State -1:		CSK]
type			= Changestate
value			= 415
triggerall		= (Command = "c") && (Command = "holddown")
trigger1		= (Statetype = C) && (Ctrl)
trigger2		= ((Stateno = 400) && (animelem = 2, >4))
trigger3		= ((Stateno = 401) && (animelem = 3, >4))
trigger4		= ((Stateno = 410) && (animelem = 2, >4))
trigger5		= ((Stateno = 411) && (animelem = 3, >4))

;---------------------------------------------------------------------------
;Jump Weak Punch
[State -1: 		JWP]
type 			= ChangeState
value 		= 600
triggerall 		= (Command = "x")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= (Stateno = 109)
trigger3		= ((Stateno = 103) && (animelem = 5))

;---------------------------------------------------------------------------
;Jump Mid Punch
[State -1: 		JMP]
type 			= ChangeState
value 		= 601
triggerall 		= (Command = "y")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= (Stateno = 109)
trigger4		= ((Stateno = 103) && (animelem = 5))

;---------------------------------------------------------------------------
;Jump Weak Kick
[State -1: 		JWK]
type 			= ChangeState
value 		= 610
triggerall 		= (Command = "a")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= (Stateno = 109)
trigger5		= ((Stateno = 103) && (animelem = 5))

;---------------------------------------------------------------------------
;Jump Mid Kick
[State -1: 		JMK]
type 			= ChangeState
value 		= 611
triggerall 		= (Command = "b")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= (Stateno = 109)
trigger6		= ((Stateno = 103) && (animelem = 5))

;---------------------------------------------------------------------------
Jump Strong Punch (Air Knockdown)
[State -1:		JSP]
type			= ChangeState
value			= 651
triggerall		= (Command = "holdz")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= (Stateno = 109)
trigger7		= ((Stateno = 103) && (animelem = 5))

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1: 		JSK]
type 			= ChangeState
value 		= 675
triggerall 		= (Command = "c")
trigger1		= (StateType = A) && (Ctrl)
trigger2		= ((Stateno = 600) && (movecontact))
trigger3		= ((Stateno = 601) && (movecontact))
trigger4		= ((Stateno = 610) && (movecontact))
trigger5		= ((Stateno = 611) && (movecontact))
trigger6		= (Stateno = 109)
trigger7		= ((Stateno = 103) && (animelem = 5))


