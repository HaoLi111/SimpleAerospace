#Thrust
P_E_simp<-function(ita,k,mc_t) mc_t*k*ita
#k for heat factor
#ita - efficiency from heat to mechanical of the rocket
FT_simp_P_V_Fmax<-function(P,V,Fmax) ifelse((P/V)>Fmax,Fmax,P/V)

FT_simp<-function(V,Fmax,ita,k,mc_t) FT_simp_P_V_Fmax(P_E_simp(ita,k,mc_t),V,Fmax)
