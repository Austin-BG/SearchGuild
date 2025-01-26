BEGIN ANsysk1

IF ~True()~ THEN BEGIN ANsysk1Hello
  SAY @0
IF ~~ THEN REPLY @1 GOTO ANsysk1Rumors
IF ~~ THEN REPLY @100 GOTO ANsysk1Bye
END

IF ~~ THEN BEGIN ANsysk1Rumors
  SAY @99
IF ~RandomNum(5,1)~ THEN GOTO ANsysk1Rumors-1
IF ~RandomNum(5,2)~ THEN GOTO ANsysk1Rumors-2
IF ~RandomNum(5,3)~ THEN GOTO ANsysk1Rumors-3
IF ~RandomNum(5,4)~ THEN GOTO ANsysk1Rumors-4
IF ~RandomNum(5,5)~ THEN GOTO ANsysk1Rumors-5
END

IF ~~ THEN BEGIN ANsysk1Bye
  SAY @101
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk1Rumors-1
  SAY @2
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk1Rumors-2
  SAY @3
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk1Rumors-3
  SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk1Rumors-4
  SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk1Rumors-5
  SAY @6
IF ~~ THEN EXIT
END


BEGIN ANsysk2

IF ~True()~ THEN BEGIN ANsysk2Hello
  SAY @7
IF ~~ THEN REPLY @8 GOTO ANsysk2Rumors
IF ~~ THEN REPLY @100 GOTO ANsysk2Bye
END

IF ~~ THEN BEGIN ANsysk2Rumors
  SAY @99
IF ~RandomNum(5,1)~ THEN GOTO ANsysk2Rumors-1
IF ~RandomNum(5,2)~ THEN GOTO ANsysk2Rumors-2
IF ~RandomNum(5,3)~ THEN GOTO ANsysk2Rumors-3
IF ~RandomNum(5,4)~ THEN GOTO ANsysk2Rumors-4
IF ~RandomNum(5,5)~ THEN GOTO ANsysk2Rumors-5
END

IF ~~ THEN BEGIN ANsysk2Bye
  SAY @102
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk2Rumors-1
  SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk2Rumors-2
  SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk2Rumors-3
  SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk2Rumors-4
  SAY @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk2Rumors-5
  SAY @13
IF ~~ THEN EXIT
END


BEGIN ANsysk3

IF ~True()~ THEN BEGIN ANsysk3Hello
  SAY @14
IF ~~ THEN REPLY @15 GOTO ANsysk3Rumors
IF ~~ THEN REPLY @100 GOTO ANsysk3Bye
END

IF ~~ THEN BEGIN ANsysk3Rumors
  SAY @99
IF ~RandomNum(5,1)~ THEN GOTO ANsysk3Rumors-1
IF ~RandomNum(5,2)~ THEN GOTO ANsysk3Rumors-2
IF ~RandomNum(5,3)~ THEN GOTO ANsysk3Rumors-3
IF ~RandomNum(5,4)~ THEN GOTO ANsysk3Rumors-4
IF ~RandomNum(5,5)~ THEN GOTO ANsysk3Rumors-5
END

IF ~~ THEN BEGIN ANsysk3Bye
  SAY @103
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk3Rumors-1
  SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk3Rumors-2
  SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk3Rumors-3
  SAY @18
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk3Rumors-4
  SAY @19
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANsysk3Rumors-5
  SAY @20
IF ~~ THEN EXIT
END

// Dog quest

CHAIN IF WEIGHT #-12 ~AreaCheck("AN0450") 
Global("ANSearchGuildOrgot","GLOBAL",0)
GlobalTimerExpired("ANNumaOrgotTimer","GLOBAL")~ 
THEN ANnuma1 ANNumaOrgotTalk
@104 DO ~SetGlobal("ANSearchGuildOrgot","GLOBAL",1)~
END
IF ~~ THEN REPLY @105 EXTERN ANnuma1 ANNumaOrgotTalk1
IF ~~ THEN REPLY @106 EXTERN ANnuma1 ANNumaOrgotTalk2

