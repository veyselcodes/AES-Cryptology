
v
Command: %s
53*	vivadotcl2E
1synth_design -top AES2Board -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
97202default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1024.562 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
	AES2Board2default:default2L
6C:/Users/recep/Desktop/ex_withVivado/rtl/AES2Board.vhd2default:default2
182default:default8@Z8-638h px? 
l
%s
*synth2T
@	Parameter i_Key_encryption_Nbits bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2*
encrypt_Key_encryption2default:default2W
CC:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Key_encryption.vhd2default:default2
192default:default2
i_key_s2default:default2*
encrypt_Key_encryption2default:default2L
6C:/Users/recep/Desktop/ex_withVivado/rtl/AES2Board.vhd2default:default2
572default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2*
encrypt_Key_encryption2default:default2Y
CC:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Key_encryption.vhd2default:default2
392default:default8@Z8-638h px? 
l
%s
*synth2T
@	Parameter i_Key_encryption_Nbits bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
encrypt_KeySchedule2default:default2T
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_KeySchedule.vhd2default:default2
182default:default2)
i_encrypt_KeySchedule2default:default2'
encrypt_KeySchedule2default:default2Y
CC:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Key_encryption.vhd2default:default2
602default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2'
encrypt_KeySchedule2default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_KeySchedule.vhd2default:default2
282default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
encrypt_SBox_Column2default:default2T
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
52default:default2)
i_encrypt_SBox_Column2default:default2'
encrypt_SBox_Column2default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_KeySchedule.vhd2default:default2
432default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2'
encrypt_SBox_Column2default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
122default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
encrypt_SBox2default:default2M
9C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox.vhd2default:default2
62default:default2"
i_encrypt_SBox2default:default2 
encrypt_SBox2default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
232default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
encrypt_SBox2default:default2O
9C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox.vhd2default:default2
142default:default8@Z8-638h px? 
?
default block is never used226*oasys2O
9C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox.vhd2default:default2
192default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
encrypt_SBox2default:default2
12default:default2
12default:default2O
9C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox.vhd2default:default2
142default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
encrypt_SBox2default:default2M
9C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox.vhd2default:default2
62default:default2"
i_encrypt_SBox2default:default2 
encrypt_SBox2default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
232default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
encrypt_SBox2default:default2M
9C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox.vhd2default:default2
62default:default2"
i_encrypt_SBox2default:default2 
encrypt_SBox2default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
232default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
encrypt_SBox2default:default2M
9C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox.vhd2default:default2
62default:default2"
i_encrypt_SBox2default:default2 
encrypt_SBox2default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
232default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
encrypt_SBox_Column2default:default2
22default:default2
12default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
122default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
encrypt_KeySchedule2default:default2
32default:default2
12default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_KeySchedule.vhd2default:default2
282default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
encrypt_Subbytes2default:default2P
<C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Subbyte.vhd2default:default2
62default:default2&
i_encrypt_Subbytes2default:default2$
encrypt_Subbytes2default:default2Y
CC:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Key_encryption.vhd2default:default2
692default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2$
encrypt_Subbytes2default:default2R
<C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Subbyte.vhd2default:default2
142default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
encrypt_SBox_Column2default:default2T
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
52default:default2)
i_encrypt_SBox_Column2default:default2'
encrypt_SBox_Column2default:default2R
<C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Subbyte.vhd2default:default2
252default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
encrypt_SBox_Column2default:default2T
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
52default:default2)
i_encrypt_SBox_Column2default:default2'
encrypt_SBox_Column2default:default2R
<C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Subbyte.vhd2default:default2
252default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
encrypt_SBox_Column2default:default2T
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
52default:default2)
i_encrypt_SBox_Column2default:default2'
encrypt_SBox_Column2default:default2R
<C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Subbyte.vhd2default:default2
252default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
encrypt_SBox_Column2default:default2T
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_SBox_Column.vhd2default:default2
52default:default2)
i_encrypt_SBox_Column2default:default2'
encrypt_SBox_Column2default:default2R
<C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Subbyte.vhd2default:default2
252default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
encrypt_Subbytes2default:default2
42default:default2
12default:default2R
<C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Subbyte.vhd2default:default2
142default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
encrypt_shiftrows2default:default2R
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_shiftrows.vhd2default:default2
112default:default2(
i_encrypt_mix_column2default:default2%
encrypt_shiftrows2default:default2Y
CC:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Key_encryption.vhd2default:default2
752default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2%
encrypt_shiftrows2default:default2T
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_shiftrows.vhd2default:default2
192default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2%
encrypt_shiftrows2default:default2
52default:default2
12default:default2T
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_shiftrows.vhd2default:default2
192default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
encrypt_mix_column2default:default2S
?C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_mix_column.vhd2default:default2
222default:default2'
i_encrypt_shiftrows2default:default2&
encrypt_mix_column2default:default2Y
CC:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Key_encryption.vhd2default:default2
812default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2&
encrypt_mix_column2default:default2U
?C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_mix_column.vhd2default:default2
292default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2&
encrypt_mix_column2default:default2
62default:default2
12default:default2U
?C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_mix_column.vhd2default:default2
292default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
encrypt_AddroundKey2default:default2T
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_AddroundKey.vhd2default:default2
52default:default2)
i_encrypt_AddroundKey2default:default2'
encrypt_AddroundKey2default:default2Y
CC:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Key_encryption.vhd2default:default2
892default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2'
encrypt_AddroundKey2default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_AddroundKey.vhd2default:default2
132default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
encrypt_AddroundKey2default:default2
72default:default2
12default:default2V
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_AddroundKey.vhd2default:default2
132default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
encrypt_LastRound2default:default2R
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_LastRound.vhd2default:default2
62default:default2'
i_encrypt_LastRound2default:default2%
encrypt_LastRound2default:default2Y
CC:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Key_encryption.vhd2default:default2
962default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2%
encrypt_LastRound2default:default2T
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_LastRound.vhd2default:default2
142default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
encrypt_Subbytes2default:default2P
<C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Subbyte.vhd2default:default2
62default:default2'
i1_encrypt_Subbytes2default:default2$
encrypt_Subbytes2default:default2T
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_LastRound.vhd2default:default2
392default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
encrypt_shiftrows2default:default2R
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_shiftrows.vhd2default:default2
112default:default2)
i1_encrypt_mix_column2default:default2%
encrypt_shiftrows2default:default2T
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_LastRound.vhd2default:default2
452default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
encrypt_AddroundKey2default:default2T
@C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_AddroundKey.vhd2default:default2
52default:default2*
i1_encrypt_AddroundKey2default:default2'
encrypt_AddroundKey2default:default2T
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_LastRound.vhd2default:default2
512default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2%
encrypt_LastRound2default:default2
82default:default2
12default:default2T
>C:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_LastRound.vhd2default:default2
142default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2*
encrypt_Key_encryption2default:default2
92default:default2
12default:default2Y
CC:/Users/recep/Desktop/ex_withVivado/rtl/encrypt_Key_encryption.vhd2default:default2
392default:default8@Z8-256h px? 
?
default block is never used226*oasys2L
6C:/Users/recep/Desktop/ex_withVivado/rtl/AES2Board.vhd2default:default2
1012default:default8@Z8-226h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
number2default:default2L
6C:/Users/recep/Desktop/ex_withVivado/rtl/AES2Board.vhd2default:default2
1232default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
result2default:default2L
6C:/Users/recep/Desktop/ex_withVivado/rtl/AES2Board.vhd2default:default2
1232default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	AES2Board2default:default2
102default:default2
12default:default2L
6C:/Users/recep/Desktop/ex_withVivado/rtl/AES2Board.vhd2default:default2
182default:default8@Z8-256h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1024.562 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1024.562 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1024.562 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0802default:default2
1024.5622default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2[
EC:/Users/recep/Desktop/AES2/AES2.srcs/constrs_1/new/seven_segment.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2[
EC:/Users/recep/Desktop/AES2/AES2.srcs/constrs_1/new/seven_segment.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Y
EC:/Users/recep/Desktop/AES2/AES2.srcs/constrs_1/new/seven_segment.xdc2default:default2/
.Xil/AES2Board_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1024.5622default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1024.5622default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1024.562 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1024.562 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1024.562 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2*
encrypt_Key_encryption2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                             0000 |                            00000
2default:defaulth p
x
? 
?
%s
*synth2s
_                read_txt |                             0001 |                            00001
2default:defaulth p
x
? 
?
%s
*synth2s
_                      r1 |                             0010 |                            00010
2default:defaulth p
x
? 
?
%s
*synth2s
_                      r2 |                             0011 |                            00011
2default:defaulth p
x
? 
?
%s
*synth2s
_                      r3 |                             0100 |                            00100
2default:defaulth p
x
? 
?
%s
*synth2s
_                      r4 |                             0101 |                            00101
2default:defaulth p
x
? 
?
%s
*synth2s
_                      r5 |                             0110 |                            00110
2default:defaulth p
x
? 
?
%s
*synth2s
_                      r6 |                             0111 |                            00111
2default:defaulth p
x
? 
?
%s
*synth2s
_                      r7 |                             1000 |                            01000
2default:defaulth p
x
? 
?
%s
*synth2s
_                      r8 |                             1001 |                            01001
2default:defaulth p
x
? 
?
%s
*synth2s
_                      r9 |                             1010 |                            01010
2default:defaulth p
x
? 
?
%s
*synth2s
_                      lr |                             1011 |                            10000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2*
encrypt_Key_encryption2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1024.562 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input    128 Bit         XORs := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit         XORs := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit         XORs := 16    
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              128 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  128 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input  128 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 32    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1024.562 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping	Report
2default:defaulth px? 
?
%s*synth2?
?+--------------------+---------------------------------------------------------------------------------------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name         | RTL Object                                                                                  | Depth x Width | Implemented As | 
2default:defaulth px? 
?
%s*synth2?
?+--------------------+---------------------------------------------------------------------------------------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2?
?|encrypt_SBox        | o_SBox_S                                                                                    | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_KeySchedule | i_encrypt_SBox_Column/SBOXCOL[0].i_encrypt_SBox/o_SBox_S                                    | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_KeySchedule | i_encrypt_SBox_Column/SBOXCOL[1].i_encrypt_SBox/o_SBox_S                                    | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_KeySchedule | i_encrypt_SBox_Column/SBOXCOL[2].i_encrypt_SBox/o_SBox_S                                    | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_KeySchedule | i_encrypt_SBox_Column/SBOXCOL[3].i_encrypt_SBox/o_SBox_S                                    | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[0].i_encrypt_SBox_Column/SBOXCOL[0].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[0].i_encrypt_SBox_Column/SBOXCOL[1].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[0].i_encrypt_SBox_Column/SBOXCOL[2].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[0].i_encrypt_SBox_Column/SBOXCOL[3].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[1].i_encrypt_SBox_Column/SBOXCOL[0].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[1].i_encrypt_SBox_Column/SBOXCOL[1].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[1].i_encrypt_SBox_Column/SBOXCOL[2].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[1].i_encrypt_SBox_Column/SBOXCOL[3].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[2].i_encrypt_SBox_Column/SBOXCOL[0].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[2].i_encrypt_SBox_Column/SBOXCOL[1].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[2].i_encrypt_SBox_Column/SBOXCOL[2].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[2].i_encrypt_SBox_Column/SBOXCOL[3].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[3].i_encrypt_SBox_Column/SBOXCOL[0].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[3].i_encrypt_SBox_Column/SBOXCOL[1].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[3].i_encrypt_SBox_Column/SBOXCOL[2].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_Subbytes    | SBOXSubbyte[3].i_encrypt_SBox_Column/SBOXCOL[3].i_encrypt_SBox/o_SBox_S                     | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[0].i_encrypt_SBox_Column/SBOXCOL[0].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[0].i_encrypt_SBox_Column/SBOXCOL[1].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[0].i_encrypt_SBox_Column/SBOXCOL[2].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[0].i_encrypt_SBox_Column/SBOXCOL[3].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[1].i_encrypt_SBox_Column/SBOXCOL[0].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[1].i_encrypt_SBox_Column/SBOXCOL[1].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[1].i_encrypt_SBox_Column/SBOXCOL[2].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[1].i_encrypt_SBox_Column/SBOXCOL[3].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[2].i_encrypt_SBox_Column/SBOXCOL[0].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[2].i_encrypt_SBox_Column/SBOXCOL[1].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[2].i_encrypt_SBox_Column/SBOXCOL[2].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[2].i_encrypt_SBox_Column/SBOXCOL[3].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[3].i_encrypt_SBox_Column/SBOXCOL[0].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[3].i_encrypt_SBox_Column/SBOXCOL[1].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[3].i_encrypt_SBox_Column/SBOXCOL[2].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?|encrypt_LastRound   | i1_encrypt_Subbytes/SBOXSubbyte[3].i_encrypt_SBox_Column/SBOXCOL[3].i_encrypt_SBox/o_SBox_S | 256x8         | LUT            | 
2default:defaulth px? 
?
%s*synth2?
?+--------------------+---------------------------------------------------------------------------------------------+---------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 1036.219 ; gain = 11.656
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:00:37 . Memory (MB): peak = 1070.359 ; gain = 45.797
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1070.359 ; gain = 45.797
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:42 ; elapsed = 00:00:43 . Memory (MB): peak = 1076.137 ; gain = 51.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:42 ; elapsed = 00:00:43 . Memory (MB): peak = 1076.137 ; gain = 51.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1076.137 ; gain = 51.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1076.137 ; gain = 51.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:43 ; elapsed = 00:00:44 . Memory (MB): peak = 1076.137 ; gain = 51.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:43 ; elapsed = 00:00:44 . Memory (MB): peak = 1076.137 ; gain = 51.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |     5|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     4|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    96|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    29|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    40|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   334|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |  1505|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |   592|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |   283|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |   551|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |     5|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |    11|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:43 ; elapsed = 00:00:44 . Memory (MB): peak = 1076.137 ; gain = 51.574
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:33 ; elapsed = 00:00:41 . Memory (MB): peak = 1076.137 ; gain = 51.574
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:43 ; elapsed = 00:00:44 . Memory (MB): peak = 1076.137 ; gain = 51.574
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0632default:default2
1086.0002default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
8802default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1086.0002default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:492default:default2
00:00:522default:default2
1086.0002default:default2
61.4382default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2O
;C:/Users/recep/Desktop/AES2/AES2.runs/synth_1/AES2Board.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file AES2Board_utilization_synth.rpt -pb AES2Board_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Feb 22 15:01:08 20212default:defaultZ17-206h px? 


End Record