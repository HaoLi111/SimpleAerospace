Drag = function(Cd,rho,S,v) .5*Cd*rho*S*v^2
rhoFromH<-function(H = 0) ifelse(H<=17000,101.325e3*(1-H*.0065/288.15)^(9.80665*0.0289644/8.31447/.0065)*0.0289644/8.31447/(288.15-H*0.0065),0)
Drag_H = function(Cd,H,S,v) .5*Cd*rhoFromH(H=H)*S*v^2
Drag_H_r =function(Cd,H,r,v) Drag_H(Cd,H,pi*r*r,v)

#https://spaceflightsystems.grc.nasa.gov/education/rocket/shaped.html

Cd_default = list(model_rocket = .75,
                  typical_airfoil = .045,
                  flat_plate = .28,
                  bullet = .295,
                  wedge_shaped_prism = 1.14,
                  sphere_min = .07,
                  sphere_max = .5)
#Specify for a concept and a mathematical model
Drag_V2<-function(H,v,r=1.65/2) Drag_H_r(Cd = Cd_v_H_V2(v = v,H=H),
                                         H,
                                         r,
                                         v)
#Drag_V2(H = 1200,v=1000)