APPEND ANnuma1

IF ~~ THEN BEGIN ANNumaOrgotTalk1
  SAY @107
IF ~~ THEN REPLY @108 GOTO ANNumaOrgotTalk1-1
IF ~~ THEN REPLY @109 GOTO ANNumaOrgotTalk1-1
IF ~~ THEN REPLY @110 GOTO ANNumaOrgotTalk1-1
END

IF ~~ THEN BEGIN ANNumaOrgotTalk1-1
  SAY @111
IF ~~ THEN GOTO ANNumaOrgotTalk2
END

END 

CHAIN ANnuma1 ANNumaOrgotTalk2
@112 
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @114
=@115
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax")!StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @114
=@115
== ANnuma1 IF ~InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @116
== ANnuma1 IF ~InParty("O#Tiax")!StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @116
END
IF ~~ THEN REPLY @113 EXTERN ANnuma1 ANNumaOrgotTalk3
IF ~~ THEN REPLY @171 EXTERN ANnuma1 ANNumaOrgotTalk3
IF ~~ THEN REPLY @172 EXTERN ANnuma1 ANNumaOrgotTalk3

APPEND ANnuma1
IF ~~ THEN BEGIN ANNumaOrgotTalk3
  SAY @117
IF ~~ THEN REPLY @118 GOTO ANNumaOrgotTalk3-1
IF ~~ THEN REPLY @119 GOTO ANNumaOrgotTalk3-2
IF ~~ THEN REPLY @120 GOTO ANNumaOrgotTalk3-3
END

IF ~~ THEN BEGIN ANNumaOrgotTalk3-1
  SAY @121
IF ~~ THEN REPLY @124 GOTO ANNumaOrgotTalk4
IF ~~ THEN REPLY @125 GOTO ANNumaOrgotTalk4
IF ~~ THEN DO ~SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @173 GOTO ANNumaOrgotTalkNO
END

IF ~~ THEN BEGIN ANNumaOrgotTalk3-2
  SAY @122
IF ~~ THEN REPLY @124 GOTO ANNumaOrgotTalk4
IF ~~ THEN REPLY @125 GOTO ANNumaOrgotTalk4
IF ~~ THEN DO ~SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @173 GOTO ANNumaOrgotTalkNO
END

IF ~~ THEN BEGIN ANNumaOrgotTalk3-3
  SAY @123
IF ~~ THEN REPLY @124 GOTO ANNumaOrgotTalk4
IF ~~ THEN REPLY @125 GOTO ANNumaOrgotTalk4
IF ~~ THEN DO ~SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @173 GOTO ANNumaOrgotTalkNO
END

IF ~~ THEN BEGIN ANNumaOrgotTalkNO
  SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaOrgotTalk4
  SAY @126
IF ~~ THEN REPLY @127 GOTO ANNumaOrgotTalk4-1
IF ~~ THEN REPLY @128 GOTO ANNumaOrgotTalk4-2
IF ~~ THEN DO ~SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @134 GOTO ANNumaOrgotTalkNO
END

IF ~~ THEN BEGIN ANNumaOrgotTalk4-1
  SAY @129
IF ~~ THEN DO ~SetGlobal("ANSearchGuildOrgot","GLOBAL",2) AddJournalEntry(@1007,QUEST) SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @131 GOTO ANNumaOrgotTalk5-1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildOrgot","GLOBAL",2) AddJournalEntry(@1007,QUEST) SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @132 GOTO ANNumaOrgotTalk5-1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildOrgot","GLOBAL",2) AddJournalEntry(@1007,QUEST) SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @133 GOTO ANNumaOrgotTalk5-2
IF ~~ THEN DO ~SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @134 GOTO ANNumaOrgotTalkNO
END

IF ~~ THEN BEGIN ANNumaOrgotTalk4-2
  SAY @130
