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

// Rosy's Father quest
BEGIN ANRosy

IF WEIGHT #-70 ~Global("ANSearchGuildFather","GLOBAL",1)~ THEN BEGIN ANRosyFirstTalk
  SAY @575
=@336
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",2)~ REPLY @337 GOTO ANRosyFirstTalk1-1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",2)~ REPLY @339 GOTO ANRosyFirstTalk1-2
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",2)~ REPLY @341 GOTO ANRosyFirstTalk1-3
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",2)~ REPLY @343 GOTO ANRosyFirstTalk1-4
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",2)~ REPLY @345 GOTO ANRosyFirstTalk1-5
END

IF ~~ THEN BEGIN ANRosyFirstTalk1-1
  SAY @338
IF ~~ THEN GOTO ANRosyFirstTalk2
END

IF ~~ THEN BEGIN ANRosyFirstTalk1-2
  SAY @340
IF ~~ THEN GOTO ANRosyFirstTalk2
END

IF ~~ THEN BEGIN ANRosyFirstTalk1-3
  SAY @342
IF ~~ THEN GOTO ANRosyFirstTalk2
END

IF ~~ THEN BEGIN ANRosyFirstTalk1-4
  SAY @344
IF ~~ THEN GOTO ANRosyFirstTalk2
END

IF ~~ THEN BEGIN ANRosyFirstTalk1-5
  SAY @346
IF ~~ THEN GOTO ANRosyFirstTalk2
END

IF ~~ THEN BEGIN ANRosyFirstTalk2
  SAY @347
IF ~~ THEN REPLY @348 GOTO ANRosyFirstTalk2-1
IF ~~ THEN REPLY @354 GOTO ANRosyFirstTalk2-2
IF ~~ THEN REPLY @358 GOTO ANRosyFirstTalk2-3
END

IF ~~ THEN BEGIN ANRosyFirstTalk2-1
  SAY @349
IF ~~ THEN REPLY @350 GOTO ANRosyFirstTalk2-1-1
IF ~~ THEN REPLY @352 GOTO ANRosyFirstTalk2-1-2
END

IF ~~ THEN BEGIN ANRosyFirstTalk2-1-1
  SAY @351
IF ~~ THEN REPLY @362 GOTO ANRosyFirstTalk3
IF ~~ THEN REPLY @363 GOTO ANRosyFirstTalk3
END

IF ~~ THEN BEGIN ANRosyFirstTalk2-1-2
  SAY @353
IF ~~ THEN REPLY @362 GOTO ANRosyFirstTalk3
IF ~~ THEN REPLY @363 GOTO ANRosyFirstTalk3
END

IF ~~ THEN BEGIN ANRosyFirstTalk2-2
  SAY @355
IF ~~ THEN REPLY @356 GOTO ANRosyFirstTalk2-1-1
IF ~~ THEN REPLY @357 GOTO ANRosyFirstTalk2-1-2
END

IF ~~ THEN BEGIN ANRosyFirstTalk2-3
  SAY @359
IF ~~ THEN REPLY @360 GOTO ANRosyFirstTalk2-1-1
IF ~~ THEN REPLY @361 GOTO ANRosyFirstTalk2-1-2
END

IF ~~ THEN BEGIN ANRosyFirstTalk3
  SAY @364
IF ~~ THEN REPLY @365 GOTO ANRosyFirstTalk4
IF ~~ THEN REPLY @366 GOTO ANRosyFirstTalk4
IF ~~ THEN REPLY @367 GOTO ANRosyFirstTalk4
END

IF ~~ THEN BEGIN ANRosyFirstTalk4
  SAY @368
  =@369
IF ~~ THEN REPLY @370 GOTO ANRosyFirstTalk5
IF ~~ THEN REPLY @371 GOTO ANRosyFirstTalk5
IF ~~ THEN REPLY @372 GOTO ANRosyFirstTalk5
END

IF ~~ THEN BEGIN ANRosyFirstTalk5
  SAY @373
  =@374
