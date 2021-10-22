clc,clear,close all;
% Number is the last number of random key and cipher encryption process
Number = 15;

% Fiel are opened
  fid=fopen('../verif/i_matlab_Inputs.txt','w+');
  fid1=fopen('../verif/i_Key.txt','w+');
  fid2=fopen('../verif/i_Cipher.txt','w+');
for k = 1: Number
  key = dec2hex(randi(255, 4))
  cipher = dec2hex(randi(255, 4))
  % Writing Key
  for i = 1:16
    fprintf(fid1,'%s',strcat(key(i,1),key(i,2)));
    if(i<=15)
      fprintf(fid,'%s ',strcat(key(i,1),key(i,2)));
    else
      fprintf(fid,'%s\t\t',strcat(key(i,1),key(i,2)));
    endif;
  endfor
  fprintf(fid1,'\n');
  % Writing Cipher
  for i = 1:16
    fprintf(fid2,'%s',strcat(cipher(i,1),cipher(i,2)));
    if(i<=15)
      fprintf(fid,'%s ',strcat(cipher(i,1),cipher(i,2)));
    else
      fprintf(fid,'%s\t\t',strcat(cipher(i,1),cipher(i,2)));
    endif;
  endfor
  fprintf(fid2,'\n');
  % Writing Number N
  RandX=[10 10 10 10 10];
  z=RandX(randi(5))
  fprintf(fid,'%d\n', z);
endfor

%Close the File
fclose(fid)
fclose(fid1)
fclose(fid2)

% Making Output Txt File
%{
clc,clear,close all;
[a]=textread('Inputs.txt',"%s");
b=a';
cnt=1;
key_in={};
cipher={};
fid2=fopen('Outputs.txt','w+');
for i = 1:columns(b)
if(mod(i,33)>0 && mod(i,33)<=16)
  key_in(1,mod(i,33))=b(1,i);
elseif(mod(i,33)>=17 && mod(i,33)<=32)
  cipher(1,mod(i,33)-16)=b(1,i);
endif;
if(mod(i,33)==0)
  N=str2double(b(1,i))
  X={ };
  X= Encryption(key_in,cipher,N);
  fprintf(fid2,'%0.f =>\t\t',cnt);
  for j = 1:16
    Y=cell2mat(X(1,j));
    fprintf(fid2,'%s ',Y);
  endfor
  fprintf(fid2,'\n');
  key_in={};
  cipher={};
  cnt=cnt +1;
endif;
endfor
fclose(fid2)
}%