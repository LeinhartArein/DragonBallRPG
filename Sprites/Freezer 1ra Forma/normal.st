; VEGETO
;
; vars
; i0 = combo seq.
; i5 = direçao/ataque
; i6 = 182 usa .. timer recover
;
; f0 = lembra pos x
; f1 = lembra pos y
;

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = A
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181+random*3/999

;---------------------------------------------------------------------------
; Win pose 1
[Statedef 181]
type = S
;ctrl = 0
anim = 0
velset = 0,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, winpose]
type = AssertSpecial
trigger1 = time <= 300
flag = RoundNotOver

[State 181, vars da posx]
type = VarSet
trigger1 = !time
persistent = 0
fv = 1
value = pos x

[State 181, vars da posy]
type = VarSet
trigger1 = !time
persistent = 0
fv = 2
value = pos y

[State 181, passa]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0, 1

[State 181, wuuum]
type = PosSet
trigger1 = 1
x = sin(time*1*pi/60)*30 + cos(time*3*pi/60)*30 + fvar(1)
y = cos(time*1*pi/60)*30 + sin(time*3*pi/60)*30 + fvar(2)-50

;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = A
ctrl = 0
anim = 0
velset = 0,0

[State 182, ninguem me pegaaa]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182, winpose]
type = AssertSpecial
trigger1 = time <= 400
flag = RoundNotOver

[State 182, vira pra p2]
type = Turn
trigger1 = enemy(0), pos x < pos x
trigger1 = facing = 1

[State 182, wuuum]
type = veladd
triggerall = !var(6)
trigger1 = abs(enemy(0), pos x - pos x) > 30
trigger2 = abs(enemy(0), pos y - pos y) > 30
x = .1 -.2*(vel x > abs(enemy(0), pos x - pos x)/40)
y = .1 -.2*(vel y > (enemy(0), pos y - pos y)/40) -(time<100)*(100-time)/99

[State 182, para mermao]
type = velset
triggerall = !var(6)
trigger1 = abs(enemy(0), pos x - pos x) <= 30
trigger1 = abs(enemy(0), pos y - pos y) <= 30
x = 0
y = 0

[State 182, var mermao0]
type = varset
trigger1 = !time
v = 6
value = 0

[State 182, var mermao1]
type = varadd
trigger1 = abs(enemy(0), pos x - pos x) <= 30
trigger1 = abs(enemy(0), pos y - pos y) <= 30
trigger2 = var(6)
v = 6
value = 1

[State 182, para mermao]
type = velset
trigger1 = var(6)
x = sin(time*3*pi/60)*4
y = -sin(var(6)*pi/60)*1.5

;---------------------------------------------------------------------------
; Win pose 3
[Statedef 183]
type = S
ctrl = 0
anim = 0
velset = 0,0

[State 183, ninguem me pegaaa]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 183, winpose]
type = AssertSpecial
trigger1 = time <= 400
flag = RoundNotOver

[State 183, vars da posx]
type = VarSet
trigger1 = !time
persistent = 0
fv = 1
value = pos x

[State 183, vars da posy]
type = VarSet
trigger1 = !time
persistent = 0
fv = 2
value = pos y

[State 183, wuuum]
type = veladd
trigger1 = time < 40
x = .01
y = -.05

[State 183, poim]
type = PlaySnd
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = F6, 0
freqmul = .9+abs(ifelse(vel y *.07<.4,vel y *.07,.4))

[State 183, wuuum1]
type = veladd
trigger1 = time > 40
trigger1 = pos y < -1
y = .1

[State 183, para mermao]
type = velset
trigger1 = abs(vel y) < .6
trigger1 = vel y > 0
trigger1 = time > 45
trigger1 = pos y > 0
y = 0

[State 183, para mermao1]
type = posset
trigger1 = vel y = 0
trigger1 = time > 45
trigger1 = pos y > 0
y = 0

[State 183, wuuum2]
type = velmul
trigger1 = vel y > 0
trigger1 = pos y >= 0
y = -.65

[State 183, wuuum3]
type = velmul
trigger1 = vel y = 0
trigger1 = pos y = 0
x = .985*(vel x > .1)


;---------------------------------------------------------------------------
; Introduction
[Statedef 191]
type = S
ctrl = 0
anim = 0
velset = 0,0

[State 191, playerpush]
type = playerpush
trigger1 = 1
value = 0

[State 191, bound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 191, vars da posx]
type = VarSet
trigger1 = !time
persistent = 0
fv = 1
value = pos x

[State 191, vars da posy]
type = VarSet
trigger1 = !time
persistent = 0
fv = 2
value = pos y

