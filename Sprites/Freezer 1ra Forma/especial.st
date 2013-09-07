; VEGETO
;

;---------------------------------------------------------------------------
; sei la

[Statedef 1000]
type    = A
movetype= A
physics = N
juggle  = 4
;velset = 0,0
ctrl = 0
anim = 1
poweradd = 50
sprpriority = 2

[State 1000, som]
type = PlaySnd
trigger1 = !time
value = 0, 1
freqmul = .6
volume = 100

[State 1000, som]
type = PlaySnd
trigger1 = time=20
value = 0, 2
freqmul = .8

[State 1000, tchan]
type = PalFx
trigger1 = !time
time = 20
sinadd = 200,100,-50,40

[State 1000, som]
type = PlaySnd
trigger1 = movehit
value = F5, 3
freqmul = .5
persistent = 0

[State 1000, breca]
type = velmul
trigger1 = 1
x = .8
y = .8

[State 1000, zuum]
type = VelSet
trigger1 = pos y < 0
trigger1 = time = [20,30]
x = 12*cos((time-20)*pi/20)
y = -12*sin((time-20)*pi/20)

[State 1000, dust]
type = MakeDust
trigger1 = pos y > -60
trigger1 = abs(vel x) > 2
trigger2 = pos y > 0
trigger2 = vel y > 0
pos = 0, floor(-pos y)
spacing = (1+floor(abs(pos y)/4)+(abs(vel x) < 3)*3)*(pos y < 0)+(pos y >= 0)

[State 1000, hitdef]
type = HitDef
trigger1 = time=20
attr = S, NA
damage = 85, 15
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = 0
sparkxy = 0+30*MoveGuarded, -30
;hitsound = 5, 1+var(5)=1
guardsound = 6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 50
air.hittime  = 50
guard.hittime  = 30
ground.velocity = -4.5, -10
air.velocity = -2.5, -8
guard.velocity = -4
air.type = Low
fall.damage = 10
palfx.time = 10
palfx.sinadd = 100,20,20,20
givepower = 0

[State 1000, anim]
type = ChangeAnim
trigger1 = time > 30
value = 0

[State 1000, -push]
type = PlayerPush
trigger1 = time > 20
value = 0

[State 1000, lerdo]
type = Pause
trigger1 = movehit
trigger1 = roundstate = 2
time = 1
movetime = 1
ignorehitpause = 1

[State 1000, tchanan]
type = BgPalFx
trigger1 = MoveHit
time = 10
sinadd = 150,80,80,20
persistent = 0

[State 1000, sai]
type = ChangeState
trigger1 = time > 60
trigger2 = pos y >= 0
trigger3 = screenpos y <= 0
value = 1
ctrl = 1







;;
;;

