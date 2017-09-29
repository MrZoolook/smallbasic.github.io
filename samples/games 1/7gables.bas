
''' GREG HASSETT''S FIRST ADVENTURE PORTED FROM THE TRS-80
'' PORTED TO SMALL BASIC BY JOEYDOA SEPTEMBER 2003
'' NOTE:  MUST CREATE ZERO LENGTH FILE NAMED "DUMMY.SAV" FOR VIRTUAL TAPE LOAD/SAVE

'' REORG HASSETT''S MESS OF READ/DATA STATEMENTS AND ARRAY DIMENSIONS
'' ARRAY SIZES:
1 NN=46:LO=40:P3=40:NV=32
''ARRAYS:
DIM NO3$(46),OB2$(40),OB(40,1),P2$(40),P(40,5),VB2$(32)

''STRING DATA - ROOM LOCATIONS
P2$(1)="I''M AT THE SECOND GABLE."
P2$(2)="I''M OUTSIDE A HOUSE WITH SEVEN GABLES. THERE IS A DOORBELL BESIDE THE DOOR."
P2$(3)="I''M IN THE KITCHEN. THERE IS A SINK    WITH A WORKING SPICKET HERE."
P2$(4)="I''M IN THE GUEST ROOM. (I DON''T WANT   TO BE A PERMANENT GUEST!)"
P2$(5)="I''M IN THE LIVING ROOM."
P2$(6)="I''M IN THE DINING ROOM."
P2$(7)="I''M AT THE BOTTOM OF A STAIRWELL."
P2$(8)="I''M AT THE FIRST GABLE. IT OVERLOOKS A HUGE YARD OF TALL GRASS."
P2$(9)="I''M AT THE TOP OF A STAIRCASE."
P2$(10)="I''M IN A DARK STORAGE CLOSET. A HOLLOW VOICE SAYS:  MIX THEM."
P2$(11)="I''M IN A MAD SCIENTIST''S LABORATORY."
P2$(12)="I''M IN A MAZE OF HALLWAYS."
P2$(15)=P2$(12)
P2$(16)=P2$(12)
P2$(17)=P2$(12)
P2$(18)="I''M AT THE WEST END OF THE HALLWAY"
P2$(19)="I''M IN A DUNGEON. A CRUDE NOTE ON THE  WALL READS:  YOU CAN''T GET OUT WITHOUT KILLING ME FIRST!  --WITCHY-POO"
P2$(20)="I''M AT THE BOTTOM OF A STAIRCASE."
P2$(22)="I''M IN A BARREN LIBRARY."
P2$(23)="I''M IN THE CENTER OF A LONG E/W HALLWAY"
P2$(24)="I''M AT THE EAST END OF THE HALLWAY."
P2$(25)="I''M IN DRACULA''S CHAMBER"
P2$(26)="I''M IN A BROOM CLOSET. EXCITING."
P2$(27)="I''M AT THE FOURTH GABLE"
P2$(28)="I''M AT GABLE FIVE."
P2$(29)="I''M AT THE TOP OF A STAIRCASE."
P2$(30)="I''M IN A BEDROOM."
P2$(31)="I''M IN A DUSTY OLD CHAMBER. LOOKS LIKE A DILAPIDATED BEDROOM."
P2$(32)="I''M AT THE SIXTH GABLE."
P2$(33)="I''M AT THE THIRD GABLE."
P2$(34)="I''M AT ONE END OF A HALLWAY."
P2$(35)="I''M IN THE MIDDLE OF A HALLWAY."
P2$(36)=P2$(34)
P2$(37)="I''M IN A ROOM WITH A PEDESTAL IN THE   MIDDLE. ATOP THE PEDESTAL IS A LARGE   BUTTON."
P2$(38)="I''M IN THE WITCH''S CHAMBER."
P2$(39)="I''M AT THE SEVENTH GABLE"
P2$(40)="I''M AN A MAMOTH ART GALLERY."

OB2$(8)="AN EMPTY BUCKET"
OB2$(9)="A MEAN LOOKING VAMPIRE"
OB2$(10)="A BUCKET OF WATER"
OB2$(11)="SOME FRESH GARLIC"
OB2$(14)="A COFFIN"
OB2$(15)="SOME CHEMICALS"
OB2$(16)="A POT OF WITCHES'' BREW"
OB2$(18)="A BLACK HAT"
OB2$(19)="SOME VALUABLE RECIPIES"
OB2$(20)="SOME SILVER CANDLESTICKS"
OB2$(23)="A BANANA"
OB2$(24)="A BANANA PEEL"
OB2$(25)="A SPARKLING DIAMOND"
OB2$(26)="A BLACK CAT"
OB2$(27)="A SHINY COMPASS"
OB2$(28)="A TEST TUBE OF FLUID"
OB2$(29)="AN EMPTY TEST TUBE"
OB2$(30)="A BEAUTIFUL ROSE"
OB2$(31)="AN UGLY WITCH"
OB2$(32)="A BOOK TITLED PRIMEVAL WITCHCRAFT"
OB2$(33)="A PAPER AIRPLANE"
OB2$(34)="A PIECE OF PAPER WITH WRITING ON IT"
OB2$(35)="SULTON''S DAGGER"
OB2$(36)="A PRICELESS REMBRANT"
OB2$(39)="AN OLD RUSTY AXE"

''P2 DATA READ:
For I=1 TO P3
	For J=0 TO 5
		READ P(I,J)
	NEXT J
NEXT I

''OB2 DATA READ:  
For I=8 TO 39
	READ OB(I,0),OB(I,1)
Next I

''NO3 DATA READ:
For I=1 TO 46
	READ NO3$(I)
Next I

''VB2 DATA READ:
FOR I=1 TO 32
	READ VB2$(I)
Next I

LABEL P2DATA
DATA 0,4,0,0,0,0
DATA 0,5,0,0,0,0
DATA 0,6,0,0,0,0
DATA 1,0,5,8,0,0
DATA 0,9,6,4,0,0
DATA 3,0,7,5,0,0
DATA 0,0,0,6,29,0
DATA 0,0,4,0,0,0
DATA 5,0,0,10,0,20
DATA 0,0,9,0,0,0
DATA 0,0,0,0,0,12
DATA 0,16,12,12,11,15
DATA 0,0,0,0,0,0
DATA 0,0,0,0,0,0
DATA 15,17,15,16,0,0
DATA 15,16,12,16,16,16
DATA 15,0,18,0,0,0
DATA 19,0,23,17,0,0
DATA 0,18,19,19,19,19
DATA 0,23,0,0,9,0
DATA 0,0,0,0,0,0
DATA 0,24,0,0,0,0
DATA 20,0,24,18,0,0
DATA 22,0,25,23,0,0
DATA 0,0,0,24,0,0
DATA 0,0,0,27,0,0
DATA 28,0,0,26,0,0
DATA 0,27,29,0,0,0
DATA 0,0,0,28,0,32
DATA 0,0,31,33,0,0
DATA 0,34,32,30,0,0
DATA 0,0,0,31,0,0
DATA 0,0,34,30,0,0
DATA 31,40,35,0,0,0
DATA 0,0,36,34,0,0
DATA 32,0,37,35,0,0
DATA 0,0,0,36,0,39
DATA 0,0,0,0,0,5
DATA 37,0,0,0,0,0
DATA 34,0,0,0,0,0

LABEL OB2DATA
DATA 6,0
DATA 25,0
DATA 0,0
DATA 3,0,,,,
DATA 25,0
DATA 11,0
DATA 38,0,,
DATA 0,50
DATA 26,15
DATA 6,10,,,,
DATA 3,0
DATA 0,0
DATA 39,15
DATA 1,0
DATA 2,0
DATA 33,0
DATA 0,0
DATA 29,10
DATA 38,0
DATA 22,0
DATA 32,0
DATA 0,0
DATA 0,35
DATA 40,20,,,,
DATA 15,5

LABEL NO3DATA
DATA NOR,SOU,EAS,WES,UP,DOW,BEL,BUC,VAM,WAT,GAR,FOO,GHO,COF,CHE,BRE,CUP,HAT
DATA REC,CAN,KEY,DOO,BAN,PEE,DIA,CAT,COM,FLU,TUB,ROS,WIT,BOO,AIR,PAP,DAG
DATA REM,CAG,GAT,AXE,BUT,N,S,E,W,U,D

LABEL VB2DATA
DATA GO,GET,LOO,INV,SCO,DRO,HEL,SAV,LOA,QUI,RIN,FIL,KIL,THR,SHO,FEE,EAT,OPE
DATA CLO,CHO,MIX,DRI,HIT,SAY,TUR,DUM,FIG,REA,UNF,UNL,STA,PRE

2 ''
3 Cls
4 Print "     ";CAT(1);"THE HOUSE OF SEVEN GABLES";CAT(0)
5 Print 
6 PRINT "            BY GREG HASSETT":?:? "           ";CAT(3);"PORTED BY JOEYDOA";CAT(0):?"              SEPTEMBER 2003":PAUSE
7 A="I DON''T SEE IT HERE.":R="DON''T BE RIDICULOUS.":Y="I DON''T KNOW THAT WORD.":CP=2
8 GOTO 247
9 rdf=Int(((100 - 1 + 1) * RND + 100 ) - (100-1)):IF rdf=50 AND ZZ>2 Then 215
10 rdf=Int(((40 - 1 + 1) * RND + 40 ) - (40-1)):If rdf=1 AND CP<>2 AND CP<>5 AND CP<>21 AND CP<>41 THEN 223
11 GOSUB 235

'' TURN COUNTER
T=T+1
If T=50 THEN GOTO 700

12 If NO>40 THEN NO=NO-40
13 If VB<>25 AND VB>10 AND NO2$="" THEN INPUT"GIVE ME AN OBJECT";NO2$:NO2$=UCASE$(NO2$):GoSub 244
14 If NO2$<>"" AND NO=0 AND VB=1 THEN PRINT "I DON''T UNDERSTAND THAT!":GOTO 11

'' LOSE POINTS FOR TOO MANY TURNS
15 If T>175 THEN MI=MI-10
16 If T>225 THEN MI=MI-15

17 If NO=0 AND NO2$<>"" THEN PRINT Y:GOTO 11
18 If VB<>1 THEN 32
19 If VB=1 AND NO2$="" THEN INPUT"WHERE";NO2$:NO2$=UCASE$(NO2$):GoSub 244
20 If NO>40 THEN NO=NO-40
21 If NO<7 THEN 24 Else AB=OB(NO,0)
22 If (AB>10 AND AB<18) OR ABS(CP-AB)>3 OR CP=2 OR AB=0 THEN PRINT CAT(1);"*I DON''T KNOW HOW*";CAT(0):? CAT(1);"-TO APPLY THAT WORD HERE.";CAT(0):GOTO 11
23 CP=ABP:GOTO 8
24 If OB(27,0)<>-1 THEN PRINT "I CAN''T UNDERSTAND COMPASS POINTS":?"WITHOUT A COMPASS!":GOTO 11
25 If P(CP,NO-1)=0 THEN PRINT "THERE IS NO WAY TO GO...":?"IN THAT DIRECTION.":GOTO 11
26 If CP=2 AND NO=2 THEN PRINT "THE DOOR IS LOCKED. ":?"I THINK I CAN GET BY IT, THOUGH.":GOTO 11
27 If CP=6 AND NO=3 AND DF=0 THEN PRINT "THE DOOR TO THAT WAY IS CLOSED.":GOTO 11
28 If CP=9 AND OB(9,0)=9 AND NO=1 THEN PRINT "THE VAMPIRE WON''T LET ME GO NORTH!":GOTO 11
29 If CP=38 AND NO=6 AND OB(18,0)<>0 THEN P(5,0)=2
30 If CP=5 AND FF=1 AND P(5,0)=2 AND NO=1 THEN CLS:Print "YOU MADE IT!":GOTO 230
31 CP=P(CP,NO-1):GOTO 8
32 If VB<>2 THEN 48
33 If NO2$="" THEN INPUT"GET WHAT";NO2$:NO2$=UCASE$(NO2$):GoSub 244
34 If OB(NO,0)=-1 THEN PRINT "I''M ALREADY CARRYING THAT!!!":GOTO 11
35 If NO=7 AND CP=2 THEN PRINT "IT IS IMPOSSIBLE TO REMOVE.":GOTO 11
36 IF NO=0 THEN PRINT Y:GOTO 11
37 IF OB(NO,0)<>CP THEN PRINT A:GOTO 11
38 IF NO=31 THEN PRINT R:GOTO 11
39 IF NO=9 THEN PRINT "YOU CAN''T BE SERIOUS!":GOTO 11
40 IF NO=40 THEN PRINT "I CANNOT PULL IT OUT":?"OF ITS SOCKET.":GOTO 11
41 IF NO=14 THEN PRINT "MY, THAT''S HEAVY. TOO HEAVY:":? "TO CARRY, IN FACT.":GOTO 11
42 IF NO=16 THEN PRINT "IT IS IN A BIG POT THAT":? "I CAN''T LIFT.":GOTO 11
43 IF NO=22 THEN PRINT "BE SERIOUS.":GOTO 11
44 IF NO=26 THEN PRINT "THE CAT VANISHED, SAYING ":? Chr(34);"I WILL RETURN...";Chr(34):OB(26,0)=Int(((40 - 1 + 1) * RND + 40 ) - (40-1)):GOTO 11
45 IF ZZ>5 THEN PRINT "I CAN''T CARRY ANY MORE. CLUE:":?"DROP SOMETHING.":GOTO 11
46 ZZ=ZZ+1
47 OB(NO,0)=-1:PRINT "YOU GOT IT.":GOTO 11
48 IF VB=3 THEN 8
49 IF VB<>4 THEN 53
50 ZZ=0: PRINT "CURRENTLY I AM CARRYING:":For I=8 TO LO:IF OB(I,0)=-1 THEN PRINT OB2$(I):ZZ=ZZ+1
51 Next I:IF ZZ=0 THEN PRINT "NOTHING!"
52 GOTO 11

'' SCORE CALCULATION
53 IF VB<>5 THEN 58
54 J=0:For I=1 TO LO:IF OB(I,0)=5 Then J=J+OB(I,1)
55 Next I:J=J+MI
56 PRINT "OUT OF A MAXIMUM OF 160 POINTS,":?"YOU HAVE [";J;"] POINTS."
57 GOTO 11

58 IF VB<>6 THEN 65
59 IF NO2$="" Then INPUT"DROP WHAT";NO2$:NO2$=UCASE$(NO2$):GoSub 244
60 IF OB(NO,0)<>-1 THEN PRINT "I AM NOT HOLDING IT.":GOTO 11
61 PRINT "ALL RIGHT."
62 ZZ=ZZ-1
63 OB(NO,0)=CP
64 GOTO 11
65 IF VB=7 THEN PRINT "I CANNOT GIVE YOU HELP.":?"IT IS AGAINST MY RELIGION.":GOTO 11
66 IF VB<>8 THEN 73
'''''''''''''''''''''''' SAVE TO TAPE ROUTINE ''''''''''''''''''''''
67 CLS:? CAT(1):? "PRESS <ENTER> WHEN ...":Input "...CASSETTE PREPARATIONS ARE MADE";XX$:? CAT(0)
71 sub1
72 GOTO 8
'''''''''''''''''''''''''''''''''''' E N D SAVE ''''''''''''''''''''''''''''''''''
73 IF VB<>9 THEN 80
'''''''''''''''''''''''''''' LOAD FROM TAPE ROUTINE ''''''''''''''''''''''''''
74 CLS:? CAT(1):? "PRESS <ENTER> WHEN ...":Input "...CASSETTE PREPARATIONS ARE MADE";XX$:? CAT (0)
75 sub2
79 GOTO 8
80 IF VB<>10 THEN 84
81 INPUT"DO YOU REALLY WANT TO QUIT NOW";QN$:QN$=UCASE$(QN$)
82 QN$=LEFT$(QN$,1):IF QN$="N" THEN 11
83 GOTO 230
84 IF VB<>11 THEN 91
85 IF OB2$(NO)="" AND NO<>7 THEN PRINT R:GOTO 11
86 IF NO=7 THEN 89
87 IF OB(NO,0)<>-1 THEN PRINT A:GOTO 11
88 IF NO<>7 THEN PRINT "I CAN''T RING ";OB2$(NO);"!!":GOTO 11
89 IF CP<>2 THEN PRINT "I SEE NO BELL HERE!":GOTO 11
90 PRINT "THE DOOR FLIES OPEN AND I AM SWEPT":? "INSIDE, BUT THEN THE DOOR VANISHES": ?"LEAVING NO VISIBLE WAY OUT!":FF=1:CP=5:GOTO 11
91 IF VB<>12 THEN 98
92 IF NO=8 AND OB(10,0)<>0 THEN PRINT "IT IS ALREADY FULL.":GOTO 11
93 IF OB(NO,0)<>-1 THEN PRINT "I''M NOT HOLDING IT RIGHT NOW.":GOTO 11
94 IF NO<>8 AND NO<>29 THEN PRINT "I CANT FILL THAT!":GOTO 11
95 IF CP<>3 THEN PRINT "THERE IS NOTHING TO FILL IT WITH HERE.":GOTO 11
96 IF NO=29 THEN PRINT "NO, I VALUE MY LIFE AND THAT FLUID":? "THAT WAS IN THERE MIGHT REACT WITH":? "THE WATER...":GOTO 11
97 IF NO=8 THEN PRINT "YOUR BUCKET IS NOW FULL.":OB(8,0)=0:OB(10,0)=-1:GOTO 11
98 IF VB<>13 THEN 104
99 IF NO<>27 AND NO<>26 AND NO<>9 AND NO<>13 AND NO<>31 THEN PRINT "IT ISN''T ALIVE!":GOTO 11
100 IF OB(NO,0)<>CP THEN PRINT A:GOTO 11
101 IF NO=9 THEN PRINT "I DON''T THINK IT WOULD APPROVE.":GOTO 11
102 IF NO=27 THEN PRINT "IT DOESN''T TAKE TOO FAVORABLY TO THE IDEA.":GOTO 11
103 PRINT "YOU''LL HAVE TO BE MORE SPECIFIC.":GOTO 11
104 IF VB<>14 THEN 110
105 IF NO=0 THEN PRINT "THROW WHAT?":GOTO 11
106 IF OB(NO,0)<>-1 THEN PRINT "I''M NOT HOLDING IT!":GOTO 11
107 IF NO<>24 AND NO<>10 THEN 60
108 IF CP=38 AND NO=10 THEN PRINT "THE WITCH HAS VANISHED!":OB(18,0)=38:PRINT "HER HAT REMAINS.":OB(31,0)=0:OB(10,0)=0:OB(8,0)=-1:GOTO 11
109 GOTO 60
110 IF VB<>15 THEN 116
111 IF NO=0 THEN PRINT "SHOW WHAT?":GOTO 11
112 IF OB(NO,0)<>-1 THEN PRINT "I''M NOT CARRYING IT!":GOTO 11
113 IF NO<>11 THEN PRINT "NOTHING HAPPENED.":GOTO 11
114 IF OB(9,0)<>25 THEN PRINT "NOTHING EXCITING HAPPENED.":GOTO 11
115 PRINT "THE VAMPIRE SCURRIES OFF SAYING:  ":? "YOU HAVEN''T SEEN THE END OF ME YET!!!":OB(9,0)=9:GOTO 11
116 IF VB<>16 THEN 123
117 IF NO<>9 AND NO<>13 AND NO<>31 Then PRINT "THAT IS STUPID.":GOTO 11
118 IF OB(NO,0)<>CP THEN PRINT A:GOTO 11
119 IF OB(23,0)<>-1 THEN PRINT "I DON''T HAVE ANY FOOD, STUPID!":GOTO 11
120 IF NO=9 AND OB(23,0)<>-1 THEN PRINT "HE ONLY LIKES BANANAS.":GOTO 11
121 IF NO=9 THEN PRINT "HE WHARFS DOWN YOUR BANANA AND":?"EATS THE PEEL, TOO!":OB(23,0)=0:GOTO 11
122 Print "SHE GRABS THE BANANA AND":?"THROWS IT INTO THE BREW.":OB(23,0)=0:GOTO 11
123 IF VB<>17 THEN 129
124 IF OB(NO,0)<>-1 AND OB(NO,0)<>CP THEN PRINT "I DON''T SEE IT HERE.":GOTO 11
125 IF NO=11 THEN PRINT "I DON''T WANT TO HAVE BAD BREATH.":GOTO 11
126 IF NO<>12 AND NO<>23 THEN PRINT R:GOTO 11
127 IF OB(NO,0)<>-1 THEN PRINT "I''M NOT CARRYING IT.":GOTO 11
128 PRINT "MUNCH MUNCH MUNCH. GOOD.":OB(23,0)=0:OB(24,0)=-1:GOTO 11
129 IF VB<>18 THEN 141
130 IF NO=0 THEN PRINT "JE NE COMPRENDS PAS.":?"(I DON''T UNDERSTAND).":GOTO 11
131 IF NO<>14 AND NO<>22 AND NO<>33 THEN PRINT "THAT IS BEYOND MY CAPABILITIES.":GOTO 11
132 IF CP<>25 AND NO=14 THEN PRINT "I SEE NO COFFIN TO OPEN HERE!":GOTO 11
133 IF CP=25 AND OB(9,0)=CP AND NO=14 THEN PRINT "THE VAMPIRE WON''T LET ME!":GOTO 11
134 IF NO=14 AND CP=25 THEN PRINT "THE COFFIN IS OPEN":CF=1:GoTo 500
135 IF NO<>22 THEN 139
136 IF CP=2 THEN PRINT "IT IS LOCKED. MAYBE THESE PEOPLE(?)":? "ARE FRIENDLY, SO TRY RINGING THE BELL.":GOTO 11
137 IF CP=6 THEN PRINT "I CANNOT. THERE IS NO DOORKNOB AND":? "NO KEYHOLE. HOWEVER, IT IS QUITE POSSIBLE":? "THAT I CAN GET BY IT.":GOTO 11
138 Print "I SEE NO DOOR HERE.":GOTO 11
139 IF OB(33,0)=-1 THEN PRINT "TRY UNFOLD AIRPLANE." Else Print "I HAVE NO AIRPLANE."
140 GOTO 11
141 IF VB<>20 THEN 150
142 IF NO=22 AND (CP=2 OR CP=6) THEN 145
143 IF NO=0 THEN PRINT "CHOP WHAT? I DON''T UNDERSTAND!":GOTO 11
144 IF OB(NO,0)<>CP THEN PRINT "I DON''T SEE IT HERE.":GOTO 11
145 IF OB(39,0)<>-1 Then INPUT"WITH WHAT, MY BARE HANDS";BH$:BH$=UCASE$(BH$):IF LEFT$(BH$,1)="Y" THEN PRINT "I DON''T KNOW KARATE!":GOTO 11
146 IF OB(39,0)<>-1 THEN PRINT "ALL RIGHT THEN !":GOTO 11
147 IF NO<>22 THEN PRINT "THAT IS BEYOND MY POWER.":GOTO 11
148 IF CP<>2 AND CP<>6 THEN PRINT "I SEE NO DOOR HERE.":GOTO 11
149 Print "THE DOOR IS CHOPPED TO PEICES.":DF=1:GOTO 11
150 IF VB<>19 THEN 158
151 IF NO<>22 AND NO<>38 AND NO<>14 THEN PRINT "THAT IS RIDICULOUS.":GOTO 11
152 IF NO=14 AND CP<>25 THEN PRINT "I SEE NO COFFIN TO CLOSE HERE.":GOTO 11
153 IF NO=14 AND CP=25 THEN PRINT "THE COFFIN IS CLOSED.":CF=0:GOTO 11
154 IF NO=22 AND CP=2 THEN PRINT "IT IS ALREADY CLOSED.":GOTO 11
155 IF NO=22 AND CP=5 THEN PRINT "THE DOOR VANISHED, REMEMBER?":GOTO 11
156 IF NO=22 AND CP=6 AND DF=1 THEN PRINT "CLOSING A BUNCH OF WOOD SCRAPS":?"IS BEYOND BY POWER.":GOTO 11
157 IF NO=22 THEN PRINT "I SEE NO DOOR HERE.":GOTO 11
158 IF VB<>21 THEN 163
159 IF NO=0 THEN PRINT Y:GOTO 11
160 IF NO<>15 THEN PRINT "WHY DO YOU KEEP TELLING ME":?"TO DO DUMB THINGS?":GOTO 11
161 IF OB(15,0)<>-1 THEN PRINT "I''M NOT HOLDING THEM!":GOTO 11
162 Print "OKAY...":? "...POOF!...":? "THE CHEMICALS THRANSFORMED THEMSELVES":? "INTO AN ORANGE BUBBLING LIQUID.":CF=1:GOTO 11
163 IF VB<>22 THEN 179
164 IF NO<>16 AND NO<>10 AND NO<>28 AND NO<>15 THEN PRINT "YOU CAN''T BE SERIOUS.":GOTO 11
165 IF NO=16 AND CP=38 THEN PRINT "I DON''T THINK I SHOULD.":?"(THERE''S AN OLD SHOE IN IT!)":GOTO 11
166 IF NO=10 AND OB(10,0)=-1 THEN PRINT "OKAY! GULP GULP GULP.":OB(10,0)=0:OB(8,0)=-1:GOTO 11
167 IF NO=28 AND OB(28,0)=-1 THEN PRINT "ALL RIGHT. POOF! OH MY! WHERE AM I??":? "OH MY! ALL MY POSSESIONS WERE":? "LOST IN THE DENSE CLOUD OF GREASY BLACK SMOKE."
168 IF NO<>28 OR OB(28,0)<>-1 THEN 177
169 For I=8 TO LO
170 IF OB2$(I)="" THEN 173
171 IF OB(I,0)<>-1 AND OB(I,O)<>5 THEN 173
172 OB(I,0)=Int(((38 - 1 + 1) * RND + 38 ) - (38-1))
173 Next I
174 OB(28,0)=0:OB(29,0)=-1
175 ZZ=1
176 GOTO 11
177 IF NO=15 THEN PRINT "I DON''T WANT TO TRY THAT.":GOTO 11
178 Print "I CAN''T DO THAT YET.":GOTO 11
179 IF VB<>23 THEN 185
180 IF NO=22 AND (CP=2 OR CP=6) THEN 182
181 IF OB(NO,0)<>-1 AND OB(NO,0)<>CP THEN PRINT "I DON''T SEE IT HERE.":GOTO 11
182 IF NO<>9 AND NO<>13 AND NO<>31 THEN PRINT "I DON''T WANT TO HIT THE ";NO2$;".":GOTO 11
183 IF NO=9 THEN PRINT "HIT HIM YOURSELF!":?"I''M SURE NOT GONNA!":GOTO 11
184 Print "YUK! SHE''S GOT WARTS ALL OVER HER!":GOTO 11
185 IF VB=24 THEN PRINT "ALL RIGHT...";NO2$:GOTO 11
186 IF VB=25 THEN PRINT "YOU HAVE USED";T;"TURNS SO FAR.":GOTO 11
187 IF VB<>26 THEN 193
188 IF NO<>10 AND NO<>28 AND NO<>15 THEN PRINT "DON''T BE DUMB.":GOTO 11
189 IF NO=10 AND OB(10,0)=-1 THEN PRINT "YOUR BUCKET IS EMPTY AND":?"THE GROUND IS WET.":OB(10,0)=0:OB(8,0)=-1:GOTO 11
190 IF NO=28 THEN PRINT "YOU ARE STUCK WITH AN EMPTY":?"TEST TUBE NOW.":OB(28,0)=0:OB(29,0)=-1:GOTO 11
191 IF NO=15 AND OB(15,0)=-1 THEN PRINT "THE CHEMICALS REACTED WITH THE":?"DUST AND I GOT LOST IN A THICK CLOUD OF":? "ORANGE SMOKE. I SUGGEST YOU ''LOOK''.":CP=12:GOTO 11
192 Print "I AM NOT CARRYING IT RIGHT NOW.":GOTO 11
193 IF VB=27 THEN PRINT "I''M NOT ROCKY, YOU KNOW.":GOTO 11
194 IF VB<>29 THEN 198
195 IF NO<>33 THEN PRINT "GIVE ME A BREAK!":GOTO 11
196 IF OB(33,0)<>-1 THEN PRINT "I''M NOT HOLDING AN AIRPLANE!":GOTO 11
197 Print "OK.":OB(33,0)=0:OB(34,0)=-1:GOTO 11
198 IF VB<>28 THEN 205
199 IF OB(NO,0)<>CP AND OB(NO,0)<>-1 THEN PRINT "I DON''T SEE IT AND I''M NOT HOLDING IT.":GOTO 11
200 IF NO<>34 AND NO<>32 AND NO<>19 THEN PRINT "THERE IS NO WRITING THERE.":GOTO 11
201 IF OB(NO,0)<>-1 THEN PRINT "I DON''T HAVE IT WITH ME.":GOTO 11
202 IF NO=32 THEN PRINT "IT SAYS:  ";"NOTTUB SSERP":GOTO 11
203 IF NO=34 THEN PRINT "IT READS: REMEMBER THE WIZARD OF OZ.":GOTO 11
204 Print "THEY ARE WRITTEN IN WITCHISH.":GOTO 11
205 IF VB=30 THEN PRINT "TRY OPEN.":GOTO 11
206 IF VB<>31 THEN 212
207 IF OB(NO,0)<>CP THEN PRINT A:GOTO 11
208 IF NO<>9 AND NO<>31 THEN PRINT "BE SERIOUS.":GOTO 11
209 IF OB(35,0)<>-1 THEN PRINT "I DON''T HAVE A KNIFE!":GOTO 11
210 IF NO=31 THEN PRINT "THE KNIFE VANISHES WHEN":?"IT TOUCHES HER.":OB(35,0)=0:GOTO 11
211 Print "THE VAMPIRE DIES AND":?"THEN VANISHES.":OB(9,0)=0:GOTO 11
212 IF NO<>40 THEN PRINT "THAT''S IDIOTIC.":GOTO 11
213 IF CP<>37 THEN PRINT "I SEE NO BUTTON HERE.":GOTO 11
214 CP=38:GOTO 8
215 PRINT "OH MY! A GHOST POPS OUT AND SAYS:":? "THROW ME SOME TREASURE!":GOSUB 235
216 IF VB<>16 OR NO<>13 THEN 218
217 IF OB(23,0)=0 THEN PRINT "I HAVE NO FOOD." Else Print "HE EATS THE BANANA AND VANISHES.":OB(23,0)=0:OB(24,0)=CP:GOTO 11
218 IF VB<>14 THEN Print "HE IS GETTING MAD!":GoSub 235
219 IF VB<>14 THEN PRINT "HE HAS KILLED ME!":GOTO 230
220 IF OB(NO,0)<>-1 THEN PRINT "I''M NOT HOLDING IT.":GoSub 235:GOTO 218
221 IF OB(NO,1)=0 THEN PRINT "HE GROWLS:":? "NOT GOOD ENOUGH! AND THROWS IT BACK.":GOSUB 235:GOTO 218
222 Print "HE SNATCHES THE TREASURE AND RUNS AWAY.":ZZ=ZZ-1:OB(NO,0)=0:GOTO 11
223 Print "HEAVENS! A ONE EYED GHOUL POPPED OUT!"
224 INPUT"WHAT AM I TO DO";CM$:CM$=UCase$(CM$):GoSub 236
225 IF VB<>14 OR NO<>15 THEN 229
226 IF OB(15,0)<>-1 THEN PRINT "I DON''T HAVE THEM!":GOTO 229
227 IF CF=0 THEN PRINT "THEY WEREN''T MIXED!":GOTO 229
228 Print "THE GHOUL MELTS TO NOTHING.":OB(15,0)=CP:GOTO 11
229 Print "THE GHOUL KILLS ME!":GOTO 230
230 J=0:For I=8 TO LO:IF OB(I,0)=5 Then J=J+OB(I,1)
231 Next I
232 J=J+MI
233 Print "OUT OF A MAXIMUM OF 160 POINTS:":? "---> YOU SCORED [";J;"] POINTS, ":? CAT(3);"	USING ";T;" TURNS!";CAT(0):PRINT:? "GOODBYE! THANKS FOR PLAYING. :)":End
234 ''
235 Input"*** WHAT SHOULD I DO";CM$:CM$=UCASE$(CM$)
236 NO2$="":VB3$="":VB=0:NO=0
237 LC=LEN(CM$)
For I=1 TO LC
	IF MID$(CM$,I,1)<>" " Then VB3$=VB3$+MID$(CM$,I,1)
