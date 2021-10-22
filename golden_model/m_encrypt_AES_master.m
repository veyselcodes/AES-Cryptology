clc,clear,close all;
function round_out = Encryption(key,cipher,N)
Sbox={ "63",	"7c",	"77",	"7b",	"f2",	"6b",	"6f",	"c5",	"30",	"01",	"67",	"2b",	"fe",	"d7",	"ab",	"76", "ca",	"82",	"c9",	"7d",	"fa",	"59",	"47",	"f0",	"ad",	"d4",	"a2",	"af",	"9c",	"a4",	"72",	"c0", "b7",	"fd",	"93",	"26",	"36",	"3f",	"f7",	"cc",	"34",	"a5",	"e5",	"f1",	"71",	"d8",	"31",	"15", "04",	"c7",	"23",	"c3",	"18",	"96",	"05",	"9a",	"07",	"12",	"80",	"e2",	"eb",	"27",	"b2",	"75", "09",	"83",	"2c",	"1a",	"1b",	"6e",	"5a",	"a0",	"52",	"3b",	"d6",	"b3",	"29",	"e3",	"2f",	"84",  "53",	"d1",	"00",	"ed",	"20",	"fc",	"b1",	"5b",	"6a",	"cb",	"be",	"39",	"4a",	"4c",	"58",	"cf",  "d0",	"ef",	"aa",	"fb",	"43",	"4d",	"33",	"85",	"45",	"f9",	"02",	"7f",	"50",	"3c",	"9f",	"a8", "51",	"a3",	"40",	"8f",	"92",	"9d",	"38",	"f5",	"bc",	"b6",	"da",	"21",	"10",	"ff",	"f3",	"d2", "cd",	"0c",	"13",	"ec",	"5f",	"97",	"44",	"17",	"c4",	"a7",	"7e",	"3d",	"64",	"5d",	"19",	"73", "60",	"81",	"4f",	"dc",	"22",	"2a",	"90",	"88",	"46",	"ee",	"b8",	"14",	"de",	"5e",	"0b",	"db", "e0",	"32",	"3a",	"0a",	"49",	"06",	"24",	"5c",	"c2",	"d3",	"ac",	"62",	"91",	"95",	"e4",	"79", "e7",	"c8",	"37",	"6d",	"8d",	"d5",	"4e",	"a9",	"6c",	"56",	"f4",	"ea",	"65",	"7a",	"ae",	"08", "ba",	"78",	"25",	"2e",	"1c",	"a6",	"b4",	"c6",	"e8",	"dd",	"74",	"1f",	"4b",	"bd",	"8b",	"8a", "70",	"3e",	"b5",	"66",	"48",	"03",	"f6",	"0e",	"61",	"35",	"57",	"b9",	"86",	"c1",	"1d",	"9e", "e1",	"f8",	"98",	"11",	"69",	"d9",	"8e",	"94",	"9b",	"1e",	"87",	"e9",	"ce",	"55",	"28",	"df", "8c",	"a1",	"89",	"0d",	"bf",	"e6",	"42",	"68",	"41",	"99",	"2d",	"0f",	"b0",	"54",	"bb",	"16"};
% input    F     S     T     FT              F:first S:second T:Third FT:Fourth rows of input signals.
##key_in={ "32", "88", "31", "E0";
##         "43", "5A", "31", "37"; 
##         "F6", "30", "98", "07"; 
##         "A8", "8D", "A2", "34"}
#Key:    { "32", "88", "31", "E0", "43", "5A", "31", "37", "F6", "30", "98", "07", "A8", "8D", "A2", "34"}
#         { "54", "77", "6F", "20", "4F", "6E", "65", "20", "4E", "69", "6E", "65", "20", "54", "77", "6F"}   
#Cipher: { "2B", "28", "AB", "09" "7E", "AE", "F7", "CF" "15", "D2", "15", "4F" "16", "A6", "88", "3C"}
#         { "54", "68", "61", "74", "73", "20", "6D", "79", "20", "4B", "75", "6E", "67", "20", "46", "75"}
% Convert key from 1x16 to 4x4 matrix
for i = 1:4
 key_in(i,1)=key(1,i);
 key_in(i,2)=key(1,i+4);
 key_in(i,3)=key(1,i+8);
 key_in(i,4)=key(1,i+12);
endfor
% Convert cipher from 1x16 to 4x4 matrix
for i = 1:4
 cipher_key(i,1)=cipher(1,i);
 cipher_key(i,2)=cipher(1,i+4);
 cipher_key(i,3)=cipher(1,i+8);
 cipher_key(i,4)=cipher(1,i+12);