IF ~~ THEN DO ~SetGlobal("ANSearchGuildOrgot","GLOBAL",2) AddJournalEntry(@1007,QUEST) SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @131 GOTO ANNumaOrgotTalk5-1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildOrgot","GLOBAL",2) AddJournalEntry(@1007,QUEST) SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @132 GOTO ANNumaOrgotTalk5-1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildOrgot","GLOBAL",2) AddJournalEntry(@1007,QUEST) SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @133 GOTO ANNumaOrgotTalk5-2
IF ~~ THEN DO ~SetGlobalTimer("GuildMattyTimer","GLOBAL",THREE_DAYS)~ REPLY @134 GOTO ANNumaOrgotTalkNO
END

IF ~~ THEN BEGIN ANNumaOrgotTalk5-1
  SAY @135
IF ~~ THEN GOTO ANNumaOrgotTalk5-2
END

IF ~~ THEN BEGIN ANNumaOrgotTalk5-2
  SAY @136
IF ~~ THEN EXIT
END

END

BEGIN ANLATKNI
BEGIN ANOrgot

CHAIN IF WEIGHT #-12 ~Global("ANOrgotExists","AR0902",2)~ 
THEN ANOrgot ANOrgotTalk
@138 DO ~SetGlobal("ANOrgotExists","AR0902",3)~
=@139
== ANLATKNI @140
== ANOrgot @141
== IF_FILE_EXISTS ~B!GavJ~ IF ~InParty("B!Gavin2") InMyArea("B!Gavin2") !StateCheck("B!Gavin2",CD_STATE_NOTVALID)~ THEN @142
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(3) !InParty("B!Gavin2") !InMyArea("B!Gavin2") StateCheck("B!Gavin2",CD_STATE_NOTVALID)~ THEN @142
== ANLATKNI IF ~OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) OR(3) !InParty("B!Gavin2") !InMyArea("B!Gavin2") StateCheck("B!Gavin2",CD_STATE_NOTVALID)~ THEN @142
== ANLATKNI @143
END
IF ~~ THEN REPLY @144 EXTERN ANLATKNI ANOrgotTalk1
IF ~~ THEN DO ~GiveGoldForce(200) ActionOverride("ANOrgot",Attack("ANLATKNI")) ActionOverride("ANLATKNI",Attack("ANOrgot")) AddJournalEntry(@1008,QUEST_DONE) SetGlobal("ANSearchGuildOrgot","GLOBAL",3) SetGlobal("ANOrgotExists","AR0902",99)~ REPLY @145 EXIT 

APPEND ANLATKNI
IF ~~ THEN BEGIN ANOrgotTalk1
  SAY @146
IF ~~ THEN REPLY @147 GOTO ANOrgotTalk2
IF ~~ THEN REPLY @148 GOTO ANOrgotTalk2
IF ~~ THEN DO ~GiveGoldForce(200) ActionOverride("ANOrgot",Attack("ANLATKNI")) ActionOverride("ANLATKNI",Attack("ANOrgot")) AddJournalEntry(@1008,QUEST_DONE) SetGlobal("ANSearchGuildOrgot","GLOBAL",3) SetGlobal("ANOrgotExists","AR0902",99)~ REPLY @149 EXIT
END

IF ~~ THEN BEGIN ANOrgotTalk2
  SAY @150
IF ~~ THEN REPLY @151 EXTERN ANOrgot ANOrgotTalk3
IF ~~ THEN REPLY @152 EXTERN ANOrgot ANOrgotTalk3
IF ~~ THEN REPLY @153 EXTERN ANOrgot ANOrgotTalk3
IF ~~ THEN DO ~GiveGoldForce(200) ActionOverride("ANOrgot",Attack("ANLATKNI")) ActionOverride("ANLATKNI",Attack("ANOrgot")) AddJournalEntry(@1008,QUEST_DONE) SetGlobal("ANSearchGuildOrgot","GLOBAL",3) SetGlobal("ANOrgotExists","AR0902",99)~ REPLY @154 EXIT
END

IF ~~ THEN BEGIN ANOrgotTalk5
  SAY @165
IF ~~ THEN EXTERN ANOrgot ANOrgotTalk6
END

