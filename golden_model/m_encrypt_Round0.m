clc,clear,close all;
function round_out = Round0(key_in,cipher_key)
%Round 0
new_sate_matrix0={ };
for i=1:4
 for j = 1:4
 new_sate_matrix0(i,j)=bitxor(hex2dec(key_in(i,j)),hex2dec(cipher_key(i,j)));
 endfor
endfor
A=dec2hex(new_sate_matrix0);
C={ };
for i = 1:4
 C(i,1)=strcat(A(i,1),A(i,2));
 C(i,2)=strcat(A(i+4,1),A(i+4,2));
 C(i,3)=strcat(A(i+8,1),A(i+8,2));
 C(i,4)=strcat(A(i+12,1),A(i+12,2));
endfor
round_out=C;