clc,clear,close all;
function key_out = Key_Schedule(key_in,key_number)
 Sbox={ "63",	"7c",	"77",	"7b",	"f2",	"6b",	"6f",	"c5",	"30",	"01",	"67",	"2b",	"fe",	"d7",	"ab",	"76", "ca",	"82",	"c9",	"7d",	"fa",	"59",	"47",	"f0",	"ad",	"d4",	"a2",	"af",	"9c",	"a4",	"72",	"c0", "b7",	"fd",	"93",	"26",	"36",	"3f",	"f7",	"cc",	"34",	"a5",	"e5",	"f1",	"71",	"d8",	"31",	"15", "04",	"c7",	"23",	"c3",	"18",	"96",	"05",	"9a",	"07",	"12",	"80",	"e2",	"eb",	"27",	"b2",	"75", "09",	"83",	"2c",	"1a",	"1b",	"6e",	"5a",	"a0",	"52",	"3b",	"d6",	"b3",	"29",	"e3",	"2f",	"84",  "53",	"d1",	"00",	"ed",	"20",	"fc",	"b1",	"5b",	"6a",	"cb",	"be",	"39",	"4a",	"4c",	"58",	"cf",  "d0",	"ef",	"aa",	"fb",	"43",	"4d",	"33",	"85",	"45",	"f9",	"02",	"7f",	"50",	"3c",	"9f",	"a8", "51",	"a3",	"40",	"8f",	"92",	"9d",	"38",	"f5",	"bc",	"b6",	"da",	"21",	"10",	"ff",	"f3",	"d2", "cd",	"0c",	"13",	"ec",	"5f",	"97",	"44",	"17",	"c4",	"a7",	"7e",	"3d",	"64",	"5d",	"19",	"73", "60",	"81",	"4f",	"dc",	"22",	"2a",	"90",	"88",	"46",	"ee",	"b8",	"14",	"de",	"5e",	"0b",	"db", "e0",	"32",	"3a",	"0a",	"49",	"06",	"24",	"5c",	"c2",	"d3",	"ac",	"62",	"91",	"95",	"e4",	"79", "e7",	"c8",	"37",	"6d",	"8d",	"d5",	"4e",	"a9",	"6c",	"56",	"f4",	"ea",	"65",	"7a",	"ae",	"08", "ba",	"78",	"25",	"2e",	"1c",	"a6",	"b4",	"c6",	"e8",	"dd",	"74",	"1f",	"4b",	"bd",	"8b",	"8a", "70",	"3e",	"b5",	"66",	"48",	"03",	"f6",	"0e",	"61",	"35",	"57",	"b9",	"86",	"c1",	"1d",	"9e", "e1",	"f8",	"98",	"11",	"69",	"d9",	"8e",	"94",	"9b",	"1e",	"87",	"e9",	"ce",	"55",	"28",	"df", "8c",	"a1",	"89",	"0d",	"bf",	"e6",	"42",	"68",	"41",	"99",	"2d",	"0f",	"b0",	"54",	"bb",	"16"};
 
% input    F     S     T     FT              F:first S:second T:Third FT:Fourth rows of input signals.
%key_in={ "54", "73", "20", "67";
%         "68", "20", "4B", "20"; 
%         "61", "6D", "75", "46"; 
%         "74", "79", "6E", "75"}
         
key_word0=key_in(:,4);
key_word1=key_in(:,3);
key_word2=key_in(:,2);
key_word3=key_in(:,1);

% Fourt row is shifted by one times downto up
rot_key_word0=circshift (key_in(:,4), -1);

% Fourth row is converted with Sbox
converted_key_word0=Sbox(1,hex2dec(rot_key_word0(:,1))+1);


% Assigning RCON matrix   In this matrix RCON[key_number=1] will be 01000000 and key_number will determine the RCON
RCON = {
          "01", "02", "04", "08", "10", "20", "40", "80", "1B", "36", "6C", "D8", "AB", "4D", "9A";
          "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00";
          "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00";
          "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00", "00";
          };

% Refined Fourth row, First Row and RCON XOR'ed
key_out_template3=  dec2hex(bitxor(bitxor(hex2dec(converted_key_word0),hex2dec(key_word3)),hex2dec(RCON(:,key_number))));            %dec2hex(bitxor(bitxor(hex2dec(converted_key_word0),hex2dec(key_word3),hex2dec(RCON(:,key_number)))))

% Second Row and New Key's First Row XOR'ed
key_out_template2= dec2hex(bitxor(hex2dec(key_out_template3),hex2dec(key_word2)));

% Third Row and New Key's First Row XOR'ed
key_out_template1= dec2hex(bitxor(hex2dec(key_out_template2),hex2dec(key_word1)));

% Fourth Row and New Key's First Row XOR'ed
key_out_template0= dec2hex(bitxor(hex2dec(key_out_template1),hex2dec(key_word0)));

% Concatenate all matrix
key_out={ };
for i=1:4
 key_out(i,1)=strcat (key_out_template3(i,1),key_out_template3(i,2));
 key_out(i,2)=strcat (key_out_template2(i,1),key_out_template2(i,2));
 key_out(i,3)=strcat (key_out_template1(i,1),key_out_template1(i,2));
 key_out(i,4)=strcat (key_out_template0(i,1),key_out_template0(i,2));
endfor