IF ~~ THEN BEGIN ANOrgotTalkFINAL
  SAY @170
IF ~~ THEN DO ~ReputationInc(1) GiveGoldForce(800) SetGlobal("ANOrgotExists","AR0902",7) SetGlobal("ANSearchGuildOrgot","GLOBAL",3)~ EXIT
END

END

APPEND ANOrgot

IF ~~ THEN BEGIN ANOrgotTalk3
  SAY @155
=@156 
IF ~~ THEN REPLY @157 GOTO ANOrgotTalk4
IF ~~ THEN REPLY @174 GOTO ANOrgotTalk4
END

IF ~~ THEN BEGIN ANOrgotTalk4
  SAY @158
=@159
IF ~OR(2) !InParty("B!Gavin2") StateCheck("B!Gavin2",CD_STATE_NOTVALID) CheckStatGT(Player1,13,WIS)~ THEN REPLY @160 GOTO ANOrgotTalk5Lat
IF ~OR(2) !InParty("B!Gavin2") StateCheck("B!Gavin2",CD_STATE_NOTVALID)~ THEN REPLY @161 EXTERN ANLATKNI ANOrgotTalk5
IF ~OR(2) !InParty("B!Gavin2") StateCheck("B!Gavin2",CD_STATE_NOTVALID)~ THEN REPLY @164 GOTO ANOrgotTalk5Lat
IF ~InParty("B!Gavin2") !StateCheck("B!Gavin2",CD_STATE_NOTVALID)~ THEN EXTERN IF_FILE_EXISTS ~B!GavJ~ ANOrgotTalk5LatGavin
END

IF ~~ THEN BEGIN ANOrgotTalk5Lat
  SAY @163
IF ~~ THEN REPLY @162 EXTERN ANLATKNI ANOrgotTalk5
END

IF ~~ THEN BEGIN ANOrgotTalk6
  SAY @175
IF ~CheckStatGT(Player1,13,WIS)~ THEN DO ~SetGlobal("ANOrgotExists","AR0902",4)~ REPLY @166 GOTO ANOrgotTalk7
IF ~~ THEN DO ~SetGlobal("ANOrgotExists","AR0902",4)~ REPLY @167 GOTO ANOrgotTalk7
IF ~~ THEN DO ~SetGlobal("ANOrgotExists","AR0902",4)~ REPLY @168 GOTO ANOrgotTalk7
END

IF ~~ THEN BEGIN ANOrgotTalk7
  SAY @176
IF ~~ THEN EXIT
END

IF WEIGHT #-10 ~Global("ANOrgotExists","AR0902",6)~ THEN BEGIN ANOrgotTalk8
  SAY @169
IF ~~ THEN DO ~AddexperienceParty(3500) AddJournalEntry(@1009,QUEST_DONE) EscapeArea()~ EXTERN ANLATKNI ANOrgotTalkFINAL
END


END

APPEND IF_FILE_EXISTS ~B!GavJ~

IF ~~ THEN BEGIN ANOrgotTalk5LatGavin
  SAY @164
IF ~~ THEN EXTERN ANOrgot ANOrgotTalk5Lat
END

END

// Mr.Matty quest

BEGIN ANmatty
IF WEIGHT #-99 ~Global("ANSearchGuildMattias","GLOBAL",1)~ THEN BEGIN ANMattiasTalk1
  SAY @177
=@178
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",2) SetGlobalTimer("GuildPirogTimer","GLOBAL",FIVE_DAYS)~ REPLY @179 GOTO ANMattiasTalk2
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",2) SetGlobalTimer("GuildPirogTimer","GLOBAL",FIVE_DAYS)~ REPLY @180 GOTO ANMattiasTalk2
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",2) SetGlobalTimer("GuildPirogTimer","GLOBAL",FIVE_DAYS)~ REPLY @181 GOTO ANMattiasTalk2
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",2) SetGlobalTimer("GuildPirogTimer","GLOBAL",FIVE_DAYS)~ REPLY @182 GOTO ANMattiasTalk2-1
END

