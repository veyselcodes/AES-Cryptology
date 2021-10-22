onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /aes_general_tb/Cipher
add wave -noupdate /aes_general_tb/Key
add wave -noupdate /aes_general_tb/Encryption
add wave -noupdate /aes_general_tb/UUT/o_Key_encryption_KS
add wave -noupdate /aes_general_tb/i_dumper/data_valid
add wave -noupdate /aes_general_tb/i_injector_Key/eof
add wave -noupdate /aes_general_tb/AES_valid_out
add wave -noupdate /aes_general_tb/write_valid
add wave -noupdate /aes_general_tb/inj_valid_out
add wave -noupdate /aes_general_tb/UUT/i_Key_encryption_valid
add wave -noupdate /aes_general_tb/UUT/key_number
add wave -noupdate /aes_general_tb/UUT/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {248504 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 149
configure wave -valuecolwidth 235
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {958690 ps}