IF ~Class(Player1,PALADIN)~ THEN REPLY @547 GOTO ANRosyFirstTalk5-2  
IF ~~ THEN REPLY @375 GOTO ANRosyFirstTalk5-1
IF ~~ THEN REPLY @378 GOTO ANRosyFirstTalk5-2
IF ~~ THEN DO ~SetGlobalTimer("ANNumaOrgotTimer","GLOBAL",TWO_DAYS)  SetGlobal("ANSearchGuildFather","GLOBAL",99)~ REPLY @380 GOTO ANRosyFirstTalkEnd1
IF ~~ THEN DO ~SetGlobalTimer("ANNumaOrgotTimer","GLOBAL",TWO_DAYS)  SetGlobal("ANSearchGuildFather","GLOBAL",99)~ REPLY @548 GOTO ANRosyFirstTalkEnd2
END

IF ~~ THEN BEGIN ANRosyFirstTalkEnd1
  SAY @381
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANRosyFirstTalkEnd2
  SAY @549
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANRosyFirstTalkEnd3
  SAY @402
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANRosyFirstTalk5-1
  SAY @376
IF ~~ THEN REPLY @377 GOTO ANRosyFirstTalk5-2
IF ~~ THEN DO ~SetGlobalTimer("ANNumaOrgotTimer","GLOBAL",TWO_DAYS) SetGlobal("ANSearchGuildFather","GLOBAL",99)~ REPLY @380 GOTO ANRosyFirstTalkEnd1
IF ~~ THEN DO ~SetGlobalTimer("ANNumaOrgotTimer","GLOBAL",TWO_DAYS) SetGlobal("ANSearchGuildFather","GLOBAL",99)~ REPLY @548 GOTO ANRosyFirstTalkEnd2
END

IF ~~ THEN BEGIN ANRosyFirstTalk5-2
  SAY @379
IF ~~ THEN REPLY @382 GOTO ANRosyFirstTalk6-1
IF ~~ THEN REPLY @384 GOTO ANRosyFirstTalk6-2
IF ~~ THEN REPLY @386 GOTO ANRosyFirstTalk6-3
IF ~~ THEN REPLY @388 GOTO ANRosyFirstTalk6-4
END

IF ~~ THEN BEGIN ANRosyFirstTalk6-1
  SAY @383
IF ~~ THEN REPLY @384 GOTO ANRosyFirstTalk6-2
IF ~~ THEN REPLY @386 GOTO ANRosyFirstTalk6-3
IF ~~ THEN REPLY @388 GOTO ANRosyFirstTalk6-4
IF ~~ THEN REPLY @390 GOTO ANRosyFirstTalk6-5
END

IF ~~ THEN BEGIN ANRosyFirstTalk6-2
  SAY @385
IF ~~ THEN REPLY @382 GOTO ANRosyFirstTalk6-1
IF ~~ THEN REPLY @386 GOTO ANRosyFirstTalk6-3
IF ~~ THEN REPLY @388 GOTO ANRosyFirstTalk6-4
IF ~~ THEN REPLY @390 GOTO ANRosyFirstTalk6-5
END

IF ~~ THEN BEGIN ANRosyFirstTalk6-3
  SAY @387
IF ~~ THEN REPLY @382 GOTO ANRosyFirstTalk6-1
IF ~~ THEN REPLY @384 GOTO ANRosyFirstTalk6-2
IF ~~ THEN REPLY @388 GOTO ANRosyFirstTalk6-4
IF ~~ THEN REPLY @390 GOTO ANRosyFirstTalk6-5
END

IF ~~ THEN BEGIN ANRosyFirstTalk6-4
  SAY @389
IF ~~ THEN REPLY @382 GOTO ANRosyFirstTalk6-1
IF ~~ THEN REPLY @384 GOTO ANRosyFirstTalk6-2
IF ~~ THEN REPLY @386 GOTO ANRosyFirstTalk6-3
IF ~~ THEN REPLY @390 GOTO ANRosyFirstTalk6-5
END

IF ~~ THEN BEGIN ANRosyFirstTalk6-5
  SAY @391
  =@392
IF ~~ THEN REPLY @393 GOTO ANRosyFirstTalk7  
IF ~~ THEN DO ~SetGlobalTimer("ANNumaOrgotTimer","GLOBAL",TWO_DAYS) SetGlobal("ANSearchGuildFather","GLOBAL",99)~ REPLY @401 GOTO ANRosyFirstTalkEnd3
END