IF ~~ THEN BEGIN ANMattiasTalk2
  SAY @183
IF ~~ THEN EXTERN ANnuma1 ANMattiasTalk3
END

IF ~~ THEN BEGIN ANMattiasTalk2-1
  SAY @184
IF ~~ THEN EXTERN ANnuma1 ANMattiasTalk3
END

APPEND ANnuma1
IF ~~ THEN BEGIN ANMattiasTalk3
  SAY @185
IF ~~ THEN EXTERN ANmatty ANMattiasTalk4
END
END

APPEND ANmatty
IF ~~ THEN BEGIN ANMattiasTalk4
  SAY @186
 =@187 
IF ~~ THEN REPLY @188 GOTO ANMattiasTalk5
IF ~~ THEN REPLY @189 GOTO ANMattiasTalk5
IF ~~ THEN REPLY @190 GOTO ANMattiasTalk5
END
END

CHAIN ANmatty ANMattiasTalk5
@191
== ANnuma1 @192
== ANmatty @193
== ANnuma1 @194
END
IF ~~ THEN REPLY @195 EXTERN ANmatty ANMattiasTalk6
IF ~~ THEN REPLY @196 EXTERN ANmatty ANMattiasTalk6

APPEND ANmatty

IF ~~ THEN BEGIN ANMattiasTalk6
  SAY @197
IF ~~ THEN REPLY @198 GOTO ANMattiasTalk7
IF ~~ THEN REPLY @199 GOTO ANMattiasTalk7
IF ~~ THEN REPLY @200 GOTO ANMattiasTalk7
END

IF ~~ THEN BEGIN ANMattiasTalk7
  SAY @201
IF ~~ THEN REPLY @202 GOTO ANMattiasTalk8
IF ~~ THEN REPLY @203 GOTO ANMattiasTalk8
IF ~~ THEN REPLY @204 GOTO ANMattiasTalk8
IF ~~ THEN REPLY @205 GOTO ANMattiasTalk8
END

END

CHAIN ANmatty ANMattiasTalk8
@206
=@207
== ANnuma1 @208
== ANmatty @209
END
IF ~~ THEN REPLY @211 EXTERN ANmatty ANMattiasTalk9
IF ~~ THEN REPLY @210 EXTERN ANmatty ANMattiasTalk9-1

CHAIN ANmatty ANMattiasTalk9
@213
== ANnuma1 @214
== ANmatty @215
=@216 DO ~AddexperienceParty(250)~
END
IF ~~ THEN REPLY @217 EXTERN ANmatty ANMattiasTalk10
IF ~~ THEN REPLY @245 EXTERN ANmatty ANMattiasTalk10

APPEND ANmatty
IF ~~ THEN BEGIN ANMattiasTalk9-1
  SAY @212
IF ~~ THEN EXTERN ANmatty ANMattiasTalk10
END

IF ~~ THEN BEGIN ANMattiasTalk10
  SAY @218
 =@219 
IF ~~ THEN REPLY @220 GOTO ANMattiasTalk11
IF ~~ THEN REPLY @221 GOTO ANMattiasTalk11
END

IF ~~ THEN BEGIN ANMattiasTalk11
  SAY @222
 =@223 
IF ~~ THEN REPLY @224 EXTERN ANmatty ANMattiasTalk12
IF ~~ THEN REPLY @225 EXTERN ANmatty ANMattiasTalk12-1
END
END

CHAIN ANmatty ANMattiasTalk12
@226
=@227
== ANnuma1 @228
== ANmatty @229
== ANnuma1 @230
== ANmatty @231
END
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",3)~ REPLY @232 EXTERN ANmatty ANMattiasTalkYES
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",99)~ REPLY @234 EXTERN ANmatty ANMattiasTalkNO

CHAIN ANmatty ANMattiasTalk12-1
@227
== ANnuma1 @228
== ANmatty @229
== ANnuma1 @230
== ANmatty @231
END
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",3)~ REPLY @232 EXTERN ANmatty ANMattiasTalkYES
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",99)~ REPLY @234 EXTERN ANmatty ANMattiasTalkNO