[State 191, wuuum]
type = PosSet
trigger1 = time <= 120
x = sin(time*2*pi/60)*50 + fvar(1)
y = cos(time*1*pi/60)*50 + fvar(2)-80

[State 191, wuuum2]
type = PosSet
trigger1 = time > 120
x = cos(gametime*1.2*pi/60)*2 + fvar(1)
y = sin(gametime*1*pi/60)*4 + fvar(2)-30

[State 191, intro]
type = AssertSpecial
trigger1 = time <= 120
flag = Intro

[State 191, 4]
type = ChangeState
trigger1 = time = 400
value = 1

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd= 00

[State 195, power normal]
type = null;PowerAdd
triggerall = !var(51)
trigger1 = AnimElemNo(0) >= 4
trigger1 = AnimElemNo(0) <= 6
value = 10


;---------------------------------------------------------------------------
; Flutua
[Statedef 1]
type = S
physics = N
sprpriority = 0
anim = 0
facep2 = 1
ctrl = 0

[State 1, para x]
type = VelSet
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
trigger1 = abs(vel x) < .1
x = 0

[State 1, para y]
type = VelSet
triggerall = command != "holddown" || pos y > 0
triggerall = command != "holdup"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
trigger1 = abs(vel y) < .1
;trigger2 = pos y > 0
y = 0

[State 1, breca h]
type = velmul
trigger1 = command != "holdback"
trigger1 = command != "holdfwd"
trigger2 = abs(vel x) >= 4
x = .95

[State 1, breca v]
type = velmul
trigger1 = command != "holddown"
trigger1 = command != "holdup"
trigger2 = abs(vel y) >= 4
y = .95

[State 1, dust]
type = MakeDust
trigger1 = pos y > -50
trigger1 = abs(vel x) > 4
trigger2 = pos y > 0
trigger2 = vel y > 0
pos = 0, floor(-pos y)
spacing = (2+floor(abs(pos y)/4)+(abs(vel x) < 3)*3)*(pos y < 0)+(pos y >= 0)

[State 1, poim]
type = PlaySnd
trigger1 = vel y < 0
trigger1 = screenpos y < 5
trigger2 = vel y > 0
trigger2 = pos y >= 0
value = F6, 0
freqmul = .9+abs(ifelse(vel y *.07<.5,vel y *.07,.5))
;freqmul = 1.2-abs(vel y)*.07

[State 1, caiu]
type = changestate
trigger1 = vel y < 0
trigger1 = screenpos y < 5
trigger2 = vel y > 0
trigger2 = pos y >= 0
value = 3
ctrl = 0

[State 1, poim]
type = VelMul
trigger1 = vel y < 0
trigger1 = screenpos y < 5
trigger2 = vel y > 0
trigger2 = pos y >= 0
y = -1

[State 1, pa frente]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = abs(vel x) < 4
x = .1

[State 1, tras]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = abs(vel x) < 4
x = -.1

[State 1, vira]
type = Turn
trigger1 = p2dist x < 0

[State 1, desce]
type = VelAdd
triggerall = abs(vel y) < 4
trigger1 = command = "holddown"
trigger1 = pos y < -15
trigger2 = screenpos y < 5
y = .1 + (screenpos y < 5)*.1

[State 1, sobe]
type = VelAdd
triggerall = abs(vel y) < 4
trigger1 = command = "holdup"
trigger1 = screenpos y > 10
trigger2 = pos y >= -10
y = -.1

[State 1, wuuum]
type = PosAdd
trigger1 = -pos y > 10
trigger1 = abs(vel y) < 2
trigger1 = command != "holddown"
trigger1 = command != "holdup"
x = cos(gametime*1.2*pi/60)*.5
y = sin(gametime*1*pi/60)*1.2

[State 1, desce denovo]
type = PosAdd
trigger1 = pos y < - 40
y = .01 - (pos y)/500

[State 1, cabooo]
type = changestate
trigger1 = roundstate > 2
value = 0


;---------------------------------------------------------------------------
; Corre
[Statedef 2]
type = A
physics = N
sprpriority = 1
anim = 0
ctrl = 1

[State 2, som]
type = PlaySnd
trigger1 = !time
value = 0, 0
freqmul = .35

[State 2, dust]
type = MakeDust
trigger1 = pos y > -50
trigger1 = abs(vel x) > 4
trigger2 = pos y > 0
trigger2 = vel y > 0
pos = 0, floor(-pos y)
spacing = (2+floor(abs(pos y)/4)+(abs(vel x) < 3)*3)*(pos y < 0)+(pos y >= 0)

