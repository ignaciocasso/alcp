
# Si K = R/<m> es un cuerpo, con R un domineo euclideo y <m> ideal maximal, se puede calcular el inverso aplicando el
# algoritmo de euclides extendido: mcd(k,m)=1, ya que m es primo, y si 1 = sk+tm, s es el inverso de k, ya que sk=sk+tm=1 mod m# 

inverso := proc(g,x,p,f:=x) #cuerpo Zq[x]/<f>,  Zp = Zp[x]/<x>, asi que tambien vale, aunque seria mas eficiente el de abajo
  local s,t;
  Gcdex(g,f,x,'s','t') mod p;
  return s;
end proc;

inverso_p := proc(z,p)
  local s,t;
  igcdex(z,p,'s','t');
  return s mod p;
end proc;