APPEND ANmatty
IF ~~ THEN BEGIN ANMattiasTalkYES
  SAY @233
IF ~~ THEN DO ~GiveGoldForce(450) AddJournalEntry(@1010,QUEST)~ REPLY @236 GOTO ANMattiasTalkYES1
END

IF ~~ THEN BEGIN ANMattiasTalkNO
  SAY @235
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANMattiasTalkYES1
  SAY @237
=@246
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

END

BEGIN ANSAIL1

IF ~Global("ANSearchGuildMattias","GLOBAL",4)~ THEN BEGIN ANSailTalk
  SAY @247
IF ~~ THEN REPLY @248 GOTO ANSailTalk1
IF ~~ THEN REPLY @250 GOTO ANSailTalkExit
END

IF ~~ THEN BEGIN ANSailTalkExit
  SAY @277
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANSailTalk1
  SAY @249
IF ~~ THEN REPLY @251 GOTO ANSailTalk2
IF ~~ THEN REPLY @252 GOTO ANSailTalk2
IF ~~ THEN REPLY @253 GOTO ANSailTalk3
IF ~~ THEN REPLY @250 GOTO ANSailTalkExit
END

IF ~~ THEN BEGIN ANSailTalk2
  SAY @254
IF ~~ THEN REPLY @253 GOTO ANSailTalk3
IF ~~ THEN REPLY @250 GOTO ANSailTalkExit
END

IF ~~ THEN BEGIN ANSailTalk3
  SAY @255
 =@256
 =@257
IF ~~ THEN REPLY @275 GOTO ANSailTalkArest
IF ~PartyGoldGT(19)~ THEN REPLY @258 GOTO ANSailTalkGold20
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100)~ REPLY @259 GOTO ANSailTalkGold100
IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexYes
IF ~Gender(Player1,FEMALE) !CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexNo
IF ~CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillYes
IF ~!CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillNo
END

IF ~~ THEN BEGIN ANSailTalkArest
  SAY @276
IF ~PartyGoldGT(19)~ THEN REPLY @258 GOTO ANSailTalkGold20
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100)~ REPLY @259 GOTO ANSailTalkGold100
IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexYes
IF ~Gender(Player1,FEMALE) !CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexNo
IF ~CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillYes
IF ~!CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillNo
END

IF ~~ THEN BEGIN ANSailTalkKillNo
  SAY @274
IF ~~ THEN REPLY @275 GOTO ANSailTalkArest  
IF ~PartyGoldGT(19)~ THEN REPLY @258 GOTO ANSailTalkGold20
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100)~ REPLY @259 GOTO ANSailTalkGold100
IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexYes
IF ~Gender(Player1,FEMALE) !CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexNo
END

IF ~~ THEN BEGIN ANSailTalkSexNo
  SAY @270
IF ~~ THEN REPLY @275 GOTO ANSailTalkArest    
IF ~PartyGoldGT(19)~ THEN REPLY @258 GOTO ANSailTalkGold20
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100)~ REPLY @259 GOTO ANSailTalkGold100
IF ~CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillYes
IF ~!CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillNo
END

IF ~~ THEN BEGIN ANSailTalkGold20
  SAY @278
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100)~ REPLY @260 GOTO ANSailTalkGold100
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattiasGoldNo","GLOBAL",1) AddJournalEntry(@1011,QUEST)~ REPLY @262 GOTO ANSailTalkGoldNo
IF ~~ THEN REPLY @275 GOTO ANSailTalkArest  
IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexYes
IF ~Gender(Player1,FEMALE) !CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexNo
IF ~CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillYes
IF ~!CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillNo
END

IF ~~ THEN BEGIN ANSailTalkGoldNo
  SAY @263
IF ~~ THEN EXIT
END

IF WEIGHT #-99 ~Global("ANSearchGuildMattiasGoldNo","GLOBAL",1)~ THEN BEGIN ANSailTalkGoldNoTalk
  SAY @264
