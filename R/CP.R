#https://spaceflightsystems.grc.nasa.gov/education/rocket/rktcp.html
#https://spaceflightsystems.grc.nasa.gov/education/rocket/cp.html


#Center of pressure estimation

CP_<-function(Px_from_x_func,P_from_x_func,xmin,xmax) integrate(Px_from_x_func,xmin,xmax)$value-integeate(P_from_x_func,xmin,xmax)$value

CP_simp<-function(a,d) sum(a*d)/sum(a)
CP_simp_r<-function(r,d) CP_simp(pi*diff(r)^2,d)
CP_Simp_R<-function(m) CP_simp_r(m[,'r'],m[,'d'])

#Center of mass estimation

CM<-function(Mx_from_x_func,M_from_x_func,xmin,xmax) integrate(Px_from_x_func,xmin,xmax)$value-integeate(P_from_x_func,xmin,xmax)$value