IF ~~ THEN BEGIN ANRosyFirstTalk7
  SAY @394
IF ~~ THEN REPLY @395 GOTO ANRosyFirstTalk7-1
END

IF ~~ THEN BEGIN ANRosyFirstTalk7-1
  SAY @396
IF ~~ THEN REPLY @397 GOTO ANRosyFirstTalk7-2
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",3)~ REPLY @399 GOTO ANRosyFirstTalk7-Wait
END

IF ~~ THEN BEGIN ANRosyFirstTalk7-2
  SAY @398
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",4)~ REPLY @403 GOTO ANRosyFirstTalk8
END

IF ~~ THEN BEGIN ANRosyFirstTalk7-Wait
  SAY @400
IF ~~ THEN EXIT
END

IF WEIGHT #-99 ~Global("ANSearchGuildFather","GLOBAL",3)~ THEN BEGIN ANRosyFirstTalkWait
  SAY @550
IF ~~ THEN REPLY @397 GOTO ANRosyFirstTalk7-2
IF ~~ THEN REPLY @399 GOTO ANRosyFirstTalk7-Wait
END

IF ~~ THEN BEGIN ANRosyFirstTalk8
  SAY @404
IF ~~ THEN DO ~AddJournalEntry(@1018,QUEST)~ REPLY @405 GOTO ANRosyFirstTalk8-1
IF ~~ THEN REPLY @407 GOTO ANRosyFirstTalk8-2
IF ~~ THEN REPLY @409 GOTO ANRosyFirstTalk8-3
END

IF ~~ THEN BEGIN ANRosyFirstTalk8-1
  SAY @406
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANRosyFirstTalk8-2
  SAY @408
IF ~~ THEN DO ~AddJournalEntry(@1018,QUEST)~ REPLY @405 GOTO ANRosyFirstTalk8-1
IF ~~ THEN REPLY @409 GOTO ANRosyFirstTalk8-3
END

IF ~~ THEN BEGIN ANRosyFirstTalk8-3
  SAY @410
IF ~~ THEN DO ~AddJournalEntry(@1018,QUEST)~ REPLY @405 GOTO ANRosyFirstTalk8-1 
IF ~~ THEN REPLY @407 GOTO ANRosyFirstTalk8-2
END

CHAIN IF WEIGHT #-99 ~Global("ANSearchGuildFather","GLOBAL",4) See("ANRosy")~ 
THEN SHOP08 ANGalumpTalk
@411 DO ~SetGlobal("ANSearchGuildFather","GLOBAL",5)~
== ANRosy @412
== SHOP08 @413
== ANRosy @414
== SHOP08 @415
== ANRosy @416
END
IF ~~ THEN REPLY @417 EXTERN ANRosy ANGalumpTalk1 
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",99)~ REPLY @419 EXTERN ANRosy ANGalumpTalk2

APPEND ANRosy
IF ~~ THEN BEGIN ANGalumpTalk1
  SAY @418
IF ~~ THEN EXTERN SHOP08 ANGalumpTalk3 
END

IF ~~ THEN BEGIN ANGalumpTalk2
  SAY @420
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANGalumpTalk5
  SAY @432
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #-98 ~AreaCheck("AR0709") Global("ANSearchGuildFather","GLOBAL",6)~ THEN BEGIN ANRosyTavern
  SAY @433
IF ~~ THEN EXIT
END

IF WEIGHT #-97 ~AreaCheck("AR0700") Global("ANSearchGuildFather","GLOBAL",4)~ THEN BEGIN ANRosyGalump
  SAY @573
IF ~~ THEN EXIT
END

END

APPEND SHOP08
IF ~~ THEN BEGIN ANGalumpTalk3 
  SAY @484
