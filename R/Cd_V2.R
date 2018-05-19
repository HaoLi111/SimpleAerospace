#http://aerorocket.com/AeroCFD/Instructions.html

Cd_Mach_V2<-function(Mach) ifelse(Mach<1,.3,(Mach-1)*(-.08/.5)+.48)
Cd_v_H_V2<-function(v,H) Cd_Mach_V2(v/Mach1(H))
#Cd_Mach_V2(.5)
#Cd_v_H_V2(v = 300,300)
