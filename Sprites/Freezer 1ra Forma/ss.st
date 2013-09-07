; ###################################### ;
; #/¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\# ;
; #| Special States (-2 e -3) VEGETO  |# ;
; #\__________________________________/# ;
; ###################################### ;

[Statedef -2]

;---debug-------- ;;;;;;;;;; DEBUG DEBUG DEBUG ;;;;;;;;;;;;;
[State -2, debug]
trigger1 = 1
type = DisplayToClipboard
ignorehitpause = 1
;text = "VEGETO \n v5:%d .. hityaccel=%f cnsyaccel=%f"
;params = var(5), GetHitVar(yaccel), const(movement.yaccel)
text = "VEGETO \n v5:%d .. posx=%f posy=%f velx=%f vely=%f"
params = var(5), pos x , pos y , vel x , vel y

;naum defende:
[State -2, a.special1]
trigger1 = 1
type = AssertSpecial
ignorehitpause = 1
flag = NoAirGuard
flag2 = NoStandGuard
flag3 = NoCrouchGuard

[State -2, a.special2]
trigger1 = 1
type = AssertSpecial
ignorehitpause = 1
flag = NoWalk
;flag2 = NoStandGuard
;flag3 = NoCrouchGuard

[State -2, pro 1]
type = changestate
trigger1 = stateno = [10,55]
trigger1 = stateno != 52
value = 1
ctrl = 1
ignorehitpause = 1

[State -2, timer do recover]
type = VarAdd
trigger1 = var(6)
trigger1 = roundstate = 2
v = 6
value = -1

;;;;;;;;;;;;;;;;; - 3 ;;;;;;;;;;;;;;;;;;;;;;
[Statedef -3]

;;;;;;;;;;;;;;;;afterimage cancela ;;;;;;;;;
[State -3, afterimg]
type = afterimage
triggerall = stateno != 2
trigger1 = time = 10
trigger1 = movetype = h
trigger2 = stateno = 1
trigger2 = time = 20
trigger3 = time = 1
trigger3 = prevstateno = 1
trigger4 = stateno = 4
trigger4 = time = 1
time = 1

[State -3, nao cai]
type = null;VelAdd
triggerall = !gethitvar(fall)
trigger1 = stateno = [5030,5050]
trigger2 = stateno = 5071
y = -gethitvar(yaccel)*.5

[State -3, nao empurra]
type = playerpush
trigger1 = movetype = A
value = 0




;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;