IF ~CheckStatGT(Player1,8,STR)~ THEN REPLY @421 GOTO ANGalumpTalk4
IF ~CheckStatGT(Player1,10,STR)~ THEN REPLY @422 GOTO ANGalumpTalk4
IF ~CheckStatGT(Player1,10,INT)~ THEN REPLY @423 GOTO ANGalumpTalk4
IF ~CheckStatGT(Player1,10,CHR)~ THEN REPLY @424 GOTO ANGalumpTalk4
IF ~~ THEN REPLY @425 GOTO ANGalumpTalk4
END

IF ~~ THEN BEGIN ANGalumpTalk4
  SAY @426
=@427
=@428
IF ~~ THEN DO ~AddJournalEntry(@1019,QUEST) SetGlobal("ANSearchGuildFather","GLOBAL",6)~ REPLY @429 EXTERN ANRosy ANGalumpTalk5
IF ~~ THEN DO ~AddJournalEntry(@1019,QUEST) SetGlobal("ANSearchGuildFather","GLOBAL",6)~ REPLY @430 EXTERN ANRosy ANGalumpTalk5
IF ~~ THEN DO ~AddJournalEntry(@1019,QUEST) SetGlobal("ANSearchGuildFather","GLOBAL",6)~ REPLY @431 EXTERN ANRosy ANGalumpTalk5
END

END

EXTEND_BOTTOM SEVBAR01 0
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @434 GOTO ANPatriciaTalk1
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @436 GOTO ANPatriciaTalk2
END

EXTEND_BOTTOM SEVBAR01 1
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @434 GOTO ANPatriciaTalk1
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @436 GOTO ANPatriciaTalk2
END

EXTEND_BOTTOM SEVBAR01 3
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @434 GOTO ANPatriciaTalk1
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @436 GOTO ANPatriciaTalk2
END

EXTEND_BOTTOM SEVBAR01 5
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @434 GOTO ANPatriciaTalk1
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @436 GOTO ANPatriciaTalk2
END

EXTEND_BOTTOM SEVBAR01 7
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @434 GOTO ANPatriciaTalk1
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @436 GOTO ANPatriciaTalk2
END

EXTEND_BOTTOM SEVBAR01 11
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @434 GOTO ANPatriciaTalk1
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @436 GOTO ANPatriciaTalk2
END

EXTEND_BOTTOM SEVBAR01 12
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @434 GOTO ANPatriciaTalk1
IF ~Global("ANSearchGuildFather","GLOBAL",6)~ THEN REPLY @436 GOTO ANPatriciaTalk2
END

APPEND SEVBAR01
IF ~~ THEN BEGIN ANPatriciaTalk1
  SAY @435
IF ~~ THEN REPLY @438 GOTO ANPatriciaTalk3
IF ~~ THEN REPLY @439 GOTO ANPatriciaTalk3
END

IF ~~ THEN BEGIN ANPatriciaTalk2
  SAY @437
IF ~~ THEN REPLY @438 GOTO ANPatriciaTalk3
IF ~~ THEN REPLY @439 GOTO ANPatriciaTalk3
END

IF ~~ THEN BEGIN ANPatriciaTalk3
  SAY @440
IF ~CheckStatGT(Player1,10,INT)~ THEN REPLY @441 GOTO ANPatriciaTalk4-1
IF ~~ THEN REPLY @442 GOTO ANPatriciaTalk4-2
END

IF ~~ THEN BEGIN ANPatriciaTalk4-1
  SAY @443
IF ~~ THEN REPLY @445 GOTO ANPatriciaTalk5
IF ~~ THEN REPLY @446 GOTO ANPatriciaTalk5
IF ~~ THEN REPLY @447 GOTO ANPatriciaTalk5
END

IF ~~ THEN BEGIN ANPatriciaTalk4-2
  SAY @444
IF ~~ THEN REPLY @445 GOTO ANPatriciaTalk5
IF ~~ THEN REPLY @446 GOTO ANPatriciaTalk5
IF ~~ THEN REPLY @447 GOTO ANPatriciaTalk5
END

IF ~~ THEN BEGIN ANPatriciaTalk5
  SAY @448
=@449
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",7)~ EXIT
END

END

BEGIN ANZarina