IF ~!PartyGoldGT(99)~ THEN REPLY @266 GOTO ANSailTalkGoldNo 
IF ~PartyGoldGT(99)~ THEN DO ~SetGlobal("ANSearchGuildMattiasGoldNo","GLOBAL",0) TakePartyGold(100)~ REPLY @265 GOTO ANSailTalkGold100
IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexYes
IF ~Gender(Player1,FEMALE) !CheckStatGT(Player1,8,CHR)~ THEN REPLY @268 GOTO ANSailTalkSexNo
IF ~CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillYes
IF ~!CheckStatGT(Player1,14,STR)~ THEN REPLY @272 GOTO ANSailTalkKillNo
END

IF ~~ THEN BEGIN ANSailTalkGold100
  SAY @261
  =@267
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",10) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANSailTalkSexYes
  SAY @269
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",5)~ EXIT
END

IF WEIGHT #-9 ~Global("ANSearchGuildMattias","GLOBAL",6)~ THEN BEGIN ANSailTalkSexYesNext
  SAY @271
  =@267
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",10) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANSailTalkKillYes
  SAY @273
  =@267
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",10) EscapeArea()~ EXIT
END

APPEND PLAYER1
IF WEIGHT #-29 ~Global("ANSearchGuildMattias","GLOBAL",12)~ THEN BEGIN ANMattiasTalkShip
  SAY @238
IF ~~ THEN REPLY @239 EXTERN ANmatty ANMattiasTalkShip1
END


END

APPEND ANmatty
IF ~~ THEN BEGIN ANMattiasTalkShip1
  SAY @240
=@241
IF ~~ THEN DO ~SetGlobal("ANSearchGuildMattias","GLOBAL",13)~ REPLY @242 GOTO ANMattiasTalkShip2
END

IF ~~ THEN BEGIN ANMattiasTalkShip2
  SAY @243
=@244  
IF ~~ THEN DO ~AddexperienceParty(3500) GiveGoldForce(450) AddJournalEntry(@1012,QUEST_DONE)~ EXIT
END

END


// Honey Gambit Quest

APPEND ANNuma1
IF ~~ THEN BEGIN ANFrodoTalk1-1
  SAY @287
IF ~~ THEN EXTERN ANFrodo ANFrodoTalk1
END
END

BEGIN ANFrodo

IF WEIGHT #-70 ~Global("ANSearchGuildFrodo","GLOBAL",1)~ THEN BEGIN ANFrodoTalk
  SAY @279
=@280
=@281
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFrodo","GLOBAL",2)~ REPLY @282 GOTO ANFrodoTalk1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFrodo","GLOBAL",2)~ REPLY @283 EXTERN ANNuma1 ANFrodoTalk1-1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFrodo","GLOBAL",2)~ REPLY @284 GOTO ANFrodoTalkEnd
END

IF ~~ THEN BEGIN ANFrodoTalkEnd
  SAY @285
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANFrodoTalk1
  SAY @286
IF ~~ THEN REPLY @288 GOTO ANFrodoTalk2
IF ~~ THEN REPLY @289 GOTO ANFrodoTalk2
END

IF ~~ THEN BEGIN ANFrodoTalk2
  SAY @290
=@291  
IF ~~ THEN REPLY @292 GOTO ANFrodoTalk3
IF ~~ THEN REPLY @293 GOTO ANFrodoTalk3
IF ~~ THEN REPLY @294 GOTO ANFrodoTalk3
END

IF ~~ THEN BEGIN ANFrodoTalk3
  SAY @295
IF ~~ THEN REPLY @296 GOTO ANFrodoTalk4
END

IF ~~ THEN BEGIN ANFrodoTalk4
  SAY @297
=@298  
IF ~~ THEN REPLY @299 GOTO ANFrodoTalk5
IF ~~ THEN REPLY @300 GOTO ANFrodoTalk5
END

IF ~~ THEN BEGIN ANFrodoTalk5
  SAY @301