Next I
238 V1$=VB3$
239 VB3$=LEFT$(VB3$,3)
240 ''
For I=1 TO NV
	If VB2$(I)=VB3$ Then
		 VB=I
		 II=1
		 Exit
	ENDIF
Next I
If II=1 Then II=0:GoTo 242
241 VB=1:NO2$=VB3$:GOTO 244
242 IF LEN(V1$)+1>=LEN(CM$) Then NO=0:RETURN
243 NO2$=RIGHT$(CM$,LEN(CM$)-1-LEN(V1$))
244 ''
If NO2$="" Then Return
NO2$=LEFT$(NO2$,3)
For I=1 TO NN
	IF NO2$=NO3$(I) Then
		II=I:Exit
	ENDIF
Next I:If NO2$=NO3$(II) Then 246
245 NO=0:RETURN
246 NO=I:RETURN
247 Cls
'' GUESSING THIS IS THE SCREEN REDRAW
248 Print LEFT$(P2$(CP),39)
If Len(P2$(CP))>39 Then Print MID$(P2$(CP),40,39)
If Len(P2$(CP))>78 Then Print MID$(P2$(CP),79)
249 TI=""
For I=8 TO LO
	If OB(I,0)=CP Then TI="THERE IS:"
NEXT I
If TI<>"" Then Print TI
For I=8 TO LO
	If OB(I,0)=CP Then Print OB2$(I);" HERE."
