clc,clear,close all;
function [round_out,Key] = Round1to9(state_matrix,cipher_key,key_number)
  
Sbox={ "63",	"7c",	"77",	"7b",	"f2",	"6b",	"6f",	"c5",	"30",	"01",	"67",	"2b",	"fe",	"d7",	"ab",	"76", "ca",	"82",	"c9",	"7d",	"fa",	"59",	"47",	"f0",	"ad",	"d4",	"a2",	"af",	"9c",	"a4",	"72",	"c0", "b7",	"fd",	"93",	"26",	"36",	"3f",	"f7",	"cc",	"34",	"a5",	"e5",	"f1",	"71",	"d8",	"31",	"15", "04",	"c7",	"23",	"c3",	"18",	"96",	"05",	"9a",	"07",	"12",	"80",	"e2",	"eb",	"27",	"b2",	"75", "09",	"83",	"2c",	"1a",	"1b",	"6e",	"5a",	"a0",	"52",	"3b",	"d6",	"b3",	"29",	"e3",	"2f",	"84",  "53",	"d1",	"00",	"ed",	"20",	"fc",	"b1",	"5b",	"6a",	"cb",	"be",	"39",	"4a",	"4c",	"58",	"cf",  "d0",	"ef",	"aa",	"fb",	"43",	"4d",	"33",	"85",	"45",	"f9",	"02",	"7f",	"50",	"3c",	"9f",	"a8", "51",	"a3",	"40",	"8f",	"92",	"9d",	"38",	"f5",	"bc",	"b6",	"da",	"21",	"10",	"ff",	"f3",	"d2", "cd",	"0c",	"13",	"ec",	"5f",	"97",	"44",	"17",	"c4",	"a7",	"7e",	"3d",	"64",	"5d",	"19",	"73", "60",	"81",	"4f",	"dc",	"22",	"2a",	"90",	"88",	"46",	"ee",	"b8",	"14",	"de",	"5e",	"0b",	"db", "e0",	"32",	"3a",	"0a",	"49",	"06",	"24",	"5c",	"c2",	"d3",	"ac",	"62",	"91",	"95",	"e4",	"79", "e7",	"c8",	"37",	"6d",	"8d",	"d5",	"4e",	"a9",	"6c",	"56",	"f4",	"ea",	"65",	"7a",	"ae",	"08", "ba",	"78",	"25",	"2e",	"1c",	"a6",	"b4",	"c6",	"e8",	"dd",	"74",	"1f",	"4b",	"bd",	"8b",	"8a", "70",	"3e",	"b5",	"66",	"48",	"03",	"f6",	"0e",	"61",	"35",	"57",	"b9",	"86",	"c1",	"1d",	"9e", "e1",	"f8",	"98",	"11",	"69",	"d9",	"8e",	"94",	"9b",	"1e",	"87",	"e9",	"ce",	"55",	"28",	"df", "8c",	"a1",	"89",	"0d",	"bf",	"e6",	"42",	"68",	"41",	"99",	"2d",	"0f",	"b0",	"54",	"bb",	"16"};


initial_round_matrix=hex2dec(state_matrix);
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

  %MixColumns
mix_matrix={"02" "03" "01" "01";
            "01" "02" "03" "01"; 
            "01" "01" "02" "03"; 
            "03" "01" "01" "02"};

%MixColumn_new_state_matrix0(1,1)= mix_matrix(1,1)*substituded_new_state_matrix0(1,1)+mix_matrix(1,2)*substituded_new_state_matrix0(2,1)+...
mix_column_matrix={};
for h = 1:4
for i=1:4
 Total=0;
 for j = 1:4
 if(hex2dec(mix_matrix(h,j))==3)                        % Multiply by 3 means 2 times XOR 1 times
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
%Calling Round Key
Key=Key_Schedule(cipher_key,key_number);
AddRoundkey_matrix={};
for i=1:4
 for j = 1:4
 AddRoundkey_matrix(i,j)=dec2hex(bitxor(hex2dec(dec2hex(mix_column_matrix(i,j))),hex2dec(Key(i,j))));
 endfor
endfor
round_out=AddRoundkey_matrix;