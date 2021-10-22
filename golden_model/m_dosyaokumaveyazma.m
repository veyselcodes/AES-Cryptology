clc,clear,close all;
[a]=textread('../verif/i_matlab_Inputs.txt',"%s");
b=a';
cnt=1;
fid=fopen('../verif/o_matlab_Outputs.txt','w+');
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
  fprintf(fid,'%0.f =>\t\t',cnt);
  for j = 1:16
    Y=cell2mat(X(1,j));
    fprintf(fid,'%s ',Y);
  endfor
  fprintf(fid,'\n');
  key_in={};
  cipher={};
  cnt=cnt +1;
endif;
endfor
fclose(fid)