NEXT I
250 ''
251 FL=0:IF OB(27,0)<>-1 THEN 253 ELSE Print "I CAN GO -- ";:
For I=0 TO 5
	IF P(CP,I)<>0 THEN PRINT NO3$(41+I);"  ";
	FL=1
NEXT I
252 IF FL=0 THEN PRINT "NOWHERE!" ELSE Print 
253 Print "-----------------------------------"
254 GOTO 9

500 IF OB(35,0)=0 Then OB(35,0)=25:GoTo 11
510 GoTo 11

700 OB2$(27)="A TARNISHED OLD COMPASS"
710 GOTO 12

FUNC sub1()
If EXIST("7GABLES.SAV") Then
	Kill "7GABLES.SAV"
ENDIF
I=EXIST("DUMMY.SAV")
If I<>1 Then
	Print CAT(1);"	UNABLE TO WRITE TO TAPE"
	Print "	NO ''DUMMY.SAV FILE EXISTS";CAT(0)
	Print "		PRESS ANY KEY":PAUSE
	Exit FUNC
ENDIF
Copy "DUMMY.SAV", "7GABLES.SAV"
Open "7GABLES.SAV" For OUTPUT AS #1
For I=8 TO LO
	Write #1; OB(I,0)
Next I
Write #1; CP,FF,ZZ,T,P(5,0),DF:Close #1
?:Print CAT(1);"->VIRTUAL TAPE SAVED!":?:? "	PRESS ANY KEY";CAT(0):PAUSE
End