endfor
##cipher_key={ "2B", "28", "AB", "09";
##             "7E", "AE", "F7", "CF"; 
##             "15", "D2", "15", "4F"; 
##             "16", "A6", "88", "3C"}
Round0=Round0(key_in,cipher_key);
[Round1,Key1]=Round1to9(Round0,cipher_key,1);
[Round2,Key2]=Round1to9(Round1,Key1,2);
[Round3,Key3]=Round1to9(Round2,Key2,3);
[Round4,Key4]=Round1to9(Round3,Key3,4);
[Round5,Key5]=Round1to9(Round4,Key4,5);
[Round6,Key6]=Round1to9(Round5,Key5,6);
[Round7,Key7]=Round1to9(Round6,Key6,7);
[Round8,Key8]=Round1to9(Round7,Key7,8);
[Round9,Key9]=Round1to9(Round8,Key8,9);
if(N <= 10)
  printf("N is lower than or equals to 10\n")
  [RoundL,Key10]=LastRound(Round9,Key9,10);
elseif( N <= 12)
  printf("N is lower than or equals to 12\n")
  [Round10,Key10]=Round1to9(Round9,Key9,10);
  [Round11,Key11]=Round1to9(Round10,Key10,11);
  [RoundL,Key12]=LastRound(Round11,Key11,12);
else
   printf("N is lower than or equals to 14\n")
  [Round10,Key10]=Round1to9(Round9,Key9,10);
  [Round11,Key11]=Round1to9(Round10,Key10,11);
  [Round12,Key12]=Round1to9(Round11,Key11,12);
  [Round13,Key13]=Round1to9(Round12,Key12,13);
  [RoundL,Key14]=LastRound(Round13,Key13,14);
endif;
# Roundout Conversion from 4x4 to 1x16
for i = 1:4
 roundout(1,i)    = RoundL(i,1);
 roundout(1,i+4)  = RoundL(i,2);
 roundout(1,i+8)  = RoundL(i,3);
 roundout(1,i+12) = RoundL(i,4);
endfor
round_out=roundout;
%{
%Round 0
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
C
%}

%[Round10,Key10]=Round10(Round9,Key9,10)
%{
%Round 1
initial_round_matrix=hex2dec(C);
  %Substitude
substituded_new_state_matrix0={ };
for i=1:4
 for j = 1:4
 substituded_new_state_matrix0(j,i)=Sbox(1,initial_round_matrix(4*(i-1)+j,1)+1);
 endfor
endfor
substituded_new_state_matrix0
  %Shift Rows
for i = 2:4
 substituded_new_state_matrix0(i,:)= circshift (substituded_new_state_matrix0(i,:), 1-i);
 endfor

  %MixColumns
mix_matrix={"02" "03" "01" "01";
            "01" "02" "03" "01"; 
            "01" "01" "02" "03"; 
            "03" "01" "01" "02"};
% Multiply by 3 means 2 times XOR 1 times
%MixColumn_new_state_matrix0(1,1)= mix_matrix(1,1)*substituded_new_state_matrix0(1,1)+mix_matrix(1,2)*substituded_new_state_matrix0(2,1)+...
mix_column_matrix={};
for h = 1:4
for i=1:4
 Total=0;
 for j = 1:4
 if(hex2dec(mix_matrix(h,j))==3)
    B=2*hex2dec(substituded_new_state_matrix0(j,i));
    if(B>=256)
      B=B-256;
      B=bitxor(B,hex2dec("1B"));
    endif;
    B=bitxor(B,hex2dec(substituded_new_state_matrix0(j,i)));
 endif
 if(hex2dec(mix_matrix(h,j))==2)
    B=2*hex2dec(substituded_new_state_matrix0(j,i));
    if(B>=256)
      B=B-256;
      B=bitxor(B,hex2dec("1B"));
    endif;
 endif
 if(hex2dec(mix_matrix(h,j))==1)
    B=hex2dec(substituded_new_state_matrix0(j,i));
 endif
 Total=bitxor(Total,B);
 mix_column_matrix(h,i)=Total;
 endfor
endfor
endfor

  %AddRoundkey
%Calling Round1 Key
Key1=Key_Schedule(cipher_key,1);
AddRoundkey_matrix={};
for i=1:4
 for j = 1:4
 AddRoundkey_matrix(i,j)=dec2hex(bitxor(hex2dec(dec2hex(mix_column_matrix(i,j))),hex2dec(Key1(i,j))));
 endfor
endfor%}

%{
initial_round_matrix=hex2dec(Round9);
  %Substitude
substituded_new_state_matrix0={ };
for i=1:4
 for j = 1:4
 substituded_new_state_matrix0(j,i)=Sbox(1,initial_round_matrix(4*(i-1)+j,1)+1);
 endfor
endfor
  %Shift Rows
for i = 2:4
 substituded_new_state_matrix0(i,:)= circshift (substituded_new_state_matrix0(i,:), 1-i);
 endfor

  %AddRoundkey
%Calling Round Key
Key=Key_Schedule(Key9,10);
AddRoundkey_matrix={};
for i=1:4
 for j = 1:4
 AddRoundkey_matrix(i,j)=dec2hex(bitxor(hex2dec(substituded_new_state_matrix0(i,j)),hex2dec(Key(i,j))));
 endfor
endfor
AddRoundkey_matrix%}