CHAIN IF WEIGHT #-2 ~	Global("ANSearchGuildFather","GLOBAL",7) Global("ANZarinaInSevenVales","AR0709",1)~ 
THEN ANZarina ANZarinaTalk1
@450 DO ~SetGlobal("ANSearchGuildFather","GLOBAL",8)~
=@451
== ANRosy @452
=@453
== ANZarina @454
== ANRosy @455
== ANZarina @456
== ANRosy @457
== ANZarina @458
== ANRosy @459
== ANZarina @460
== ANRosy @461
== ANZarina @462
== ANRosy @463
== ANZarina @464
== ANRosy @465
== ANZarina @466
== ANRosy @467
== ANZarina @468
== ANRosy @469
== ANZarina @470
== ANRosy @471
== ANZarina @472
== ANRosy @473
== ANZarina @474
== ANRosy @475
== ANZarina @476
== ANRosy @477
== ANZarina @478
== ANRosy @479
== ANZarina @480 DO ~AddJournalEntry(@1020,QUEST)~
== ANRosy @481 DO ~EscapeAreaMove("AR0607",784,313,13)~
== ANZarina @482 DO ~EscapeAreaMove("AR0607",722,326,13)~
EXIT

APPEND ANZarina
IF WEIGHT #-3 ~GlobalGT("ANSearchGuildFather","GLOBAL",8) !Global("ANSearchGuildFather","GLOBAL",13)~ THEN BEGIN ANZarinaTalkNoQuests
  SAY @552
IF ~~ THEN EXIT
END

IF WEIGHT #-99 ~Global("ANSearchGuildFather","GLOBAL",13)~ THEN BEGIN ANZarinaTalkFinalQuest
  SAY @546
IF ~~ THEN EXIT
END

END

APPEND ANRosy
IF WEIGHT #-3 ~GlobalGT("ANSearchGuildFather","GLOBAL",8) !Global("ANSearchGuildFather","GLOBAL",13)~ THEN BEGIN ANRosyQuestNoFinish
  SAY @551
IF ~Global("ANSearchGuildFather","GLOBAL",98)~ THEN DO ~SetGlobalTimer("ANNumaOrgotTimer","GLOBAL",TWO_DAYS) SetGlobal("ANSearchGuildFather","GLOBAL",99) GiveGoldForce(200)~ REPLY @553 GOTO ANRosyQuestFinalOtkaz
IF ~~ THEN REPLY @571 GOTO ANRosyQuestNoFinish1
END

IF WEIGHT #-98 ~Global("ANSearchGuildFather","GLOBAL",13)~ THEN BEGIN ANRosyTalkFinalQuest
  SAY @544
=@545
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANRosyQuestNoFinish1
  SAY @572
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANRosyQuestFinalOtkaz
  SAY @554
IF ~~ THEN DO ~AddJournalEntry(@1025,QUEST_DONE) AddexperienceParty(1000) EscapeArea()~ EXIT
END
END

BEGIN ANSAIL2

IF ~Global("ANSearchGuildFather","GLOBAL",8)~ THEN BEGIN ANANSAIL2Talk
  SAY @483
  =@484
IF ~~ THEN REPLY @485 GOTO ANANSAIL2Talk1
IF ~~ THEN REPLY @486 GOTO ANANSAIL2Talk1
IF ~~ THEN REPLY @487 GOTO ANANSAIL2Talk1
END

IF ~~ THEN BEGIN ANANSAIL2Talk1
  SAY @488
  =@489  
IF ~~ THEN REPLY @490 GOTO ANANSAIL2Talk2
IF ~~ THEN REPLY @491 GOTO ANANSAIL2Talk2
IF ~~ THEN REPLY @492 GOTO ANANSAIL2Talk2
END

IF ~~ THEN BEGIN ANANSAIL2Talk2
  SAY @493
IF ~~ THEN REPLY @496 GOTO ANANSAIL2Talk3-1
IF ~~ THEN REPLY @494 GOTO ANANSAIL2Talk3
IF ~~ THEN REPLY @495 GOTO ANANSAIL2Talk3
END

IF ~~ THEN BEGIN ANANSAIL2Talk3
  SAY @497