[State 2, poim]
type = PlaySnd
trigger1 = vel y < 0
trigger1 = screenpos y < 5
trigger2 = vel y > 0
trigger2 = pos y >= 0
value = F6, 0
freqmul = .9+abs(ifelse(vel y *.07<.5,vel y *.07,.5))
;freqmul = 1.2-abs(vel y)*.07

[State 2, poim]
type = VelMul
trigger1 = vel y < 0
trigger1 = screenpos y < 5
trigger2 = vel y > 0
trigger2 = pos y >= 0
y = -1

[State 2, pa frente]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = abs(vel x) < 8
x = .2+var(5)*.1+!time*1.5

[State 2, tras]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = abs(vel x) < 8
x = -.2-var(5)*.1-!time*1.5

[State 2, cima]
type = VelAdd
trigger1 = command = "holdup"
trigger1 = abs(vel y) < 8
y = -.2-!var(5)*.1-!time*1.5

[State 2, baixo]
type = VelAdd
trigger1 = command = "holddown"
trigger1 = abs(vel y) < 8
trigger1 = pos y < -10
y = .2+!var(5)*.1+!time*1.5

[State 2, afterimg]
type = afterimage
trigger1 = !time
trigger2 = time%500=0
time = 505
length = 8
palbright = 100, 100, 100
palcontrast = 256, 256, 256
paladd = -35, -35, -35
palmul = 1 , 1 ,1
trans = sub
timegap = 1
framegap = 1
;persistent = 5


[State 2, volta]
type = ChangeState
trigger1 = var(5)
trigger1 = command != "holdback"
trigger1 = command != "holdfwd"
trigger2 = !var(5)
trigger2 = command != "holdup"
trigger2 = command != "holddown"
trigger3 = command = "holdback"
trigger3 = vel x > 2
trigger4 = command = "holdfwd"
trigger4 = vel x < -2
trigger5 = command = "holdup"
trigger5 = vel y > 2
trigger6 = command = "holddown"
trigger6 = vel y < -2
value = 3
ctrl = 1

;---------------------------------------------------------------------------
; Para
[Statedef 3]
type = A
physics = N
sprpriority = 1
anim = 0
ctrl = 0

[State 3, dust]
type = MakeDust
trigger1 = pos y > -50
trigger1 = abs(vel x) > 4
trigger2 = pos y > 0
trigger2 = vel y > 0
pos = 0, floor(-pos y)
spacing = (2+floor(abs(pos y)/4)+(abs(vel x) < 3)*3)*(pos y < 0)+(pos y >= 0)

[State 3, poim]
type = PlaySnd
trigger1 = vel y < 0
trigger1 = screenpos y < 5
trigger2 = vel y > 0
trigger2 = pos y >= 0
value = F6, 0
freqmul = .9+abs(ifelse(vel y *.07<.5,vel y *.07,.5))

[State 3, poim]
type = VelMul
trigger1 = vel y < 0
trigger1 = screenpos y < 5
trigger2 = vel y > 0
trigger2 = pos y >= 0
y = -1

[State 3, breca]
type = velmul
trigger1 = 1
x = .95
y = .95

[State 3, volta]
type = ChangeState
trigger1 = time > 30
value = 1
ctrl = 1

;---------------------------------------------------------------------------
; recover
[Statedef 4]
type = S
physics = N
sprpriority = 1
anim = 0
ctrl = 0

[State 4, som]
type = PlaySnd
trigger1 = !time
value = 0, 3
freqmul = 1.5

[State 4, som]
type = PlaySnd
trigger1 = !time
value = 0, 2
freqmul = 1.5

[State 4, timer ativa 6]
type = VarSet
trigger1 = !time
v = 6
value = 30

[State 4, para]
type = VelSet
trigger1 = !time
x = 0
y = 0

[State 4, para]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4, makedust]
type = MakeDust
trigger1 = 1
pos = 0, 0;floor(-pos y)
pos2 = 0, 1
spacing = 1
persistent = 0


[State 4, volta]
type = ChangeState
trigger1 = time > 5
value = 1
ctrl = 1


;---------------------------------------------------------------------------
; Stand fraco Punch
[Statedef 600]
type    = S
movetype= A
physics = N
juggle  = 4
;Commonly-used controllers:
velset = 0,0
ctrl = 0
anim = 1
poweradd = 22
sprpriority = 2

[State 600, som]
type = PlaySnd
trigger1 = !time
value = 0, 0
freqmul = .8-var(5)*.1

[State 600, zuum]
type = VelSet
trigger1 = pos y < 0
trigger1 = time < 10
x = 8-(time>5)*16 -1
y = -(4-(time>5)*8)*var(5)

