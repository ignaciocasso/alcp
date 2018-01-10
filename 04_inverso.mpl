
inverso := proc(elem,p,f,x) #caracteristica p, cuerpo Zq[x]/f
  local _,s;
  _,s,_ := eea(elem,f);
  RETURN(s mod p);
end proc;

eea := proc(g,h,p,f,x) #caracteristica p, cuerpo Zq[x]/f
  

eea := proc (a, b, p, f, x)
  local c, c1, c2, d, d1, d2, q, r, r1, r2;
  c,c1,c2 := a,1,0;
  d,d1,d2 := b,0,1;
  while d <> 0 do
    q := Quo(c, d) mod p;
    r := c-q*d mod p; r1 := c1-q*d1 mod p; r2 := c2-q*d2 mod p;
    c,c1,c2 := d,d1,d2;
    d,d1,d2 := r,r1,r2;
  end do;
  RETURN((c, c1, c2));
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