IF ~~ THEN REPLY @498 GOTO ANANSAIL2Talk4-1
IF ~~ THEN REPLY @500 GOTO ANANSAIL2Talk4-2
IF ~~ THEN REPLY @502 GOTO ANANSAIL2Talk4-3
IF ~~ THEN REPLY @504 GOTO ANANSAIL2Talk4-4
END

IF ~~ THEN BEGIN ANANSAIL2Talk3-1
  SAY @574
IF ~~ THEN REPLY @498 GOTO ANANSAIL2Talk4-1
IF ~~ THEN REPLY @500 GOTO ANANSAIL2Talk4-2
IF ~~ THEN REPLY @502 GOTO ANANSAIL2Talk4-3
IF ~~ THEN REPLY @504 GOTO ANANSAIL2Talk4-4
END

IF ~~ THEN BEGIN ANANSAIL2Talk4-1
  SAY @499
IF ~~ THEN GOTO ANANSAIL2Talk5
END

IF ~~ THEN BEGIN ANANSAIL2Talk4-2
  SAY @501
IF ~~ THEN GOTO ANANSAIL2Talk5
END

IF ~~ THEN BEGIN ANANSAIL2Talk4-3
  SAY @503
IF ~~ THEN GOTO ANANSAIL2Talk5
END

IF ~~ THEN BEGIN ANANSAIL2Talk4-4
  SAY @505
IF ~~ THEN GOTO ANANSAIL2Talk5
END

IF ~~ THEN BEGIN ANANSAIL2Talk5
  SAY @506
  =@507
IF ~~ THEN REPLY @508 GOTO ANANSAIL2Talk6
IF ~~ THEN REPLY @509 GOTO ANANSAIL2Talk6
IF ~~ THEN REPLY @510 GOTO ANANSAIL2Talk6
IF ~~ THEN REPLY @511 GOTO ANANSAIL2Talk6
END

IF ~~ THEN BEGIN ANANSAIL2Talk6
  SAY @512
IF ~~ THEN DO ~AddJournalEntry(@1021,QUEST) SetGlobal("ANSearchGuildFather","GLOBAL",9)~ REPLY @513 GOTO ANANSAIL2Talk7
IF ~~ THEN DO ~AddJournalEntry(@1021,QUEST) SetGlobal("ANSearchGuildFather","GLOBAL",9)~ REPLY @514 GOTO ANANSAIL2Talk7
IF ~~ THEN DO ~AddJournalEntry(@1021,QUEST) SetGlobal("ANSearchGuildFather","GLOBAL",9)~ REPLY @515 GOTO ANANSAIL2Talk7
END

IF ~~ THEN BEGIN ANANSAIL2Talk7
  SAY @516
IF ~~ THEN DO ~EscapeArea()~ EXIT
END


CHAIN IF WEIGHT #-99 ~Global("ANSearchGuildFather","GLOBAL",9)~ 
THEN UHINN01 ANRosyQuestVincencoTalk
@517 DO ~SetGlobal("ANSearchGuildFather","GLOBAL",10)~
END
IF ~~ THEN REPLY @518 EXTERN UHINN01 ANRosyQuestVincencoTalk1

APPEND UHINN01

IF ~~ THEN BEGIN ANRosyQuestVincencoTalk1
  SAY @519
IF ~~ THEN REPLY @520 GOTO ANRosyQuestVincencoTalk2
END

IF ~~ THEN BEGIN ANRosyQuestVincencoTalk2
  SAY @521
IF ~~ THEN REPLY @522 GOTO ANRosyQuestVincencoTalk3
END

IF ~~ THEN BEGIN ANRosyQuestVincencoTalk3
  SAY @523
=@524
IF ~~ THEN REPLY @525 GOTO ANRosyQuestVincencoTalk4
IF ~~ THEN DO ~AddJournalEntry(@1024,QUEST) SetGlobal("ANSearchGuildFather","GLOBAL",98)~ REPLY @569 GOTO ANRosyQuestVincencoTalkEnd
END

IF ~~ THEN BEGIN ANRosyQuestVincencoTalk4
  SAY @526
IF ~~ THEN DO ~AddJournalEntry(@1022,QUEST)~ REPLY @527 GOTO ANRosyQuestVincencoTalk5
END

