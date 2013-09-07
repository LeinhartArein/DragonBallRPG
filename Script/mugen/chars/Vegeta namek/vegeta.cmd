
[Command]
name = "CPU_1"
command = F, F, F, F, F, F
time = 1
[Command]
name = "CPU_2"
command = b, b, b, b, b, b
time = 1
[Command]
name = "CPU_3"
command = D, U, D, U, D, U
time = 1
[Command]
name = "CPU_4"
command = a, b, b, a, a, b
time = 1
[Command]
name = "CPU_5"
command = y, y, y, y, y, y
time = 1
[Command]
name = "CPU_6"
command = x, a, x, a, x, a
time = 1
[Command]
name = "CPU_7"
command = B, B, B, B, B, B
time = 1
[Command]
name = "CPU_8"
command = z, z, z, z, z
time = 1
[Command]
name = "CPU_9"
command = c, c, c, c, c, c
time = 1
[Command]
name = "CPU_10"
command = ~D, B, F, a
time = 0
[Command]
name = "CPU_11"
command = ~D, B, a
time = 0
[Command]
name = "CPU_12"
command = ~D, B, F, b
time = 0
[Command]
name = "CPU_13"
command = ~D, DB, B, y
time = 0
[Command]
name = "CPU_14"
command = ~D, DB, B, x
time = 0
[Command]
name = "CPU_15"
command = ~F, DF, F, y
time = 0
[Command]
name = "CPU_16"
command = ~D, F, y
time = 0
[Command]
name = "furia de vegeta"
command = D, DB, B, F,z
time = 30
[Command]
name = "Ataque Meteoro"
command = D, DF, F, B ,b
time = 30
[Command]
name = "Ataque Meteoro2"
command = D, DF, F, B ,a
time = 30
[Command]
name =  "Super Bakuhatsu Ha"
command = D, DF, F, B ,x
time = 30
[Command]
name =  "Super Bakuhatsu Ha2"
command = D, DF, F, B ,y
time = 30
[Command]
name =  "Super Bakuhatsu Ha3"
command = D, DF, F, B ,z
time = 30
[Command]
name =  "Big_Bang_attack"
command = D, DB, B, F ,b
time = 30
[Command]
name =  "Big_Bang_attack_Air"
command = D, DB, B, F ,b
time = 30
[Command]
name =  "Final_Flash"
command = D, DB, B, F ,x
time = 30
[Command]
name =  "Explosion"
command = D, DB, B, F ,a
time = 30
[Command]
name =  "garlic_gun"
command = D, DB, B, F ,y
time = 30
[Command]
name = "vegeta shoryuken"
command = D, DF, F, x
[Command]
name = "furia"
command = D, DF, F, y
[Command]
name = "kiensan"
command = D, DB, B, b
[Command]
name = "tower"
command = D, DB, B, y
[Command]
name = "Rodillazo_x"
command = D, DF, F, a
[Command]
name = "Diagonal_Kicking"
command = D, DB, B, a
[Command]
name = "Elbow_Smash"
command = D, DB, B, x
[Command]
name = "Rodillazo_y"
command = D, DF, F, b
[Command] 
name = "air_kick"
command =  ~D, F, a
[Command]
name = "air_kick"
command =  ~D, F, b
[Command]
name = "velocidade"
command = a+x
[Command] 
name = "Pisoton"
command =  D, b
[Command]
name = "Pisoton"
command =  D, a
[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10
[Command]
name = "frente b"
command = /F,a
time = 1
[Command]
name = "traz b"
command = /B,a
time = 1
[Command]
name = "frente b"
command = /F,b
time = 1
[Command]
name = "traz b"
command = /B,b
time = 1
[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "fly" 
command = y+b
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
name = "hijump"
command = ~$D, $U
time = 8
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
name = "ki_blast"
command = z
[Command]
name = "ki_blast_air"
command = z
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
name = "charge"
command = /a
[Command]
name = "charge 1"
command = /b
[Command]
name = "Agarrando"
command = /F,x
[Command]
name = "Agarrando"
command = /F,y
[Statedef -1]
[State -1]
type = changestate
value = 219
triggerall = command = "Ataque Meteoro"
triggerall = power > 2500
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = changestate
value = 719
triggerall = command = "Ataque Meteoro2"
triggerall = power > 1500
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = changestate
value = 2179
triggerall = command = "furia de vegeta"
triggerall = power = 3000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 666
triggerall = command = "Super Bakuhatsu Ha"
triggerall = power > 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 6666
triggerall = command = "Super Bakuhatsu Ha2"
triggerall = power > 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 66666
triggerall = command = "Super Bakuhatsu Ha3"
triggerall = power > 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1,Final_Flash]
type = ChangeState
value = 4000
triggerall = command = "Final_Flash"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1,Garlic gun]
type = ChangeState
value = 2500
triggerall = command = "garlic_gun"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1,Big_Bang_attack]
type = ChangeState
value = 3000
triggerall = command = "Big_Bang_attack"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1,Big_Bang_attack_Air]
type = ChangeState
value = 2000
triggerall = command = "Big_Bang_attack_Air"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1,Explosion]
type = ChangeState
value = 4500
triggerall = command = "Explosion"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = changestate
value = 133
triggerall = command = "furia"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 139
triggerall = command = "vegeta shoryuken"
trigger1 = statetype != A
trigger1 = ctrl
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1]
type = ChangeState
value = 1238
triggerall = power > 200
triggerall = command = "velocidade"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1]
type = ChangeState
value = 1239
triggerall = ctrl = 1
triggerall = p2bodydist X < 5
trigger1 = command = "frente b"
trigger1 = stateno != 100
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "frente b"
trigger2 = stateno != 100
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "traz b"
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "traz b"
trigger4 = p2statetype = C
trigger4 = p2movetype != H
[State -1, ki_blast]
type = ChangeState
value = 1000 
triggerall = command = "ki_blast"
triggerall = power >= 1
trigger1 = statetype = S 
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1, ki_blast_air]
type = ChangeState
value = 1010
triggerall = command = "ki_blast_air"
triggerall = power >= 1
trigger1 = statetype = A 
trigger1 = ctrl = 1
trigger2 = stateno = 900
trigger3  = stateno = [200,400]
trigger3  = (movecontact)
[State -1, ki_blast]
type = ChangeState
value = 1200 
triggerall = command = "kiensan"
triggerall = power >= 1
trigger1 = statetype = S 
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1, ki_blast]
type = ChangeState
value = 1600 
triggerall = command = "tower"
triggerall = power >= 1
trigger1 = statetype = S 
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1,Elbow Smash]
type = ChangeState
value = 1300
triggerall = command = "Elbow_Smash"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1, Diagonal_Kicking]
type =  ChangeState
value =  1100
triggerall = command = "Diagonal_Kicking"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1, air_kick ]
type 	= ChangeState
value 	= 860
triggerall = Command =  "air_kick"
trigger1 = statetype = A
trigger1 = ctrl = 1
ignorehitpause = 1
[State -1, Pisoton]
type 	= ChangeState
value 	= 1400
triggerall = Command ="Pisoton"
trigger1 = statetype = A
trigger1 = ctrl = 1
ignorehitpause = 1
trigger2 = stateno = 900
[State -1, Rodillazo_x]
type 	= ChangeState
value 	= 1700
triggerall = Command ="Rodillazo_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1, Rodillazo_y]
type 	= ChangeState
value 	= 1750
triggerall = Command ="Rodillazo_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
trigger2  = stateno = [200,400]
trigger2  = (movecontact)
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
[State -1, Fwd]
type = ChangeState
value = 60
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50
trigger1 = Vel X >= 0
[State -1, Back]
type = ChangeState
value = 65
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 50
trigger1 = Vel X >= 0
[State -1]
type = ChangeState
value = 800
trigger1 = command = "Agarrando"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 10
[State -1]
type = ChangeState
value = 900
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 910
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 830
triggerall = power <3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S
[State -1, Stand puño debil]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "kiensan"
triggerall = command != "Big_Bang_attack"
triggerall = command != "Big_Bang_attack_Air"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
[State -1, Stand puño fuerte]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "Final_Flash"
triggerall = command != "Elbow_Smash"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
[State -1, Stand Rodillazo]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "Explosion"
triggerall = command != "Rodillazo_x"
triggerall = command != "Diagonal_Kicking"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = (stateno = 200) && time > 7
[State -1,Stand patada fuerte]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "tower"
triggerall = command != "Rodillazo_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger3 = (stateno = 200) && time > 5
[State -1, Saludo]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
[State -1, Puño debil agachado]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
[State -1, Puño fuerte agachado]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
[State -1, patada debil agachado]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
[State -1,  Patada fuerte agachado]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
[State -1, puño debil saltando]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
[State -1, Puño fuerte saltando]
type = ChangeState
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
[State -1,Patada  debil saltando]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = command != "air_kick"
triggerall = command != "Pisoton"
trigger1 = statetype = A
trigger1 = ctrl
[State -1, Patada fuerte saltando]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
[State -1]
type = VarSet
trigger1 = command = "CPU_1"
trigger2 = command = "CPU_2"
trigger3 = command = "CPU_3"
trigger4 = command = "CPU_4"
trigger5 = command = "CPU_5"
trigger6 = command = "CPU_6"
trigger7 = command = "CPU_7"
trigger8 = command = "CPU_8"
trigger9 = command = "CPU_9"
trigger10 = command = "CPU_10"
trigger11 = command = "CPU_11"
trigger12 = command = "CPU_12"
trigger13 = command = "CPU_13"          
trigger14 = command = "CPU_14"
trigger15 = command = "CPU_15"
trigger16 = command = "CPU_16"
v = 59
value = 1
[State -1, AI Explosion]
type = ChangeState
triggerall = power >= 3000
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 40
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 4500
[State -1, AI Big_Bang_attack]
type = ChangeState
triggerall = power >= 1000
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 80
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 3000
[State -1, AI Final Flash]
type = ChangeState
triggerall = power >= 2000
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 80
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 4000
[State -1, AI ki_blast]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 90
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1000
[State -1, AI ki_blast hacia arriba]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1= p2bodydist Y < -40
trigger1= p2bodydist x < -10
trigger1 = Random <= 1000
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1000
[State -1, AI ki_blast hacia abajo]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1= p2bodydist Y < 60
trigger1= p2bodydist x < -10
trigger1 = Random <= 800
trigger1 = statetype = A 
trigger1 = p2statetype != C
value    = 1010
[State -1, AI kiensan]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 140
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1200
[State -1, AI Diagonal_Kicking]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 20
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1100
[State -1, AI Elbow Smash]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 70
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1300
[State -1, AI Rodillazo]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 20
trigger1 = Random <= 400
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 1700
