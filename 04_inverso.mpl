
############ COMPROBAR QUE FUNCIONA EN MAPLE

# Si K = R/<m> es un cuerpo, con R un domineo euclideo y <m> ideal maximal, se puede calcular el inverso aplicando el
# algoritmo de euclides extendido: mcd(k,m)=1, ya que m es primo, y si 1 = sk+tm, s es el inverso de k, ya que sk=sk+tm=1 mod m# 

inverso := proc(g,x,p,f=x) #cuerpo Zq[x]/<f>,  Zp = Zp[x]/<x>, asi que tambien vale, aunque seria mas eficiente el de abajo
  local s,t;
  Gcdex(g,f,'s','t') mod p;
  return s;
end proc;

inverso_p := proc(z,p)
  local s,t;
  gcdex(z,p,'s','t');
  return s mod p;
end proc;

# Prueba 1: cuerpo Zp

p:=17;
inverso(13,17);

# Prueba 2: cuerpo Zp[x]/<f>

p:=5;
n:=4;
irr:=Randprime(n,x) mod p;
elem := Randpoly(3,x) mod p;
inverso(elem,p,irr,x);

#prueba 3: cuerpo F25[x]/<f>

p:=5;
n:=2;
irr:=Randprime(2,x) mod p;
alias(q=RootOf(irr));
f:=randprime(3,x,q);
elem:=Randpoly(2,x,q);
inverso(elem,p,f,x);
