sip -V -cgnd 2 -s -o -sub 2 -mlc poly,mt1 -n 1.4 -i 0,1.401 -b 	mt1,poly,diff,sti -t mt3,mt4,mt5,mt6,mt7,mt8,mt9 -j 0.14 -Maxw 2.1 -p 	mt2,key 0,1.4 - mt2.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc mt1,mt2 -n 2.1 -i 0,2.101 -b 	mt2,mt1,poly,diff,sti -t mt4,mt5,mt6,mt7,mt8,mt9 -j 0.14 -Maxw 2.1 -p 	mt3,key 0,2.1 - mt3.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc mt2,mt3 -n 2.1 -i 0,2.101 -b 	mt3,mt2,mt1,poly,diff,sti -t mt5,mt6,mt7,mt8,mt9 -j 0.14 -Maxw 2.1 -p 	mt4,key 0,2.1 - mt4.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc mt3,mt4 -n 2.1 -i 0,2.101 -b 	mt4,mt3,mt2,mt1,poly,diff,sti -t mt6,mt7,mt8,mt9 -j 0.14 -Maxw 2.1 -p 	mt5,key 0,2.1 - mt5.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc mt4,mt5 -n 2.1 -i 0,2.101 -b 	mt5,mt4,mt3,mt2,mt1,poly,diff,sti -t mt7,mt8,mt9 -j 0.14 -Maxw 2.1 -p 	mt6,key 0,2.1 - mt6.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc mt5,mt6 -n 2.1 -i 0,2.101 -b 	mt6,mt5,mt4,mt3,mt2,mt1,poly,diff,sti -t mt8,mt9 -j 0.14 -Maxw 2.1 -p 	mt7,key 0,2.1 - mt7.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc mt6,mt7 -n 6.6 -i 0,6.601 -b 	mt7,mt6,mt5,mt4,mt3,mt2,mt1,poly,diff,sti -t mt9 -j 0.44 -Maxw 6.6 -p 	mt8,key 0,6.6 - mt8.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc mt7,mt8 -n 6.6 -i 0,6.601 -b 	mt8,mt7,mt6,mt5,mt4,mt3,mt2,mt1,poly,diff,sti -j 0.44 -Maxw 6.6 -p 	mt9,key 0,6.6 - mt9.sip
sip -V -cgnd 2 -s -o -sub 2 -cp poly,allGate,diff -n 1.2 -i 	0,1.201 -b diff,sti -t mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9 -j 0.1 	-Maxw 1.5 -p poly,key 0,1.2 - poly.sip
sip -V -cgnd 2 -s -o -sub 2 -mlc poly -n 1.2 -i 0,1.201 -b 	poly,diff,sti -t mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9 -j 0.12 -Maxw 1.8 -p 	mt1,key 0,1.2 - mt1.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -b 	mt7,mt6,mt5,mt4,mt3,mt2,mt1,poly,diff,sti -Maxw 6.6 -p 	mt8,key,mt9,key 0,6.6,0 - mt8_mt9.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R mt9 -b 	mt6,mt5,mt4,mt3,mt2,mt1,poly,diff,sti -Maxw 6.6 -p mt7,key,mt9,key 	0,6.6,0 - mt7_mt9.sip
sip -V -s -cgnd 2 -sub 2 -h -b 	mt6,mt5,mt4,mt3,mt2,mt1,poly,diff,sti -t mt9 -Maxw 6.6 -p 	mt7,key,mt8,key 0,6.6,0 - mt7_mt8.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R mt8 -b 	mt5,mt4,mt3,mt2,mt1,poly,diff,sti -t mt9 -Maxw 6.6 -p mt6,key,mt8,key 	0,6.6,0 - mt6_mt8.sip
sip -V -s -cgnd 2 -sub 2 -h -b mt5,mt4,mt3,mt2,mt1,poly,diff,sti 	-t mt8,mt9 -Maxw 2.1 -p mt6,key,mt7,key 0,2.1,0 - mt6_mt7.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R mt7 -b 	mt4,mt3,mt2,mt1,poly,diff,sti -t mt8,mt9 -Maxw 2.1 -p mt5,key,mt7,key 	0,2.1,0 - mt5_mt7.sip
sip -V -s -cgnd 2 -sub 2 -h -b mt4,mt3,mt2,mt1,poly,diff,sti -t 	mt7,mt8,mt9 -Maxw 2.1 -p mt5,key,mt6,key 0,2.1,0 - mt5_mt6.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R mt6 -b 	mt3,mt2,mt1,poly,diff,sti -t mt7,mt8,mt9 -Maxw 2.1 -p mt4,key,mt6,key 	0,2.1,0 - mt4_mt6.sip
sip -V -s -cgnd 2 -sub 2 -h -b mt3,mt2,mt1,poly,diff,sti -t 	mt6,mt7,mt8,mt9 -Maxw 2.1 -p mt4,key,mt5,key 0,2.1,0 - mt4_mt5.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R mt5 -b mt2,mt1,poly,diff,sti 	-t mt6,mt7,mt8,mt9 -Maxw 2.1 -p mt3,key,mt5,key 0,2.1,0 - mt3_mt5.sip
sip -V -s -cgnd 2 -sub 2 -h -b mt2,mt1,poly,diff,sti -t 	mt5,mt6,mt7,mt8,mt9 -Maxw 2.1 -p mt3,key,mt4,key 0,2.1,0 - 	mt3_mt4.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R mt4 -b mt1,poly,diff,sti -t 	mt5,mt6,mt7,mt8,mt9 -Maxw 2.1 -p mt2,key,mt4,key 0,2.1,0 - 	mt2_mt4.sip
sip -V -s -cgnd 2 -sub 2 -h -b mt1,poly,diff,sti -t 	mt4,mt5,mt6,mt7,mt8,mt9 -Maxw 2.1 -p mt2,key,mt3,key 0,2.1,0 - 	mt2_mt3.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R mt3 -b poly,diff,sti -t 	mt4,mt5,mt6,mt7,mt8,mt9 -Maxw 2.1 -p mt1:mt1_cut,key,mt3,key 0,2.1,0 	- mt1_mt3.sip
sip -V -s -cgnd 2 -sub 2 -h -b poly,diff,sti -t 	mt3,mt4,mt5,mt6,mt7,mt8,mt9 -Maxw 2.1 -p mt1:mt1_cut,key,mt2,key 	0,1.4,0 - mt1_mt2.sip
sip -V -s -cgnd 2 -sub 2 -L3A -h -R mt2 -b diff,sti -t 	mt3,mt4,mt5,mt6,mt7,mt8,mt9 -k mt1:0.3 -Maxw 2.1 -p 	poly:poly_cut,key,mt2,key 0,1.4,0 - poly_mt2.sip
sip -V -s -cgnd 2 -sub 2 -h -R mt1,poly -b diff,sti -t 	mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9 -Maxw 1.8 -p 	poly:poly_cut,key,mt1:mt1_cut,key 0,1.2,0 - poly_mt1.sip