[State 600, para tio]
type = VelSet
trigger1 = time >= 10
x = 0
y = 0

[State 600, para y]
type = VelSet
trigger1 = abs(vel y) < .01
y = 0

[State 600, breca]
type = velmul
trigger1 = 1
;x = .95
y = .95

[State 600, hitdef]
type = HitDef
trigger1 = time=4
attr = S, NA
damage = 10, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 1, Hit
pausetime = 5, 5
sparkno = 0
sparkxy = 0+30*MoveGuarded, -30
hitsound = 5, var(5)=1
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 20
;air.hittime  = 14
ground.velocity = -4, 0
air.velocity = -2.5, -1
guard.velocity = -4
air.type = Low
fall.damage = 10

[State 600, anim]
type = ChangeAnim
trigger1 = time > 6
value = 0

[State 600, sai]
type = ChangeState
trigger1 = time > 25
trigger2 = pos y >= 0
trigger3 = screenpos y <= 0
value = 1
ctrl = 1

;---------------------------------------------------------------------------
; Stand medio Punch
[Statedef 610]
type    = S
movetype= A
physics = N
juggle  = 4
;Commonly-used controllers:
velset = 0,0
ctrl = 0
anim = 1
poweradd = 33
sprpriority = 2

[State 610, som]
type = PlaySnd
trigger1 = time=10
value = 0, 1
freqmul = .8-var(5)*.1

[State 610, zuum]
type = VelSet
trigger1 = pos y < 0
trigger1 = time < 30
x = sin(time*5*pi/60+pi)*4 + 6*sin(time*3*pi/60)
y = -sin(time*5*pi/60)*4*var(5)

[State 610, pa tras]
type = null;VelAdd
trigger1 = movecontact
persistent = 0
x = -4
y = -2

[State 610, para tio]
type = VelSet
trigger1 = time >= 30
x = 0
y = 0

[State 610, para y]
type = VelSet
trigger1 = abs(vel y) < .1
y = 0

[State 610, breca]
type = velmul
trigger1 = 1
;x = .95
y = .95

[State 610, hitdef]
type = HitDef
trigger1 = time = 15
;trigger2 =  time = 20
attr = S, NA
damage = 22, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 1, Hit
pausetime = 10, 6
sparkno = 0
sparkxy = 0+30*MoveGuarded, -30
hitsound = 5, 2
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 25
air.hittime  = 25
ground.velocity = -5, 0
air.velocity = -3, 0
guard.velocity = -4
air.type = Low
fall.damage = 10
givepower = 0

[State 610, anim]
type = ChangeAnim
trigger1 = time > 22
value = 0

[State 610, sai]
type = ChangeState
trigger1 = time > 40
trigger2 = pos y >= 0
trigger3 = screenpos y <= 0
value = 1
ctrl = 1

;---------------------------------------------------------------------------
; Stand forte Punch
[Statedef 620]
type    = S
movetype= A
physics = N
juggle  = 6
;Commonly-used controllers:
velset = 0,0
ctrl = 0
anim = 1
poweradd = 33
sprpriority = 2

[State 620, som]
type = PlaySnd
trigger1 = !time
value = 0, 1
freqmul = .9-var(5)*.1

[State 620, som2]
type = PlaySnd
trigger1 = time=15
value = 0, 2
freqmul = .8-var(5)*.1

[State 620, zuum]
type = VelSet
trigger1 = pos y < 0
trigger1 = time < 30
x = -cos(time*5*pi/60+pi)*6+1
y = -sin(time*5*pi/60)*5*var(5)

[State 620, para y]
type = VelSet
trigger1 = abs(vel y) < .1
y = 0

[State 620, breca]
type = velmul
trigger1 = time >= 30
x = .9
y = .9

[State 620, hitdef]
type = HitDef
trigger1 = time = 4
trigger2 = time = 24
attr = S, NA
damage = 20+time, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 15, 8
sparkno = 0
sparkxy = 0+30*MoveGuarded, -30
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 30
guard.hittime  = 10
ground.velocity = -4, -(time>=20)*7*var(5)
air.velocity = -2, -(time>=20)*7*var(5)
guard.velocity = -3
p2facing = 1
air.type = Low
fall = time>=20;(var(5)-1)*(time>=20)
fall.recovertime = 30
fall.damage = 10
givepower = 0

[State 620, anim]
type = ChangeAnim
trigger1 = time > 35
value = 0

[State 620, sai]
type = ChangeState
trigger1 = time > 60
trigger2 = pos y >= 0
trigger3 = screenpos y <= 0
value = 1
ctrl = 1







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;