IF ~~ THEN BEGIN ANRosyQuestVincencoTalk5
  SAY @528
=@529
IF ~~ THEN DO ~GiveItemCreate("ANrat1",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN ANRosyQuestVincencoTalkEnd
  SAY @570
IF ~~ THEN EXIT
END

END

// Talos temple
EXTEND_BOTTOM TALMISS 0
IF ~Global("ANSearchGuildFather","GLOBAL",10) PartyHasItem("ANrat1")~ THEN REPLY @530 GOTO ANTALMISSRatTalk
END

APPEND TALMISS
IF ~~ THEN BEGIN ANTALMISSRatTalk
  SAY @567
IF ~~ THEN EXIT
END
END

//Latander temple
EXTEND_BOTTOM DAWNMAS 0
IF ~Global("ANSearchGuildFather","GLOBAL",10) PartyHasItem("ANrat1")~ THEN DO ~TakePartyItem("ANrat1")~ REPLY @530 GOTO ANDAWNMASRatTalk
END

APPEND DAWNMAS
IF ~~ THEN BEGIN ANDAWNMASRatTalk
  SAY @531
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",11)~ EXIT
END
END

//Helm temple
EXTEND_BOTTOM HELMPR 0
IF ~Global("ANSearchGuildFather","GLOBAL",10) PartyHasItem("ANrat1")~ THEN DO ~TakePartyItem("ANrat1")~ REPLY @530 GOTO ANHELMPRRatTalk
END

APPEND HELMPR
IF ~~ THEN BEGIN ANHELMPRRatTalk
  SAY @568
IF ~~ THEN DO ~SetGlobal("ANSearchGuildFather","GLOBAL",11)~ EXIT
END
END

BEGIN ANFather
IF ~Global("ANSearchGuildFather","GLOBAL",11)~ THEN BEGIN ANFatherTalk
  SAY @532
IF ~~ THEN DO ~SetGlobalTimer("ANNumaOrgotTimer","GLOBAL",TWO_DAYS) SetGlobal("ANSearchGuildFather","GLOBAL",12)~ REPLY @533 GOTO ANFatherTalk1
IF ~~ THEN DO ~SetGlobalTimer("ANNumaOrgotTimer","GLOBAL",TWO_DAYS) SetGlobal("ANSearchGuildFather","GLOBAL",12)~ REPLY @534 GOTO ANFatherTalk1
IF ~~ THEN DO ~SetGlobalTimer("ANNumaOrgotTimer","GLOBAL",TWO_DAYS) SetGlobal("ANSearchGuildFather","GLOBAL",12)~ REPLY @535 GOTO ANFatherTalk1
END

IF ~~ THEN BEGIN ANFatherTalk1
  SAY @536
=@537
IF ~~ THEN DO ~AddJournalEntry(@1023,QUEST_DONE) AddexperienceParty(2000)~ REPLY @538 GOTO ANFatherTalk2
IF ~~ THEN DO ~AddJournalEntry(@1023,QUEST_DONE) AddexperienceParty(2000)~ REPLY @539 GOTO ANFatherTalk2
IF ~~ THEN DO ~AddJournalEntry(@1023,QUEST_DONE) AddexperienceParty(2000)~ REPLY @540 GOTO ANFatherTalk2
END

IF ~~ THEN BEGIN ANFatherTalk2
  SAY @541
=@542
IF ~~ THEN DO ~GiveGoldForce(500) EscapeArea()~ EXIT
END

CHAIN IF WEIGHT #-99 ~Global("ANSearchGuildFather","GLOBAL",12) OR(2) Global("ANSearchGuildFatherExists","AR0902",2) Global("ANSearchGuildFatherExists","AR0901",2)~ 
THEN PLAYER1 ANRosyQuestFinalTalk
@543 DO ~SetGlobal("ANSearchGuildFather","GLOBAL",13) SetGlobal("ANSearchGuildFatherExists","AR0901",3) SetGlobal("ANSearchGuildFatherExists","AR0902",3)~
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @555
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @556
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @557
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @557
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @558
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @559
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @560
== IF_FILE_EXISTS 7XTiaxJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @561
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @562
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @564
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @565
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @566
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @563
EXIT