FUNC sub2()
If EXIST("7GABLES.SAV") Then
	Open "7GABLES.SAV" For Input AS #1
		For I=8 TO LO
			READ #1; OB(I,0)
		Next I
	READ #1; CP,FF,ZZ,T,P(5,0),DF
	Close #1
	?:Print CAT(1);"->VIRTUAL TAPE LOADED!":?:? "	PRESS ANY KEY";CAT(0):PAUSE
Else
	?:Print "NO SAVED FILE EXISTS!":PAUSE
ENDIF
End
''########### WARNING SOLVE AHEAD ############

''Get compass/Ring bell/E/Get bucket/Get candlesticks/N/Get garlic
''Fill bucket/S/W/Drop candlesticks/S/D/S/W/W/N/Get axe/S/E/E/E/E
''Show garlic/Open coffin/Get dagger/W/W/N/U/Stab vampire/N/Drop dagger
''E/Chop door/W/Drop axe/E/E/U/Get rose/W/S/W/Get recipes/W/N/E/D
''Get airplane/Unfold airplane/Read paper/W/S/S/Drop paper/Get rembrant
''N/E/E/E/D/Drop garlic/Get diamond/N/Press button/Throw water
''Drop water/Get hat/D/Drop hat/Drop diamond/Drop rembrant/Drop rose
''Drop recipes/N
 
'