IF ~~ THEN DO ~GiveGoldForce(100) SetGlobal("ANSearchGuildFrodo","GLOBAL",3)~ REPLY @302 GOTO ANFrodoTalk6
IF ~~ THEN DO ~GiveGoldForce(100) SetGlobal("ANSearchGuildFrodo","GLOBAL",3)~ REPLY @303 GOTO ANFrodoTalk6
IF ~~ THEN REPLY @304 GOTO ANFrodoTalkEnd
IF ~~ THEN REPLY @305 GOTO ANFrodoTalkEnd
END

IF ~~ THEN BEGIN ANFrodoTalk6
  SAY @306
=@307
=@308 
IF ~~ THEN DO ~AddJournalEntry(@1016,QUEST)~ REPLY @309 GOTO ANFrodoTalk7
END

IF ~~ THEN BEGIN ANFrodoTalk7
  SAY @310
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

BEGIN ANMUDR

CHAIN IF WEIGHT #-70 ~Global("ANSearchGuildFrodo","GLOBAL",4)~ THEN ANMudr ANFrodoMudrTalk
@311 DO ~SetGlobal("ANSearchGuildFrodo","GLOBAL",5)~
== ANFrodo @312
== ANMudr @313
== ANFrodo @314
== ANMudr @315
== ANFrodo @316
== ANMudr @317
== ANFrodo @318 DO ~EscapeArea()~
EXIT

APPEND ANMudr

IF ~Global("ANSearchGuildFrodo","GLOBAL",6)~ THEN BEGIN ANFrodoMudrTalk2
  SAY @319
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFrodo","GLOBAL",7)~ REPLY @320 GOTO ANFrodoMudrTalk3
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFrodo","GLOBAL",7)~ REPLY @321 GOTO ANFrodoMudrTalk3
END

IF ~~ THEN BEGIN ANFrodoMudrTalk3
  SAY @322
IF ~~ THEN REPLY @324 GOTO ANFrodoMudrTalk4-1
IF ~~ THEN REPLY @329 GOTO ANFrodoMudrTalk5-1
IF ~~ THEN REPLY @323 GOTO ANFrodoMudrTalkExit
END

IF ~~ THEN BEGIN ANFrodoMudrTalkExit
  SAY @328
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANFrodoMudrTalk4-1
  SAY @334
IF ~CheckStatGT(Player1,10,CHR)~ THEN REPLY @325 GOTO ANFrodoMudrTalk4
IF ~!CheckStatGT(Player1,10,CHR)~ THEN REPLY @325 GOTO ANFrodoMudrTalk4NO
END

IF ~~ THEN BEGIN ANFrodoMudrTalk5-1
  SAY @334
IF ~CheckStatGT(Player1,10,CHR)~ THEN REPLY @335 GOTO ANFrodoMudrTalk5
IF ~!CheckStatGT(Player1,10,CHR)~ THEN REPLY @335 GOTO ANFrodoMudrTalk4NO
END

IF ~~ THEN BEGIN ANFrodoMudrTalk4
  SAY @326
IF ~~ THEN DO ~GiveGoldForce(100)~ REPLY @327 GOTO ANFrodoMudrTalkExit
END

IF ~~ THEN BEGIN ANFrodoMudrTalk4NO
  SAY @331
IF ~~ THEN REPLY @323 GOTO ANFrodoMudrTalkExit
END

IF ~~ THEN BEGIN ANFrodoMudrTalk5
  SAY @330
IF ~~ THEN DO ~GiveGoldForce(200)~ REPLY @327 GOTO ANFrodoMudrTalkExit
END

END

APPEND ANFrodo
IF WEIGHT #-99 ~AreaCheck("AN0450") Global("ANSearchGuildFrodo","GLOBAL",8)~ THEN BEGIN ANFrodoTalkFinal
  SAY @332
=@333
IF ~~ THEN DO ~AddexperienceParty(150) AddJournalEntry(@1017,QUEST_DONE) SetGlobal("ANSearchGuildFrodo","GLOBAL",10) EscapeArea()~ EXIT
END
END