vlib work
vcom -2008 -work work "../rtl/common_verif_pack.vhd"
vcom -2008 -work work "../rtl/data_injector.vhd"
vcom -2008 -work work "../rtl/data_dumper.vhd"
vcom -2008 -work work "../rtl/AES_comps.vhd"
vcom -2008 -work work "../rtl/encrypt_SBox.vhd"
vcom -2008 -work work "../rtl/encrypt_SBox_Column.vhd"
vcom -2008 -work work "../rtl/encrypt_KeySchedule.vhd"
vcom -2008 -work work "../rtl/encrypt_Subbyte.vhd"
vcom -2008 -work work "../rtl/encrypt_shiftrows.vhd"
vcom -2008 -work work "../rtl/encrypt_mix_column.vhd"
vcom -2008 -work work "../rtl/encrypt_Key_encryption.vhd"
vcom -2008 -work work "../rtl/encrypt_AddroundKey.vhd"
vcom -2008 -work work "../rtl/encrypt_LastRound.vhd"
vcom -2008 -work work "../rtl/AES_general_tb.vhd"
vsim -t 1ps -L work -voptargs="+acc" AES_general_tb
do wave.do
run 2us