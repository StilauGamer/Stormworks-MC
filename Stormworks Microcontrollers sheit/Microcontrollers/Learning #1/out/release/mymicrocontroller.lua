-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2019 (2353) chars
bp="Start"
bo="Pumps"
bn="Clutch"
bm=240
bl=true
bk=false
bj=input
bi=screen
bh=bi.drawRect
bg=bi.setColor
bf=output.setBool
be=bi.drawRectF
bd=bj.getNumber
b=b or{}b.c={d=function(e,f,g,h,i,j)return e>g and e<g+i and f>h and f<h+j;
end;
k=function(l,m,n)return(1-n)*l+n*m
end;}b.o={p=function(q,r)r=r or 0
q.s=bd(r+1)q.t=bd(r+2)q.u=bd(r+3)q.v=bd(r+4)q.w=q.x or bk
q.x=bj.getBool(r+1)end;
y=function(q,e,f,z,A)local B={C=q,e=e,f=f,z=z,A=A,D=function(q)return q.C.x
and not q.C.w
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;
E=function(q)return q.C.x
and b.c.d(q.C.u,q.C.v,q.e,q.f,q.z,q.A)end;}return B
end;}F=be
G=property.getText
H="00019209B400AAAA793CA54A555690015244449415500BA0004903800009254956D4592EC54EC51C53A4F31C5354E52455545594104110490A201C7008A04504FFFE57DAD75C7246D6DCF34EF3487256B7DAE92E64D4975A924EBEDAF6DAF6DED74856B2D75A711CE924B6D4B6A4B6FAB55AB524E54ED24C911264965400000E"
I={}J=0
for K in H:gmatch("....")do I[J+1]=tonumber(K,16)J=J+1 end
function L(e,f,n,M,N,O)M=M or 1
N=N or 1
if N>2then n=n:reverse()end
n=n:upper()for P in n:gmatch(".")do
Q=P:byte()-31if 0<Q and Q<=J then
for R=1,15 do
if N>2 then S=2^R else S=2^(16-R)end
if I[Q]&S==S then
T,U=((R-1)%3)*M,((R-1)//3)*M
if N%2==1then F(e+T,f+U,M,M)else F(e+5-U,f+T,M,M)end
end
end
if I[Q]&1==1 and not O then
R=2*M
else
R=4*M
end
if N%2==1then e=e+R else f=f+R end
end
end
end
function onDraw()L(10,10,"Hello, World!",5)end
V=b.o:y(1,1,29,8)W=b.o:y(1,11,29,8)X=b.o:y(1,21,29,8)function onTick()b.o:p()if V:E()then
bf(1,bl)Y=bl
else
bf(1,bk)Y=bk
end
if W:D()then
Z=not Z
end
if Z then
bf(2,bl)Z=bl
else
bf(2,bk)Z=bk
end
if X:D()then
bb=not bb
end
if bb then
bf(3,bl)bb=bl
else
bf(3,bk)bb=bk
end
end
function onDraw()bg(bm,bm,bm)L(6,3,bp)L(6,13,bo)L(4,23,bn)if Y then
be(1,1,29,8)bg(0,0,0)L(6,3,bp)bg(bm,bm,bm)else
bh(1,1,29,8)end
if Z then
be(1,11,29,8)bg(0,0,0)L(6,13,bo)bg(bm,bm,bm)else
bh(1,11,29,8)end
if bb then
be(1,21,29,8)bg(0,0,0)L(4,23,bn)bg(bm,bm,bm)else
bh(1,21,29,8)end
bc()end
function bc()bh(1,1,29,8)bh(1,11,29,8)bh(1,21,29,8)end
