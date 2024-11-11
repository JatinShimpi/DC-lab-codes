clc;
clear all;
close all;
n=input('Enter the value of n: ');
k=input('Enter the value of k: ');
m=n-k;
G=cyclpoly(n,k,'max')
poly2sym(G)
d1=[1 0 0 0];
poly2sym(d1)
c1=poly2sym(d1)*poly2sym(G)
d2=[0 1 0 0];
poly2sym(d2)
c2=poly2sym(d2)*poly2sym(G)
d3=[0 0 1 0];
poly2sym(d3)
c3=poly2sym(d3)*poly2sym(G)
d4=[0 0 0 1];
poly2sym(d4)
c4=poly2sym(d4)*poly2sym(G)
s=[c1;c2;c3;c4]
d=[d1;d2;d3;d4]
c=d*s
parmat=hammgen(m)
trt=syndtable(parmat)

recd=[0 1 0 1 0 0 0]
syndrome=rem(recd*parmat',2)
syndrome_de=bi2de(syndrome,'left-msb')
disp([syndrome,'left-msb'])
disp(['Syndrome=',num2str(syndrome_de), '(decimal) ',num2str(syndrome_de),'(binary)'])
Error=trt(1+syndrome_de,:)
corrrctedcode= rem(Error+recd,2)
recd=[1 1 0 1 1 0 1]
syndrome=rem(recd*parmat',2)
syndrome_de=bi2de(syndrome,'left-msb');
disp(['Syndrome=',num2str(syndrome_de), '(decimal)', num2str(syndrome_de),'(binary)'])
Error=trt(1+syndrome_de,:)
correctedcode=rem(Error+recd,2)