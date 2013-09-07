;
; VEGETO
;
; overridden states
; states sobrepostos
; 
;
;

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0
facep2 = 1
anim = 0
ctrl = (roundstate!=2)

[State 0, nao acerta no chao]
type = NotHitBy
trigger1 = !pos y
time = 35
value = SCA

[State 0, 2]
type = VelSet
trigger1 = Time = 0
trigger1 = pos y = 0
trigger2 = roundstate > 2
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
trigger3 = roundstate > 2
x = 0

[State 0, sobe]
type = VelAdd
triggerall = roundstate = 2
;trigger1 = -pos y < 20
trigger1 = -vel y < 2
y = -.1

[State 0, wuuum]
type = PosAdd
triggerall = roundstate = 2
trigger1 = -pos y > 1
trigger1 = abs(vel y) < 2
x = cos(gametime*1.2*pi/60)*.5
y = sin(gametime*1*pi/60)*1.2


[State 0, flutua]
type = ChangeState
triggerall = roundstate = 2
trigger1 = -pos y > 50
trigger2 = command = "holdfwd"
trigger3 = command = "holdback"
trigger4 = command = "holdup"
trigger5 = command = "holddown"
value = 1
ctrl = 1

[State 0, cabo]
type = ChangeState
trigger1 = roundstate > 2
trigger1 = !ctrl
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, nao acerta no chao]
type = NotHitBy
trigger1 = !pos y
time = 25
value = SCA

[State 52, dust]
type = MakeDust
trigger1 = pos y > 0
trigger1 = vel y > 0
pos = 0, floor(-pos y)
spacing = 5

[State 52, poim]
type = PlaySnd
trigger1 = !time
value = F6, 0
freqmul = .9+abs(ifelse(vel y *.07<.5,vel y *.07,.5))

[State 52, poim]
type = VelMul
trigger1 = vel y > 0
trigger1 = pos y >= 0
y = -.2

[State 52, 4]
type = ChangeState
trigger1 = !time
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = 1 ;Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = 1 ;Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 52, nao acerta no chao]
type = NotHitBy
trigger1 = !pos y
time = 25
value = SCA

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
;value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
value = F6, 0
freqmul = .9+abs(ifelse(abs(sysvar(1))*.07<.5,abs(sysvar(1))*.07,.5))
;freqmul = 1.3-ifelse(abs(sysvar(1))*.07<.3,abs(sysvar(1))*.07,.3)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 52, nao acerta no chao]
type = NotHitBy
trigger1 = !pos y
time = 25
value = SCA

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
;value = F7, 0 ;Hit ground
;value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
value = F6, 0
freqmul = .9+abs(ifelse(abs(sysvar(1))*.07<.5,abs(sysvar(1))*.07,.5))
;freqmul = 1.3-ifelse(abs(sysvar(1))*.07<.3,abs(sysvar(1))*.07,.3)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, .5]
type = VelMul
trigger1 = !time
x = .5
y = .5

[State 5200, 1]
type = ChangeState
trigger1 = 1
value = 3
ctrl = 0

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5210, .5]
type = VelMul
trigger1 = !time
x = .5
y = .5

[State 5210, 1]
type = ChangeState
trigger1 = 1
value = 3
ctrl = 0


;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundno = 1
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundno = 1
fvalue = 0

[State 5900, 3] ;Intro
type = ChangeState
trigger1 = roundno = 1
value = 190

[State 5900, vars da posx]
type = VarSet
trigger1 = !time
persistent = 0
fv = 1
value = pos x

[State 5900, vars da posy]
type = VarSet
trigger1 = !time
persistent = 0
fv = 2
value = pos y

[State 5900, wuuum2]
type = PosSet
trigger1 = roundno > 1
x = cos(gametime*1.2*pi/60)*2 + fvar(1)
y = sin(gametime*1*pi/60)*4 + fvar(2)-30









;
;
;
;
;
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
