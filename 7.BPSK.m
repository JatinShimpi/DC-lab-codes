clc; 
close all; 
data_bits=10000;  
b=(randn(1,data_bits) > 5);  
s=2*b-1; 
SNRdB=0:9; 
for(k=1:length(SNRdB)) 
y=s+awgn(s,SNRdB(k)); 
error=0; 
for(c=1:1:data_bits) 
if (y(c)>0&& s(c)==-1)||(y(c)<0&&s(c)==1) 
error=error+1; 
end 
end 
BER(k)=error/data_bits;  
end 
figure(1); 
semilogy(SNRdB, BER, 'r', 'Linewidth', 2); 
grid on; 
hold on; 
SNR=10.^(SNRdB/10); 
BER_thBPSK=(1/2)*erfc(sqrt(SNR)); 
semilogy(SNRdB,BER_thBPSK,'k', 'linewidth', 2); 
BER_thQPSK=erfc(sqrt(SNR)); 
semilogy (SNRdB, BER_thQPSK, 'b', 'LineWidth',2); 
legend('PR-SNR','BPSK','QPSK')
