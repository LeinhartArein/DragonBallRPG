;AI
[Statedef 9999]
anim = 9999
ctrl = 0

[State 9999, 0]
type = Turn
trigger1 = facing != parent, facing

[State 9999, 1]
type = Varset
trigger1 = 1
var(9) = parent, var(9)

[State 9999, 2]
type = ParentVarSet
triggerall = parent, RoundState = 2
trigger1 = parent, command = "x"
trigger2 = parent, command = "y"
trigger3 = parent, command = "z"
trigger4 = parent, command = "a"
trigger5 = parent, command = "holdfwd"
trigger6 = parent, command = "holdback"
trigger7 = parent, command = "holdup"
trigger8 = parent, command = "holddown"
var(9) = 1

[State 9999, 3]
type = ParentVarSet
triggerall = parent, RoundState = 2
trigger1 = (command = "x" && parent, command = "x")
trigger2 = (command = "y" && parent, command = "y")
trigger3 = (command = "z" && parent, command = "z")
trigger4 = (command = "a" && parent, command = "a")
trigger5 = (command = "holdfwd" && parent, command = "holdfwd")
trigger6 = (command = "holdback" && parent, command = "holdback")
trigger7 = (command = "holdup" && parent, command = "holdup")
trigger8 = (command = "holddown" && parent, command = "holddown")
var(9) = -1

[State 9999, 4]
type = varset
trigger1 = var(9) != parent, var(9)
V = 47
value = 0

[State 9999, 5]
type = VarAdd
trigger1 = var(9) = parent, var(9)
V = 47
value = 1

[State 9999, 6]
type = Destroyself
trigger1 = parent, var(9) = -1
trigger1 = var(47) >= 23
trigger2 = parent, var(9) = 2
trigger2 = var(47) >= 23
trigger3 = RoundState = 3

[Statedef -2] ; Estado siempre presente en nuestro personaje.

[State -2, AI_Check] ; El ayudante siempre presente
type = Helper ; Ayudante
trigger1 = NumHelper(9999) = 0 ; No se repitira si esta presente ya
trigger1 = var(9) = 0 ; Variable que actúa como interruptor
trigger1 = RoundState = 2 ; Solo activado en combate
name = "AI activada" ; Nombre de la AI
id = 9999 ; Su identificador
pos = 1000, 1000 ; posición en su nivel muy alta
stateno = 9999 ; Te manda al stateno 9999
helpertype = normal ; Helper tipo normal
keyctrl = 1

[State -2,3]
type = DisplayToClipboard ; Pone el nombre en el debug
trigger1 = var(9)=1 ; Condición para que ponga el texto
text = "Inteligência Artificial Ativada" ; Nombre del texto

[State -2, AI prueba]
type = VarSet ; Tipo variable
trigger1 = command ="AI Prueba" ; Nombre del cmd
var(9) = 1 ; Pone la variable a 9 a 1

[State -2, AI desactivarlo]
type = VarSet ; Tipo variable
trigger1 = command ="AI desactivado" ; Nombre del cmd
var(9) = 0


; IA de Defensa
[State -2, IA de Defensa]
type = ChangeState
value = 132
triggerall = p2movetype = A || (enemy, NumProj >= 1) ;
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = statetype = A ; Activo unicamente si estas en el Aire
triggerall = random <= 600 ; Aquí le ponemos un poco de aleteoriedad
triggerall = var(9) = 1 ; La variable que activa la AI
triggerall = ctrl
triggerall = stateno != 132
trigger1 = p2statetype = A
trigger2 = (enemy, NumProj >= 1)

[State -2, IA de Defensa]
type = ChangeState
value = 130
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = random <= 400
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = ctrl
triggerall = stateno != 120
trigger1 = p2statetype = S
trigger2 = (enemy, NumProj >= 1)

