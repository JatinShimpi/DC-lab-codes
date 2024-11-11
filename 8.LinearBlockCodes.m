clc;
clear all;
k=input('Enter the length of msg word:');
n=input('Enter the length of codeword:');
p=input('Enter the parity matrix:');
G=[eye(k);p;];m=input('Enter the length of msg word:');

H=[eye(n-k) p']
dtable=syndtable(H)
R=input('Enter the received code word');
%S=R*H'
S_B=rem(R*H' ,2)
S_D=bi2de(S_B, 'left-msb')
if(S_D==0)
    disp('The recieved codeword is valid:')
else
    disp('The corrected codeword is invalid:')
    
E=dtable(S_D+1, :)

%CC=R+E
disp('The corrected codeword is: ')
cc=rem(R+E, 2)
msg=cc(1:k)
end