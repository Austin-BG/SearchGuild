BEGIN ANguard1
BEGIN ANcivil1
BEGIN ANhemed1
BEGIN ANbugb01

IF ~Global("ANBugbearExists","AR1002",3) Global("ANSearchGuild","GLOBAL",0)~ THEN BEGIN ANnordikFirstTalk
  SAY @0
=@1  
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANBugbearExists","AR1002",4)~ REPLY @2 + ANnordikFirstTalk3
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANBugbearExists","AR1002",4)~ REPLY @28 + ANnordikFirstTalk3
IF ~~ THEN DO ~SetGlobal("ANBugbearExists","AR1002",4)~ REPLY @3 + ANnordikFirstTalk2
IF ~~ THEN DO ~SetGlobal("ANBugbearExists","AR1002",4)~ REPLY @27 + ANnordikFirstTalk2
END

IF ~~ THEN BEGIN ANnordikFirstTalk2
  SAY @4
IF ~~ THEN DO ~ActionOverride("ANcivil1",DestroySelf()) ActionOverride("ANguard1",EscapeArea()) ActionOverride("amnleg01",EscapeArea()) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANnordikFirstTalk3
  SAY @5
IF ~~ THEN REPLY @6 + ANnordikFirstTalk3_1
IF ~~ THEN REPLY @29 + ANnordikFirstTalk3_1
IF ~~ THEN REPLY @30 + ANnordikFirstTalk3_1
END

IF ~~ THEN BEGIN ANnordikFirstTalk3_1
  SAY @7
IF ~~ THEN EXTERN ANguard1 ANnordikFirstTalk3_1_1
END

IF ~~ THEN BEGIN ANnordikFirstTalk3_2
  SAY @10
IF ~~ THEN REPLY @11 + ANnordikFirstTalk3_2_1
IF ~~ THEN REPLY @34 + ANnordikFirstTalk3_3
IF ~~ THEN REPLY @35 + ANnordikFirstTalk2
END

IF ~~ THEN BEGIN ANnordikFirstTalk3_2_1
  SAY @12
IF ~~ THEN REPLY @13 + ANnordikFirstTalk3_3
IF ~~ THEN REPLY @33 GOTO ANnordikFirstTalk2
END

IF ~~ THEN BEGIN ANnordikFirstTalk3_3
SAY @14
=@15
IF ~~ THEN REPLY @18 GOTO ANnordikFirstTalk4
IF ~~ THEN REPLY @16 EXTERN ANcivil1 ANnordikFirstTalk4Civ
IF ~~ THEN REPLY @17 GOTO ANnordikFirstTalk2
IF ~~ THEN REPLY @36 GOTO ANnordikFirstTalk2
END

CHAIN ANbugb01 ANnordikFirstTalk4
@19 DO ~SetGlobal("ANSearchGuild","GLOBAL",1) ActionOverride("ANguard1",DestroySelf()) ActionOverride("amnleg01",DestroySelf())~
== ANcivil1 @20
=@21
=@22
=@23
END
IF ~~ THEN REPLY @24 DO ~ActionOverride("ANbugb01",DestroySelf()) DestroySelf()~ EXTERN ANcivil1 ANnordikFirstTalk4-1

CHAIN ANcivil1 ANnordikFirstTalk4Civ
@20 DO ~SetGlobal("ANSearchGuild","GLOBAL",1) ActionOverride("ANguard1",DestroySelf()) ActionOverride("amnleg01",DestroySelf())~
=@21
=@22
=@23
END
IF ~~ THEN REPLY @24 DO ~ActionOverride("ANbugb01",DestroySelf()) DestroySelf()~ EXTERN ANcivil1 ANnordikFirstTalk4-1

APPEND ANcivil1
IF ~~ THEN BEGIN ANnordikFirstTalk4-1
  SAY @25
IF ~~ THEN EXIT
END
END

APPEND ANguard1
IF ~~ THEN BEGIN ANnordikFirstTalk3_1_1
  SAY @8
IF ~~ THEN REPLY @9 EXTERN ANbugb01 ANnordikFirstTalk3_2
IF ~~ THEN REPLY @31 EXTERN ANbugb01 ANnordikFirstTalk3_2
IF ~~ THEN REPLY @32 EXTERN ANbugb01 ANnordikFirstTalk3_2
IF ~~ THEN REPLY @33 EXTERN ANbugb01 ANnordikFirstTalk2
END
END


APPEND ANbugb01

IF ~Global("ANSearchGuild","GLOBAL",3)~ THEN BEGIN ANnordikSecondTalk
  SAY @37
IF ~!Class(Player1,DRUID) !Class(Player1,THIEF) !Class(Player1,BARD) !Class(Player1,CLERIC) !Class(Player1,PALADIN) !Class(Player1,MAGE)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @38 + ANnordikSecondTalk_Questions 
IF ~!Class(Player1,DRUID) !Class(Player1,THIEF) !Class(Player1,BARD) !Class(Player1,CLERIC) !Class(Player1,PALADIN) !Class(Player1,MAGE)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @39 + ANnordikSecondTalk_Questions 
IF ~Class(Player1,THIEF)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @38 + ANnordikSecondTalk1_Thief
IF ~Class(Player1,THIEF)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @39 + ANnordikSecondTalk1_Thief   
IF ~Class(Player1,BARD)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @38 + ANnordikSecondTalk1_Bard
IF ~Class(Player1,BARD)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @39 + ANnordikSecondTalk1_Bard  
IF ~Class(Player1,CLERIC)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @38 + ANnordikSecondTalk1_Cleric
IF ~Class(Player1,CLERIC)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @39 + ANnordikSecondTalk1_Cleric 
IF ~Class(Player1,PALADIN)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @38 + ANnordikSecondTalk1_Paladin
IF ~Class(Player1,PALADIN)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @39 + ANnordikSecondTalk1_Paladin  
IF ~Class(Player1,MAGE_ALL)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @38 + ANnordikSecondTalk1_Mage
IF ~Class(Player1,MAGE_ALL)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @39 + ANnordikSecondTalk1_Mage
IF ~Class(Player1,DRUID_ALL)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @38 + ANnordikSecondTalk1_Druid
IF ~Class(Player1,DRUID_ALL)~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",4)~ REPLY @39 + ANnordikSecondTalk1_Druid
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Druid
  SAY @307
IF ~~ THEN REPLY @308 GOTO ANnordikSecondTalk1_Druid1
IF ~~ THEN REPLY @42 GOTO ANnordikSecondTalk1_Druid1
IF ~~ THEN REPLY @43 GOTO ANnordikSecondTalk1_Druid1
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Druid1
  SAY @309
IF ~~ THEN REPLY @310 GOTO ANnordikSecondTalk_Questions
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Mage
  SAY @40
IF ~~ THEN REPLY @41 GOTO ANnordikSecondTalk1_Mage1
IF ~~ THEN REPLY @42 GOTO ANnordikSecondTalk1_Mage1
IF ~~ THEN REPLY @43 GOTO ANnordikSecondTalk1_Mage1
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Mage1
  SAY @44
IF ~~ THEN REPLY @45 GOTO ANnordikSecondTalk_Questions
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Paladin
  SAY @46
IF ~~ THEN REPLY @47 GOTO ANnordikSecondTalk1_Paladin1
IF ~~ THEN REPLY @42 GOTO ANnordikSecondTalk1_Paladin1
IF ~~ THEN REPLY @43 GOTO ANnordikSecondTalk1_Paladin1
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Paladin1
  SAY @48
IF ~~ THEN REPLY @45 GOTO ANnordikSecondTalk_Questions
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Cleric
  SAY @49
IF ~~ THEN REPLY @50 GOTO ANnordikSecondTalk1_Cleric1
IF ~~ THEN REPLY @42 GOTO ANnordikSecondTalk1_Cleric1
IF ~~ THEN REPLY @43 GOTO ANnordikSecondTalk1_Cleric1
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Cleric1
  SAY @51
IF ~~ THEN REPLY @45 GOTO ANnordikSecondTalk_Questions
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Bard
  SAY @52
IF ~~ THEN REPLY @53 GOTO ANnordikSecondTalk1_Bard1
IF ~~ THEN REPLY @54 GOTO ANnordikSecondTalk1_Bard1
IF ~~ THEN REPLY @55 GOTO ANnordikSecondTalk1_Bard1
IF ~~ THEN REPLY @43 GOTO ANnordikSecondTalk1_Bard1
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Bard1
  SAY @56
IF ~~ THEN REPLY @57 GOTO ANnordikSecondTalk1_Bard2  
IF ~~ THEN REPLY @58 GOTO ANnordikSecondTalk1_Bard2
IF ~~ THEN REPLY @59 GOTO ANnordikSecondTalk1_Bard2
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Bard2
  SAY @60
IF ~~ THEN REPLY @62 GOTO ANnordikSecondTalk_Questions
END

IF ~~ THEN BEGIN ANnordikSecondTalkNO
  SAY @61
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Thief
  SAY @63
IF ~~ THEN REPLY @64 GOTO ANnordikSecondTalk1_Thief1
IF ~~ THEN REPLY @65 GOTO ANnordikSecondTalk1_Thief1
IF ~~ THEN REPLY @43 GOTO ANnordikSecondTalk1_Thief1
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Thief1
  SAY @66
IF ~~ THEN REPLY @67 GOTO ANnordikSecondTalk1_Thief2  
IF ~~ THEN REPLY @68 GOTO ANnordikSecondTalk1_Thief2 
IF ~~ THEN REPLY @69 GOTO ANnordikSecondTalk1_Thief2 
IF ~~ THEN REPLY @70 GOTO ANnordikSecondTalk1_Thief2 
END

IF ~~ THEN BEGIN ANnordikSecondTalk1_Thief2 
  SAY @72
IF ~~ THEN REPLY @62 GOTO ANnordikSecondTalk_Questions
END

IF ~~ THEN BEGIN ANnordikSecondTalk_Questions
  SAY @71
IF ~~ THEN REPLY @73 GOTO ANnordikSecondTalkQuestions1
IF ~~ THEN REPLY @74 GOTO ANnordikSecondTalkQuestions2
IF ~~ THEN REPLY @75 GOTO ANnordikSecondTalkQuestions3
IF ~~ THEN REPLY @76 GOTO ANnordikSecondTalkQuestions4
IF ~~ THEN REPLY @77 GOTO ANnordikSecondTalkQuestions5
IF ~~ THEN REPLY @78 GOTO ANnordikSecondTalkQuestions6
IF ~~ THEN REPLY @79 GOTO ANnordikSecondTalkQuestions7
IF ~~ THEN REPLY @80 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions1
  SAY @81
IF ~~ THEN REPLY @82 GOTO ANnordikSecondTalkQuestions1_1
IF ~~ THEN REPLY @83 GOTO ANnordikSecondTalkQuestions1_1
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions1_1
  SAY @84
=@85 
=@86 
IF ~~ THEN REPLY @87 GOTO ANnordikSecondTalkQuestions1_2
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions1_2
  SAY @88
=@89  
IF ~~ THEN REPLY @90 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions2
  SAY @92
IF ~~ THEN REPLY @93 GOTO ANnordikSecondTalkQuestions2_1
IF ~~ THEN REPLY @94 GOTO ANnordikSecondTalkQuestions2_1
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions2_1
  SAY @95
IF ~~ THEN REPLY @90 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END


IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3
  SAY @96
 =@97 
IF ~OR(2) !InParty("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN GOTO ANnordikSecondTalkQuestions3_1
IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN EXTERN VICONIJ ANnordikSecondTalkQuestions3_Vic
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_1
  SAY @114
=@115 
=@116 
=@117
=@118
IF ~~ THEN REPLY @119 GOTO ANnordikSecondTalkQuestions3_2
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_2
  SAY @120
=@121
IF ~~ THEN REPLY @122 GOTO ANnordikSecondTalkQuestions3_3
IF ~~ THEN REPLY @123 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_3
  SAY @124
IF ~~ THEN REPLY @125 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_Vic1
  SAY @99
=@100
IF ~~ THEN EXTERN VICONIJ ANnordikSecondTalkQuestions3_Vic2
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_Vic3
  SAY @102
IF ~~ THEN REPLY @103 GOTO ANnordikSecondTalkQuestions3_Vic4
IF ~~ THEN REPLY @104 GOTO ANnordikSecondTalkQuestions3_Vic4
IF ~~ THEN REPLY @105 EXTERN VICONIJ ANnordikSecondTalkQuestions3_Vic4
IF ~GLOBAL("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY @107 GOTO ANnordikSecondTalkQuestions3_Vic4
IF ~~ THEN REPLY @108 DO ~Enemy() Attack("Viconia") ActionOverride("Viconia",Attack("ANbugb01"))~ GOTO ANnordikSecondTalkQuestions3_VicBattle
IF ~~ THEN REPLY @109 GOTO ANnordikSecondTalkNO
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_Vic4
  SAY @110
IF ~~ THEN EXTERN VICONIJ ANnordikSecondTalkQuestions3_Vic5
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_Vic6
  SAY @112
IF ~~ THEN REPLY @113 GOTO ANnordikSecondTalkQuestions3_1
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_VicBattle
  SAY @126
IF ~~ THEN EXIT
END

END

APPEND VICONIJ

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_Vic
  SAY @98
IF ~~ THEN EXTERN ANbugb01 ANnordikSecondTalkQuestions3_Vic1
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_Vic4
  SAY @106
IF ~~ THEN REPLY @113 EXTERN ANbugb01 ANnordikSecondTalkQuestions3_1
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_Vic2
  SAY @101
IF ~~ THEN DO ~SetGlobal("ViconiaNordikConflict","GLOBAL",1)~ EXTERN ANbugb01 ANnordikSecondTalkQuestions3_Vic3
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions3_Vic5
  SAY @111
IF ~~ THEN EXTERN ANbugb01 ANnordikSecondTalkQuestions3_Vic6
END

END

APPEND ANbugb01

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions4
  SAY @127
=@128  
IF ~~ THEN REPLY @129 GOTO ANnordikSecondTalkQuestions4_1
IF ~~ THEN REPLY @131 GOTO ANnordikSecondTalkQuestions4_2
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions4_1
  SAY @130
IF ~~ THEN REPLY @131 GOTO ANnordikSecondTalkQuestions4_2  
IF ~~ THEN REPLY @90 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions4_2
  SAY @132
IF ~~ THEN REPLY @90 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions5
  SAY @133
IF ~~ THEN REPLY @134 GOTO ANnordikSecondTalkQuestions5_1
IF ~~ THEN REPLY @135 GOTO ANnordikSecondTalkQuestions5_1
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions5_1
  SAY @136
IF ~~ THEN REPLY @137 GOTO ANnordikSecondTalkQuestions5_2    
IF ~~ THEN REPLY @90 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions5_2
  SAY @138
IF ~~ THEN REPLY @90 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions6
  SAY @139
IF ~~ THEN REPLY @140 GOTO ANnordikSecondTalkQuestions6_1
IF ~~ THEN REPLY @141 GOTO ANnordikSecondTalkQuestions6_1
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions6_1
  SAY @142
IF ~~ THEN REPLY @90 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions7
  SAY @143
IF ~~ THEN REPLY @144 GOTO ANnordikSecondTalkQuestions7_1
IF ~~ THEN REPLY @145 GOTO ANnordikSecondTalkQuestions7_1
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions7_1
  SAY @146
IF ~~ THEN REPLY @147 GOTO ANnordikSecondTalkQuestions7_2     
IF ~~ THEN REPLY @90 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkQuestions7_2
  SAY @148
IF ~~ THEN REPLY @90 GOTO ANnordikSecondTalk_Questions
IF ~~ THEN REPLY @91 GOTO ANnordikSecondTalkNEXT
END

IF ~~ THEN BEGIN ANnordikSecondTalkNEXT
  SAY @149
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",5) SetGlobalTimer("ANSearchGuildTimer1","GLOBAL",FOURTEEN_DAYS)~ REPLY @150 GOTO ANnordikSecondTalk_See
IF ~~ THEN DO ~EscapeArea()~ REPLY @151 GOTO ANnordikSecondTalkEND
END

IF ~~ THEN BEGIN ANnordikSecondTalkEND
  SAY @152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnordikSecondTalk_See
  SAY @153
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

END

APPEND PLAYER1
IF WEIGHT #-99 ~Global("ANSearchGuild","GLOBAL",7)~ THEN BEGIN ANnordikSlumsTalk
  SAY @154
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",8)~ REPLY @155 EXTERN ANbugb01 ANnordikSlumsTalk1
END
END

APPEND ANbugb01
IF ~~ THEN BEGIN ANnordikSlumsTalk1
  SAY @156
IF ~~ THEN EXIT
END

IF ~Global("ANSearchGuild","GLOBAL",10) Global("ANSearchGuildIN","AN0450",0)~ THEN BEGIN ANnordikGuildExcursion1
  SAY @157
=@158
IF ~OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",1) SetGlobal("ANSearchGuild","GLOBAL",11)~ EXIT
IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",1) SetGlobal("ANSearchGuild","GLOBAL",11)~ EXTERN EDWINJ ANnordikGuildExcursion1Edwin
END

IF ~Global("ANSearchGuild","GLOBAL",11) Global("ANSearchGuildIN","AN0450",2)~ THEN BEGIN ANnordikGuildExcursion2
  SAY @159
=@160
IF ~~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",3)~ REPLY @161 GOTO ANnordikGuildExcursion2_1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",3)~ REPLY @162 GOTO ANnordikGuildExcursion2_2
END

IF ~~ THEN BEGIN ANnordikGuildExcursion2_1
  SAY @163
IF ~~ THEN REPLY @164 GOTO ANnordikGuildExcursion2_1_1
IF ~~ THEN REPLY @166 EXIT
END

IF ~~ THEN BEGIN ANnordikGuildExcursion2_1_1
  SAY @165
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnordikGuildExcursion2_2
  SAY @167
IF ~~ THEN EXIT
END

IF ~Global("ANSearchGuild","GLOBAL",11) Global("ANSearchGuildIN","AN0450",4)~ THEN BEGIN ANnordikGuildExcursion3
  SAY @168
=@169
IF ~~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",5)~ EXIT
END

IF ~Global("ANSearchGuild","GLOBAL",11) Global("ANSearchGuildIN","AN0450",6)~ THEN BEGIN ANnordikGuildExcursion4
  SAY @170
IF ~~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",7)~ REPLY @171 GOTO ANnordikGuildExcursion4_1 
IF ~~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",7)~ REPLY @166 EXIT
END

IF ~~ THEN BEGIN ANnordikGuildExcursion4_1 
  SAY @172
IF ~~ THEN REPLY @173 EXIT
IF ~~ THEN REPLY @166 EXIT
END

IF ~Global("ANSearchGuild","GLOBAL",11) Global("ANSearchGuildIN","AN0450",8)~ THEN BEGIN ANnordikGuildExcursion5
  SAY @175
IF ~OR(3) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) Global("ANSearchGuildEdwin","GLOBAL",0)~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",9)~ REPLY @179 GOTO ANnordikGuildExcursion5_Normal
IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Global("ANSearchGuildEdwin","GLOBAL",1)~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",9) SetGlobal("ANSearchGuildEdwin","GLOBAL",2)~ REPLY @176 EXTERN EDWINJ ANnordikGuildExcursion5_Edwin
END

IF ~~ THEN BEGIN ANnordikGuildExcursion5_Normal 
  SAY @180
IF ~~ THEN REPLY @181 GOTO ANnordikGuildExcursion5_Normal_1
IF ~~ THEN REPLY @166 EXIT
END

IF ~~ THEN BEGIN ANnordikGuildExcursion5_Normal_1 
  SAY @182
IF ~~ THEN REPLY @183 GOTO ANnordikGuildExcursion5_Normal_2
IF ~~ THEN REPLY @166 EXIT
END

IF ~~ THEN BEGIN ANnordikGuildExcursion5_Normal_2 
  SAY @184
IF ~~ THEN REPLY @185 EXIT
IF ~~ THEN REPLY @166 EXIT
END

IF ~Global("ANSearchGuild","GLOBAL",11) Global("ANSearchGuildIN","AN0450",10)~ THEN BEGIN ANnordikGuildExcursion6
  SAY @186
IF ~~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",11)~ REPLY @187 GOTO ANnordikGuildExcursion6_1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",11)~ REPLY @166 EXIT
END

IF ~~ THEN BEGIN ANnordikGuildExcursion6_1
  SAY @188
IF ~~ THEN REPLY @189 GOTO ANnordikGuildExcursion6_2
IF ~~ THEN REPLY @166 EXIT
END

IF ~~ THEN BEGIN ANnordikGuildExcursion6_2
  SAY @190
IF ~~ THEN EXIT
END

END

APPEND EDWINJ
IF ~~ THEN BEGIN ANnordikGuildExcursion5_Edwin
  SAY @177
IF ~~ THEN REPLY @178 EXTERN ANbugb01 ANnordikGuildExcursion5_Normal
END

IF ~~ THEN BEGIN ANnordikGuildExcursion1Edwin
  SAY @193
IF ~~ THEN REPLY @197 GOTO ANnordikGuildExcursion1Edwin1
IF ~~ THEN REPLY @313 GOTO ANnordikGuildExcursion1Edwin1-1
IF ~Class(Player1,MAGE_ALL) !Global("PCSphere","GLOBAL",1)~ THEN REPLY @194 GOTO ANnordikGuildExcursion1Edwin3_1
IF ~OR(2) !Class(Player1,MAGE_ALL) Global("PCSphere","GLOBAL",1)~ THEN REPLY @194 GOTO ANnordikGuildExcursion1Edwin3_2
END

IF ~~ THEN BEGIN ANnordikGuildExcursion1Edwin1
  SAY @198
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwin","GLOBAL",1)~ REPLY @199 GOTO ANnordikGuildExcursion1Edwin2
IF ~~ THEN REPLY @315 GOTO ANnordikGuildExcursion1Edwin4
END

IF ~~ THEN BEGIN ANnordikGuildExcursion1Edwin1-1
  SAY @314
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwin","GLOBAL",1)~ REPLY @199 GOTO ANnordikGuildExcursion1Edwin2
IF ~~ THEN REPLY @315 GOTO ANnordikGuildExcursion1Edwin4
END

IF ~~ THEN BEGIN ANnordikGuildExcursion1Edwin2
  SAY @200
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnordikGuildExcursion1Edwin3_1
  SAY @196
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwin","GLOBAL",1)~ REPLY @199 GOTO ANnordikGuildExcursion1Edwin2
IF ~~ THEN REPLY @315 GOTO ANnordikGuildExcursion1Edwin4
END

IF ~~ THEN BEGIN ANnordikGuildExcursion1Edwin3_2
  SAY @195
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwin","GLOBAL",1)~ REPLY @199 GOTO ANnordikGuildExcursion1Edwin2
IF ~~ THEN REPLY @315 GOTO ANnordikGuildExcursion1Edwin4
END

IF ~~ THEN BEGIN ANnordikGuildExcursion1Edwin4
  SAY @316
IF ~~ THEN EXIT
END

// Если Эдвин попал в гильдию после
IF WEIGHT #-90 ~AreaCheck("AN0450") Global("ANSearchGuildEdwinAfter","AN0450",1)~ THEN BEGIN ANGuildAfterEdwin
  SAY @193
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwinAfter","AN0450",2)~ REPLY @197 GOTO ANGuildAfterEdwin1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwinAfter","AN0450",2)~ REPLY @313 GOTO ANGuildAfterEdwin1-1
IF ~Class(Player1,MAGE_ALL) !Global("PCSphere","GLOBAL",1)~ THEN DO ~SetGlobal("ANSearchGuildEdwinAfter","AN0450",2)~ REPLY @194 GOTO ANGuildAfterEdwin3_1
IF ~OR(2) !Class(Player1,MAGE_ALL) Global("PCSphere","GLOBAL",1)~ THEN DO ~SetGlobal("ANSearchGuildEdwinAfter","AN0450",2)~ REPLY @194 GOTO ANGuildAfterEdwin3_2
END

IF ~~ THEN BEGIN ANGuildAfterEdwin1
  SAY @198
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwin","GLOBAL",2)~ REPLY @317 GOTO ANGuildAfterEdwin2
IF ~~ THEN REPLY @315 GOTO ANGuildAfterEdwin4
END

IF ~~ THEN BEGIN ANGuildAfterEdwin1-1
  SAY @314
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwin","GLOBAL",2)~ REPLY @317 GOTO ANGuildAfterEdwin2
IF ~~ THEN REPLY @315 GOTO ANGuildAfterEdwin4
END

IF ~~ THEN BEGIN ANGuildAfterEdwin2
  SAY @177
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANGuildAfterEdwin3_1
  SAY @196
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwin","GLOBAL",2)~ REPLY @317 GOTO ANGuildAfterEdwin2
IF ~~ THEN REPLY @315 GOTO ANGuildAfterEdwin4
END

IF ~~ THEN BEGIN ANGuildAfterEdwin3_2
  SAY @195
IF ~~ THEN DO ~SetGlobal("ANSearchGuildEdwin","GLOBAL",2)~ REPLY @317 GOTO ANGuildAfterEdwin2
IF ~~ THEN REPLY @315 GOTO ANGuildAfterEdwin4
END

IF ~~ THEN BEGIN ANGuildAfterEdwin4
  SAY @316
IF ~~ THEN EXIT
END


END

APPEND PLAYER1
IF ~Global("ANSearchGuildIN","AN0450",12) NumInPartyGT(1)~ THEN BEGIN ANnordikGuildExcursionPartyTalk
  SAY @191
IF ~OR(2) !InParty("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) !NumInPartyGT(1)~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",13)~ EXTERN ANbugb01 ANnordikGuildExcursionFinal_1
IF ~OR(2) !InParty("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) NumInPartyGT(1)~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",13)~ GOTO ANGuildExcursionPartyTalk
IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaNordikConflict","GLOBAL",0)~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",13)~ EXTERN VICONIJ ANGuildViconiaNoConflict
IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaNordikConflict","GLOBAL",1)~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",13)~ EXTERN VICONIJ ANGuildExcursionViconia
END

IF ~Global("ANSearchGuildIN","AN0450",12) !NumInPartyGT(1)~ THEN BEGIN ANnordikGuildExcursionFinal
  SAY @191
IF ~~ THEN DO ~SetGlobal("ANSearchGuildIN","AN0450",13)~ EXTERN ANbugb01 ANnordikGuildExcursionFinal_1
END

END

APPEND VICONIJ

IF ~~ THEN BEGIN ANGuildExcursionViconia
  SAY @201
IF ~~ THEN REPLY @202 GOTO ANGuildExcursionViconia1
IF ~~ THEN REPLY @203 GOTO ANGuildExcursionViconia2
END

IF ~~ THEN BEGIN ANGuildExcursionViconia1
  SAY @204
IF ~~ THEN REPLY @205 GOTO ANGuildExcursionViconia3
IF ~~ THEN REPLY @203 GOTO ANGuildExcursionViconia2
END

IF ~~ THEN BEGIN ANGuildExcursionViconia3
  SAY @206
IF ~!NumInPartyGT(2)~ THEN EXTERN ANbugb01 ANnordikGuildExcursionFinal_1 
IF ~NumInPartyGT(2)~ THEN EXTERN PLAYER1 ANGuildExcursionPartyTalk
END

IF ~~ THEN BEGIN ANGuildExcursionViconia2
  SAY @207
IF ~!NumInPartyGT(2)~ THEN EXTERN ANbugb01 ANnordikGuildExcursionFinal_1
IF ~NumInPartyGT(2)~ THEN EXTERN PLAYER1 ANGuildExcursionPartyTalk
END

IF ~~ THEN BEGIN ANGuildViconiaNoConflict
  SAY @671
IF ~~ THEN REPLY @205 GOTO ANGuildExcursionViconia3
IF ~~ THEN REPLY @203 GOTO ANGuildExcursionViconia2
END


END

CHAIN PLAYER1 ANGuildExcursionPartyTalk
@192
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @208
=@209
=@210
== ANbugb01 IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @211
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @212
== IF_FILE_EXISTS 7XSafaJ IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @256
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @219
=@220
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Global("ANSearchGuildEdwin","GLOBAL",0)~ THEN @221
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Global("ANSearchGuildEdwin","GLOBAL",1)~ THEN @222
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @257
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @229
=@230
== ANbugb01 IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @231
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @232
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @250
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax")!StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @250
== IF_FILE_EXISTS 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @255
END
IF ~OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) !InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN ANbugb01 ANnordikGuildExcursionFinal_1
IF ~OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) !Class(Player1,FIGHTER_ALL)~ THEN EXTERN KORGANJ ANnordikGuildKorganNotWarrior
IF ~OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) Class(Player1,FIGHTER_ALL)~ THEN EXTERN KORGANJ ANnordikGuildKorganWarrior
IF ~OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("C#IM_ImoenStays","GLOBAL",0)~ THEN EXTERN JAHEIRAJ ANnordikGuildJaheiraImoen
IF ~OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !Global("C#IM_ImoenStays","GLOBAL",0)~ THEN EXTERN JAHEIRAJ ANnordikGuildJaheiraIren
IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN EXTERN CERNDJ ANGuildExcursionCernd


APPEND CERNDJ 

IF ~~ THEN BEGIN ANGuildExcursionCernd
  SAY @223
IF ~~ THEN REPLY @224 GOTO ANGuildExcursionCernd1
END

IF ~~ THEN BEGIN ANGuildExcursionCernd1
  SAY @225
=@226 
=@227
IF ~OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) !InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN ANbugb01 ANnordikGuildExcursionFinal_1
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) !Class(Player1,FIGHTER_ALL)~ THEN EXTERN KORGANJ ANnordikGuildKorganNotWarrior
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) Class(Player1,FIGHTER_ALL)~ THEN EXTERN KORGANJ ANnordikGuildKorganWarrior
IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("C#IM_ImoenStays","GLOBAL",0)~ THEN EXTERN JAHEIRAJ ANnordikGuildJaheiraImoen
IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) !Global("C#IM_ImoenStays","GLOBAL",0)~ THEN EXTERN JAHEIRAJ ANnordikGuildJaheiraIren
END

END 



APPEND JAHEIRAJ
IF ~~ THEN BEGIN ANnordikGuildJaheiraImoen
  SAY @213
=@214  
IF ~~ THEN REPLY @215 GOTO ANnordikGuildJaheira1
IF ~~ THEN REPLY @217 GOTO ANnordikGuildJaheira1
IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN REPLY @667 GOTO ANnordikGuildJaheira1
IF ~!Global("C#IM_ImoenStays","GLOBAL",0)~ THEN REPLY @668 GOTO ANnordikGuildJaheira1
IF ~~ THEN REPLY @672 GOTO ANnordikGuildJaheira1
IF ~~ THEN REPLY @673 GOTO ANnordikGuildJaheira1
END

IF ~~ THEN BEGIN ANnordikGuildJaheiraIren
  SAY @216
=@214  
IF ~~ THEN REPLY @215 GOTO ANnordikGuildJaheira1
IF ~~ THEN REPLY @217 GOTO ANnordikGuildJaheira1
IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN REPLY @667 GOTO ANnordikGuildJaheira1
IF ~!Global("C#IM_ImoenStays","GLOBAL",0)~ THEN REPLY @668 GOTO ANnordikGuildJaheira1
IF ~~ THEN REPLY @672 GOTO ANnordikGuildJaheira1
IF ~~ THEN REPLY @673 GOTO ANnordikGuildJaheira1
END

IF ~~ THEN BEGIN ANnordikGuildJaheira1
  SAY @218
IF ~OR(2) !InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN ANbugb01 ANnordikGuildExcursionFinal_1
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) !Class(Player1,FIGHTER_ALL)~ THEN EXTERN KORGANJ ANnordikGuildKorganNotWarrior
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Class(Player1,FIGHTER_ALL)~ THEN EXTERN KORGANJ ANnordikGuildKorganWarrior
END
END

CHAIN KORGANJ ANnordikGuildKorganWarrior
@674
== ANbugb01 @675
== KORGANJ @676
== ANbugb01 @677
== KORGANJ @678
EXTERN ANbugb01 ANnordikGuildExcursionFinal_1

CHAIN KORGANJ ANnordikGuildKorganNotWarrior
@679
== ANbugb01 @675
== KORGANJ @676
== ANbugb01 @677
== KORGANJ @678
EXTERN ANbugb01 ANnordikGuildExcursionFinal_1

APPEND ANbugb01
IF ~~ THEN BEGIN ANnordikGuildExcursionFinal_1
  SAY @234
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",12) AddJournalEntry(@1000,QUEST) AddJournalEntry(@1004,QUEST)~ REPLY @235 GOTO ANnordikGuildExcursionFinal_1YES
IF ~~ THEN REPLY @244 GOTO ANnordikGuildExcursionFinal_1NO
END

IF ~~ THEN BEGIN ANnordikGuildExcursionFinal_1NO
  SAY @245
IF ~~ THEN REPLY @247 GOTO ANnordikGuildExcursionFinal_1NO_1 
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",998)~ REPLY @246 GOTO ANnordikSecondTalkEND
END

IF ~~ THEN BEGIN ANnordikGuildExcursionFinal_1NO_1 
  SAY @248
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",12) AddJournalEntry(@1000,QUEST)~ REPLY @249 GOTO ANnordikGuildExcursionFinal_1YES
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",998)~ REPLY @246 GOTO ANnordikSecondTalkEND
END

END

CHAIN ANbugb01 ANnordikGuildExcursionFinal_1YES
@236
=@237 
END 
IF ~~ THEN REPLY @238 EXTERN ANbugb01 ANnordikGuildFinal_1YES1
IF ~~ THEN REPLY @243 EXTERN ANbugb01 ANnordikGuildFinal_1YES1

CHAIN ANbugb01 ANnordikGuildFinal_1YES1
@254 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @239
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @251
== ANbugb01 IF ~InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @252
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @253
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax")!StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @251
== ANbugb01 IF ~InParty("O#Tiax")!StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @252
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax")!StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @253
== ANbugb01 @240
=@241
== PLAYER1 @242
== ANbugb01 @311 DO ~JumpToPoint([1132.311])~
=@291
EXIT

// PID
APPEND ANbugb01
IF ~Global("ANSearchGuild","GLOBAL",12)~ THEN BEGIN ANnordikPIDTalk
  SAY @258
IF ~~ THEN REPLY @259 GOTO ANnordikPIDTalkGuild
IF ~~ THEN REPLY @260 EXIT
END

IF ~~ THEN BEGIN ANnordikPIDTalkGuild
  SAY @261
IF ~~ THEN EXIT
END
END

// Table
APPEND PLAYER1
IF WEIGHT #-99 ~AreaCheck("AN0450") Global("ANstolAdelardOPEN","AN0450",1)~ THEN BEGIN ANTableTalkPLayer1
  SAY @262
IF ~~ THEN DO ~SetGlobal("ANstolAdelardOPEN","AN0450",2)~ EXTERN ANbugb01 ANTableTalkPLayer1_1
END

IF WEIGHT #-99 ~AreaCheck("AN0450") Global("ANbumagiAdelardOPEN","AN0450",1)~ THEN BEGIN ANbumagiTalkPLayer1
  SAY @269
=@270  
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2)~ REPLY @271 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2) SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @272 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2) SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @273 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2) SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @274 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2) SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @275 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2) SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @276 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2) SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @277 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2) SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @278 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2) SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @279 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",2) SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @280 GOTO ANbumagiTalkPLayer1_1
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",0)~ REPLY @290 EXIT
END

IF ~~ THEN BEGIN ANbumagiTalkPLayer1_1
  SAY @281
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @271 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @272 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN REPLY @273 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @274 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @275 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @276 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @277 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @278 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @279 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @280 GOTO ANbumagiTalkPLayer1_2
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",0)~ REPLY @290 EXIT
END

IF ~~ THEN BEGIN ANbumagiTalkPLayer1_2
  SAY @282
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @271 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN REPLY @272 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @273 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @274 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @275 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @276 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @277 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @278 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @279 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @280 GOTO ANbumagiTalkPLayer1_3
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",0)~ REPLY @290 EXIT
END

IF ~~ THEN BEGIN ANbumagiTalkPLayer1_3
  SAY @283
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @271 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @272 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @273 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN REPLY @274 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @275 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @276 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @277 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @278 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @279 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @280 GOTO ANbumagiTalkPLayer1_4
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",0)~ REPLY @290 EXIT
END

IF ~~ THEN BEGIN ANbumagiTalkPLayer1_4
  SAY @284
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @271 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @272 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @273 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @274 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @275 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @276 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN REPLY @277 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @278 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @279 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @280 GOTO ANbumagiTalkPLayer1_5
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",0)~ REPLY @290 EXIT
END

IF ~~ THEN BEGIN ANbumagiTalkPLayer1_5
  SAY @285
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @271 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~REPLY @272 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @273 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @274 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @275 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN REPLY @276 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @277 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @278 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @279 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",1)~ REPLY @280 GOTO ANbumagiTalkPLayer1_6
IF ~~ THEN DO ~SetGlobal("ANbumagiAdelardOPEN","AN0450",0)~ REPLY @290 EXIT
END

IF ~~ THEN BEGIN ANbumagiTalkPLayer1_6
  SAY @286
=@289  
IF ~Global("ANbumagiAdelardERROR","AN0450",0)~ THEN DO ~Unlock("Bumagi")~ GOTO ANbumagiTalkPLayer1_YES
IF ~Global("ANbumagiAdelardERROR","AN0450",1)~ THEN DO ~SetGlobal("ANbumagiAdelardERROR","AN0450",0) SetGlobal("ANbumagiAdelardOPEN","AN0450",0)~ GOTO ANbumagiTalkPLayer1_NO
END

IF ~~ THEN BEGIN ANbumagiTalkPLayer1_NO
  SAY @287
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANbumagiTalkPLayer1_YES
  SAY @288
IF ~~ THEN EXIT
END

END

APPEND ANbugb01
IF ~~ THEN BEGIN ANTableTalkPLayer1_1
  SAY @263
=@264  
IF ~~ THEN REPLY @265 GOTO ANTableTalkPLayer1_2
IF ~~ THEN REPLY @266 GOTO ANTableTalkPLayer1_2
END

IF ~~ THEN BEGIN ANTableTalkPLayer1_2
  SAY @267
IF ~~ THEN REPLY @268 GOTO ANTableTalkPLayer1_2_1
END

IF ~~ THEN BEGIN ANTableTalkPLayer1_2_1
  SAY @719
IF ~~ THEN EXIT
END
END

APPEND PLAYER1
IF WEIGHT #-10 ~AreaCheck("AN0450") Global("ANscrollParty","AN0450",1)~ THEN BEGIN ANscrollPartySucess
  SAY @312
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",13) SetGlobal("ANscrollParty","AN0450",2) AddJournalEntry(@1005,QUEST)~ REPLY @292 EXTERN ANbugb01 ANscrollPartySucess1
END
END

APPEND ANbugb01
IF ~~ THEN BEGIN ANscrollPartySucess1
  SAY @293
IF ~~ THEN REPLY @295 GOTO ANscrollPartySucess2 
IF ~OR(2) !InParty("7XALORA") StateCheck("7XALORA",CD_STATE_NOTVALID)~ THEN DO ~ActionOverride("ANbugb01",EscapeArea())~ REPLY @294 GOTO ANAfterGuildSucessNoALORA
IF ~InParty("7XALORA") !StateCheck("7XALORA",CD_STATE_NOTVALID)~ THEN REPLY @294 EXTERN PLAYER1 ANAfterGuildSucessALORA
END

IF ~~ THEN BEGIN ANscrollPartySucess2
  SAY @296
=@297
IF ~OR(2) !InParty("7XALORA") StateCheck("7XALORA",CD_STATE_NOTVALID)~ THEN DO ~ActionOverride("ANbugb01",EscapeArea())~ REPLY @294 GOTO ANAfterGuildSucessNoALORA
IF ~InParty("7XALORA") !StateCheck("7XALORA",CD_STATE_NOTVALID)~ THEN EXTERN PLAYER1 ANAfterGuildSucessALORA
END
END

APPEND PLAYER1
IF ~~ THEN BEGIN ANAfterGuildSucessALORA
  SAY @298
IF ~~ THEN EXTERN ANbugb01 ANAfterGuildSucessALORA1
END

END

APPEND ANbugb01

IF ~~ THEN BEGIN ANAfterGuildSucessALORA1
  SAY @299
IF ~~ THEN EXTERN IF_FILE_EXISTS 7XAloraJ ANAfterGuildSucessALORA2
END

IF ~~ THEN BEGIN ANAfterGuildSucessALORA3
  SAY @301
IF ~~ THEN REPLY @302 GOTO ANAfterGuildSucess4
IF ~~ THEN REPLY @303 EXIT
END

IF ~~ THEN BEGIN ANAfterGuildSucess4
  SAY @304
IF ~~ THEN REPLY @305 EXIT
END

IF ~~ THEN BEGIN ANAfterGuildSucessNoALORA
  SAY @301
IF ~~ THEN REPLY @302 GOTO ANAfterGuildSucess4
IF ~~ THEN REPLY @303 EXIT
END

END

APPEND IF_FILE_EXISTS 7XAloraJ
IF ~~ THEN BEGIN ANAfterGuildSucessALORA2
  SAY @300
IF ~~ THEN DO ~ActionOverride("ANbugb01",EscapeArea())~ EXTERN ANbugb01 ANAfterGuildSucessALORA3
END
END

BEGIN ANsovet1
IF ~True()~ THEN BEGIN ANsovet1Talk1
  SAY @319
IF ~~ THEN REPLY @320 GOTO ANsovet1Talk2
IF ~~ THEN REPLY @321 GOTO ANsovet1Talk2
IF ~~ THEN REPLY @322 GOTO ANsovet1Talk2
IF ~~ THEN REPLY @323 GOTO ANsovet1Talk2
END

IF ~~ THEN BEGIN ANsovet1Talk2
  SAY @325
IF ~~ THEN DO ~SetGlobal("ANKnowAboutNuma","AR1000",1)~ EXIT
END

BEGIN ANsovet2
IF ~True()~ THEN BEGIN ANsovet2Talk1
  SAY @327
=@328  
IF ~~ THEN REPLY @320 GOTO ANsovet2Talk2
IF ~~ THEN REPLY @321 GOTO ANsovet2Talk2
IF ~~ THEN REPLY @322 GOTO ANsovet2Talk2
IF ~~ THEN REPLY @323 GOTO ANsovet2Talk2
END

IF ~~ THEN BEGIN ANsovet2Talk2
  SAY @326
IF ~~ THEN DO ~SetGlobal("ANKnowAboutNuma","AR1000",1)~ EXIT
END


BEGIN ANnuma1

IF ~NumTimesTalkedTo(0) Global("ANSearchGuild","GLOBAL",13)~ THEN BEGIN ANnumaTalk1
  SAY @332
IF ~Global("ANKnowAboutNuma","AR1000",1)~ THEN REPLY @329 GOTO ANnumaTalk2
IF ~Global("ANKnowAboutNuma","AR1000",1)~ THEN REPLY @330 GOTO ANnumaTalk2
IF ~~ THEN REPLY @331 GOTO ANnumaTalk2
IF ~~ THEN REPLY @342 GOTO ANnumaTalk2
IF ~~ THEN REPLY @339 GOTO ANnumaTalk3-End
END

IF ~~ THEN BEGIN ANnumaTalk2
  SAY @333
=@334
IF ~~ THEN REPLY @335 GOTO ANnumaTalk3
IF ~~ THEN REPLY @336 GOTO ANnumaTalk3
IF ~~ THEN REPLY @337 GOTO ANnumaTalk3
IF ~~ THEN REPLY @338 GOTO ANnumaTalk3
IF ~~ THEN REPLY @339 GOTO ANnumaTalk3-End
END

IF ~~ THEN BEGIN ANnumaTalk3-End
  SAY @340
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0) Global("ANSearchGuild","GLOBAL",13) Global("ANNumaDocuments","AR1000",0)~ THEN BEGIN ANnumaTalk2Repeat
  SAY @341
IF ~~ THEN REPLY @343 GOTO ANnumaTalk3
IF ~~ THEN REPLY @344 GOTO ANnumaTalk3
IF ~~ THEN REPLY @337 GOTO ANnumaTalk3
IF ~~ THEN REPLY @339 GOTO ANnumaTalk3-End
END

IF ~~ THEN BEGIN ANnumaTalk3
  SAY @345
IF ~~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",1)~ REPLY @346 GOTO ANnumaTalk4
IF ~~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",1)~ REPLY @347 GOTO ANnumaTalk4
IF ~~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",1)~ REPLY @348 GOTO ANnumaTalk4
IF ~~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",1)~ REPLY @349 GOTO ANnumaTalk4
END

IF ~~ THEN BEGIN ANnumaTalk4
  SAY @350
=@351
IF ~PartyHasItem("ANscrll0") PartyHasItem("ANscrll1")~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",2) TakePartyItem("ANscrll0") TakePartyItem("ANscrll1")~ REPLY @352 GOTO ANnumaTalk5
IF ~PartyHasItem("ANscrll0") PartyHasItem("ANscrll1")~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",2) TakePartyItem("ANscrll0") TakePartyItem("ANscrll1")~ REPLY @353 GOTO ANnumaTalk5
IF ~PartyHasItem("ANscrll0") PartyHasItem("ANscrll1")~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",2) TakePartyItem("ANscrll0") TakePartyItem("ANscrll1")~ REPLY @354 GOTO ANnumaTalk5
IF ~~ THEN REPLY @355 GOTO ANnumaTalk5-Later
END

IF ~~ THEN BEGIN ANnumaTalk5-Later
  SAY @379
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0) Global("ANSearchGuild","GLOBAL",13) Global("ANNumaDocuments","AR1000",1)~ THEN BEGIN ANnumaTalk5-Repeat
  SAY @380
IF ~PartyHasItem("ANscrll0") PartyHasItem("ANscrll1")~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",2) TakePartyItem("ANscrll0") TakePartyItem("ANscrll1")~ REPLY @352 GOTO ANnumaTalk5
IF ~PartyHasItem("ANscrll0") PartyHasItem("ANscrll1")~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",2) TakePartyItem("ANscrll0") TakePartyItem("ANscrll1")~ REPLY @353 GOTO ANnumaTalk5
IF ~PartyHasItem("ANscrll0") PartyHasItem("ANscrll1")~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",2) TakePartyItem("ANscrll0") TakePartyItem("ANscrll1")~ REPLY @354 GOTO ANnumaTalk5
IF ~~ THEN REPLY @355 GOTO ANnumaTalk5-Later
END

IF ~~ THEN BEGIN ANnumaTalk5
  SAY @357
IF ~~ THEN REPLY @358 GOTO ANnumaTalk6
IF ~~ THEN REPLY @359 GOTO ANnumaTalk6
IF ~~ THEN REPLY @360 GOTO ANnumaTalk6
IF ~~ THEN REPLY @361 GOTO ANnumaTalk6
END

IF ~~ THEN BEGIN ANnumaTalk6
  SAY @362
IF ~~ THEN REPLY @363 GOTO ANnumaTalk7
IF ~~ THEN REPLY @364 GOTO ANnumaTalk7
END

IF ~~ THEN BEGIN ANnumaTalk7
  SAY @365
=@366  
IF ~PartyGoldGT(2699)~ THEN DO ~TakePartyGold(2700)~ REPLY @367 GOTO ANnumaTalk8
IF ~PartyGoldGT(2699)~ THEN DO ~TakePartyGold(2700)~ REPLY @368 GOTO ANnumaTalk8
IF ~~ THEN REPLY @369 GOTO ANnumaTalk8-Later
IF ~~ THEN REPLY @370 GOTO ANnumaTalk8-Price
IF ~~ THEN REPLY @371 GOTO ANnumaTalk8-Price
IF ~~ THEN REPLY @356 GOTO ANnumaTalk8-Price
IF ~InParty("Korgan")!StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("7Xkaga") StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ ANnumaTalk8-PriceKorgan
IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN EXTERN IF_FILE_EXISTS 7XkagaJ ANnumaTalk8-PriceKagain
END

IF ~~ THEN BEGIN ANnumaTalk8-Later
  SAY @373
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnumaTalk8-Price
  SAY @381
IF ~PartyGoldGT(2699)~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",3) TakePartyGold(2700)~ REPLY @382 GOTO ANnumaTalk8
IF ~PartyGoldGT(2699)~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",3) TakePartyGold(2700)~ REPLY @383 GOTO ANnumaTalk8
IF ~~ THEN REPLY @369 GOTO ANnumaTalk8-Later
IF ~~ THEN REPLY @384 GOTO ANnumaTalk8-Dorogo
IF ~~ THEN REPLY @385 GOTO ANnumaTalk8-Dorogo
IF ~~ THEN REPLY @386 GOTO ANnumaTalk8-Dorogo
END

IF ~NumTimesTalkedToGT(0) Global("ANSearchGuild","GLOBAL",13) Global("ANNumaDocuments","AR1000",2)~ THEN BEGIN ANnumaTalk8-Repeat
  SAY @374
IF ~PartyGoldGT(2699)~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",3) TakePartyGold(2700)~ REPLY @375 GOTO ANnumaTalk8
IF ~PartyGoldGT(2699)~ THEN DO ~SetGlobal("ANNumaDocuments","AR1000",3) TakePartyGold(2700)~ REPLY @376 GOTO ANnumaTalk8
IF ~~ THEN REPLY @378 GOTO ANnumaTalk8-Later
IF ~~ THEN REPLY @384 GOTO ANnumaTalk8-Dorogo
IF ~~ THEN REPLY @385 GOTO ANnumaTalk8-Dorogo
IF ~~ THEN REPLY @386 GOTO ANnumaTalk8-Dorogo
END

IF ~~ THEN BEGIN ANnumaTalk8-Dorogo
  SAY @387
IF ~~ THEN EXTERN ANbugb01 ANnumaTalk8-Dorogo1
END

IF ~~ THEN BEGIN ANnumaTalk8-Dorogo3
  SAY @396
IF ~~ THEN EXIT
END

APPEND ANbugb01
IF ~~ THEN BEGIN ANnumaTalk8-Dorogo1
  SAY @388
IF ~~ THEN REPLY @389 GOTO ANnumaTalk8-Dorogo2
IF ~~ THEN REPLY @390 GOTO ANnumaTalk8-Dorogo2
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",996)~ REPLY @391 GOTO ANnumaTalk8-DorogoEnd
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",996)~ REPLY @392 GOTO ANnumaTalk8-DorogoEnd
END

IF ~~ THEN BEGIN ANnumaTalk8-Dorogo2
  SAY @393
IF ~~ THEN REPLY @394 EXTERN ANnuma1 ANnumaTalk8-Dorogo3
IF ~~ THEN REPLY @395 EXTERN ANnuma1 ANnumaTalk8-Dorogo3
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",996)~ REPLY @391 GOTO ANnumaTalk8-DorogoEnd
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",996)~ REPLY @392 GOTO ANnumaTalk8-DorogoEnd
END

IF ~~ THEN BEGIN ANnumaTalk8-DorogoEnd
  SAY @397
IF ~~ THEN EXIT
END
END

APPEND IF_FILE_EXISTS 7XkagaJ
IF ~~ THEN BEGIN ANnumaTalk8-PriceKagain
  SAY @372
IF ~PartyGoldGT(2699)~ THEN DO ~TakePartyGold(2700)~ REPLY @367 EXTERN ANnuma1 ANnumaTalk8
IF ~PartyGoldGT(2699)~ THEN DO ~TakePartyGold(2700)~ REPLY @368 EXTERN ANnuma1 ANnumaTalk8
IF ~~ THEN REPLY @369 EXTERN ANnuma1 ANnumaTalk8-Later
IF ~~ THEN REPLY @370 EXTERN ANnuma1 ANnumaTalk8-Price
IF ~~ THEN REPLY @371 EXTERN ANnuma1 ANnumaTalk8-Price
IF ~~ THEN REPLY @356 EXTERN ANnuma1 ANnumaTalk8-Price
END
END

APPEND KORGANJ
IF ~~ THEN BEGIN ANnumaTalk8-PriceKorgan
  SAY @372
IF ~PartyGoldGT(2699)~ THEN DO ~TakePartyGold(2700)~ REPLY @367 EXTERN ANnuma1 ANnumaTalk8
IF ~PartyGoldGT(2699)~ THEN DO ~TakePartyGold(2700)~ REPLY @368 EXTERN ANnuma1 ANnumaTalk8
IF ~~ THEN REPLY @369 EXTERN ANnuma1 ANnumaTalk8-Later
IF ~~ THEN REPLY @370 EXTERN ANnuma1 ANnumaTalk8-Price
IF ~~ THEN REPLY @371 EXTERN ANnuma1 ANnumaTalk8-Price
IF ~~ THEN REPLY @356 EXTERN ANnuma1 ANnumaTalk8-Price
END
END

APPEND ANnuma1

IF ~~ THEN BEGIN ANnumaTalk8
  SAY @398
IF ~~ THEN REPLY @399 GOTO ANnumaTalk9
IF ~~ THEN REPLY @400 GOTO ANnumaTalk9
IF ~~ THEN REPLY @401 GOTO ANnumaTalk9
IF ~~ THEN REPLY @402 GOTO ANnumaTalk9
END

IF ~~ THEN BEGIN ANnumaTalk9
  SAY @403
IF ~~ THEN REPLY @404 GOTO ANnumaTalk10-1
IF ~~ THEN REPLY @405 GOTO ANnumaTalk10-2
IF ~~ THEN REPLY @406 GOTO ANnumaTalk10-2
IF ~~ THEN REPLY @407 GOTO ANnumaTalk10-3
END

IF ~~ THEN BEGIN ANnumaTalk10-1
  SAY @410
IF ~~ THEN GOTO ANnumaTalk11
END

IF ~~ THEN BEGIN ANnumaTalk10-2
  SAY @408
IF ~~ THEN GOTO ANnumaTalk11
END

IF ~~ THEN BEGIN ANnumaTalk10-3
  SAY @409
IF ~~ THEN GOTO ANnumaTalk11
END

IF ~~ THEN BEGIN ANnumaTalk11
  SAY @411
IF ~~ THEN EXTERN ANbugb01 ANnumaTalk11-1
END

IF ~~ THEN BEGIN ANnumaTalk11-2
  SAY @413
IF ~~ THEN EXTERN ANbugb01 ANnumaTalk11-3
END

IF ~~ THEN BEGIN ANnumaTalk11-4
  SAY @415
IF ~~ THEN EXTERN ANbugb01 ANnumaTalk11-5
END

IF ~~ THEN BEGIN ANnumaTalk11-6
  SAY @417
IF ~~ THEN REPLY @418 GOTO ANnumaTalk12
IF ~~ THEN REPLY @419 GOTO ANnumaTalk12
IF ~~ THEN REPLY @420 GOTO ANnumaTalk12
END

END

APPEND ANbugb01
IF ~~ THEN BEGIN ANnumaTalk11-1
  SAY @412
IF ~~ THEN EXTERN ANnuma1 ANnumaTalk11-2
END

IF ~~ THEN BEGIN ANnumaTalk11-3
  SAY @414
IF ~~ THEN EXTERN ANnuma1 ANnumaTalk11-4
END

IF ~~ THEN BEGIN ANnumaTalk11-5
  SAY @416
IF ~~ THEN EXTERN ANnuma1 ANnumaTalk11-6
END

IF ~Global("ANSearchGuild","GLOBAL",13)~ THEN BEGIN ANNordikTalkGovernDistr
  SAY @430
IF ~~ THEN EXIT
END
END

APPEND ANnuma1
IF ~~ THEN BEGIN ANnumaTalk12
  SAY @421
IF ~~ THEN REPLY @422 GOTO ANnumaTalk13
IF ~~ THEN REPLY @423 GOTO ANnumaTalk13
END

IF ~~ THEN BEGIN ANnumaTalk13
  SAY @424
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",14) ActionOverride("ANsovet1",DestroySelf()) ActionOverride("ANsovet2",DestroySelf())~ REPLY @425 GOTO ANnumaTalk14-1
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",14) ActionOverride("ANsovet1",DestroySelf()) ActionOverride("ANsovet2",DestroySelf())~ REPLY @426 GOTO ANnumaTalk14-2
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",14) ActionOverride("ANsovet1",DestroySelf()) ActionOverride("ANsovet2",DestroySelf())~ REPLY @427 GOTO ANnumaTalk14-2
END

IF ~~ THEN BEGIN ANnumaTalk14-1
  SAY @428
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnumaTalk14-2
  SAY @429
IF ~~ THEN EXIT
END

END

CHAIN IF ~Global("ANSearchGuild","GLOBAL",14) AreaCheck("AR1000")~ THEN ANnuma1 ANnumaHemedTalk
@431 DO ~SetGlobal("ANSearchGuild","GLOBAL",15)~
== ANhemed1 @432
== ANnuma1 @433
== ANhemed1 @434
=@435
=@436
== ANbugb01 @437
== ANhemed1 @438
== ANbugb01 @439
== ANhemed1 @440
== ANnuma1 @441
== ANhemed1 @442
== ANnuma1 @443
EXIT

APPEND ANnuma1
IF ~Global("ANSearchGuild","GLOBAL",16) AreaCheck("AR1000")~ THEN BEGIN ANnumaTalk15
  SAY @444
=@445  
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",17)~ REPLY @446 GOTO ANnumaTalk16
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",17)~ REPLY @447 GOTO ANnumaTalk16
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",17)~ REPLY @448 GOTO ANnumaTalk16
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",17)~ REPLY @449 GOTO ANnumaTalk16
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",17)~ REPLY @450 GOTO ANnumaTalk16-1
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",17)~ REPLY @451 GOTO ANnumaTalk16
END

IF ~~ THEN BEGIN ANnumaTalk16-1
  SAY @452
IF ~~ THEN REPLY @446 GOTO ANnumaTalk16
IF ~~ THEN REPLY @447 GOTO ANnumaTalk16
IF ~~ THEN REPLY @448 GOTO ANnumaTalk16
IF ~~ THEN REPLY @449 GOTO ANnumaTalk16
IF ~~ THEN REPLY @451 GOTO ANnumaTalk16
END

IF ~~ THEN BEGIN ANnumaTalk16
  SAY @453
IF ~~ THEN REPLY @454 GOTO ANnumaTalk17
IF ~~ THEN REPLY @455 GOTO ANnumaTalk17
IF ~~ THEN REPLY @456 GOTO ANnumaTalk17
IF ~~ THEN REPLY @457 GOTO ANnumaTalk17
IF ~~ THEN REPLY @458 GOTO ANnumaTalk17
END

IF ~~ THEN BEGIN ANnumaTalk17
  SAY @459
IF ~~ THEN REPLY @460 GOTO ANnumaTalk18
IF ~~ THEN REPLY @461 GOTO ANnumaTalk18
END

IF ~~ THEN BEGIN ANnumaTalk18
  SAY @462
IF ~~ THEN REPLY @463 GOTO ANnumaTalk19
IF ~~ THEN REPLY @464 GOTO ANnumaTalk19
IF ~~ THEN REPLY @465 GOTO ANnumaTalk19
END

IF ~~ THEN BEGIN ANnumaTalk19
  SAY @466
IF ~~ THEN REPLY @467 GOTO ANnumaTalk20
IF ~~ THEN REPLY @468 GOTO ANnumaTalk20
END

IF ~~ THEN BEGIN ANnumaTalk20
  SAY @469
IF ~~ THEN REPLY @470 GOTO ANnumaTalk21
IF ~~ THEN REPLY @471 GOTO ANnumaTalk21
IF ~~ THEN REPLY @472 GOTO ANnumaTalk21
END

IF ~~ THEN BEGIN ANnumaTalk21
  SAY @473
IF ~~ THEN REPLY @474 GOTO ANnumaTalk22
IF ~~ THEN REPLY @475 GOTO ANnumaTalk22
IF ~~ THEN REPLY @476 GOTO ANnumaTalk22
END

IF ~~ THEN BEGIN ANnumaTalk22
  SAY @477
=@478
=@479
IF ~~ THEN REPLY @480 GOTO ANnumaTalk22-0
IF ~~ THEN REPLY @481 GOTO ANnumaTalk22-0
IF ~~ THEN REPLY @482 GOTO ANnumaTalk22-0
END

IF ~~ THEN BEGIN ANnumaTalk22-0
  SAY @483
=@484
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN ANbugb01 ANnumaTalk22-1
END

END

APPEND ANbugb01
IF ~~ THEN BEGIN ANnumaTalk22-1
  SAY @485
IF ~~ THEN EXTERN ANnuma1 ANnumaTalk23
END
END

CHAIN ANnuma1 ANnumaTalk23
@521
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @487
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @489
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @491
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @493
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @495
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @525
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @523
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @527
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @529
== IF_FILE_EXISTS RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @531
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @533
== ANnuma1 IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @534
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @536
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @538
== IF_FILE_EXISTS 7XkagaJ IF ~InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @540
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @542
== IF_FILE_EXISTS 7XCoranJ IF ~InParty("7XCORAN") InMyArea("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @544
== IF_FILE_EXISTS O#CORANJ IF ~InParty("O#Coran") InMyArea("O#Coran") !StateCheck("O#Coran",CD_STATE_NOTVALID)~ THEN @544
== IF_FILE_EXISTS 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @546
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @548
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @553
== IF_FILE_EXISTS 1xQUAYJ IF ~InParty("QUAYLE") InMyArea("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID)~ THEN @553
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @551
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @551
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID) InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @550
== IF_FILE_EXISTS 1xQUAYJ IF ~InParty("QUAYLE") InMyArea("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID) InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @550
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID) InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @550
== IF_FILE_EXISTS 1xQUAYJ IF ~InParty("QUAYLE") InMyArea("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID) InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @550
== IF_FILE_EXISTS 7XFALDJ IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @555
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @557
== IF_FILE_EXISTS O#BranJ IF ~InParty("O#Bran") InMyArea("O#Bran") !StateCheck("O#Bran",CD_STATE_NOTVALID)~ THEN @559
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @559
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @561
== IF_FILE_EXISTS 7XSkiJ IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @563
== IF_FILE_EXISTS L#2SDSKJ IF ~InParty("L#2SDSkie") InMyArea("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @563
== IF_FILE_EXISTS 7XYESJ IF ~InParty("7XYES") InMyArea("7XYES") !StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @565
== IF_FILE_EXISTS LK#YESJ IF ~InParty("lk#yeslk") InMyArea("lk#yeslk") !StateCheck("lk#yeslk",CD_STATE_NOTVALID)~ THEN @565
== IF_FILE_EXISTS DEEKINJ IF ~InParty("DEEKIN") InMyArea("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @567
== IF_FILE_EXISTS O#XANJ IF ~InParty("O#Xan") InMyArea("O#Xan") !StateCheck("O#Xan",CD_STATE_NOTVALID)~ THEN @569
== IF_FILE_EXISTS 7XXANJ IF ~InParty("7XXAN") InMyArea("7XXAN") !StateCheck("7XXAN",CD_STATE_NOTVALID)~ THEN @569
== IF_FILE_EXISTS L#KHAJ IF ~InParty("L#KHALID") InMyArea("L#KHALID") !StateCheck("L#KHALID",CD_STATE_NOTVALID)~ THEN @571
== IF_FILE_EXISTS ZIKHALJ IF ~InParty("ZIKhalid") InMyArea("ZIKhalid") !StateCheck("ZIKhalid",CD_STATE_NOTVALID)~ THEN @571
== IF_FILE_EXISTS QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @681
== IF_FILE_EXISTS D#Silve1 IF ~InParty("D#Silver") InMyArea("D#Silver") !StateCheck("D#Silver",CD_STATE_NOTVALID)~ THEN @683
=@684
== IF_FILE_EXISTS RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @686
== IF_FILE_EXISTS VxVarJ IF ~InParty("Varshoon") InMyArea("Varshoon") !StateCheck("Varshoon",CD_STATE_NOTVALID)~ THEN @688
== IF_FILE_EXISTS YxYveJ IF ~InParty("YxYve") InMyArea("YxYve") !StateCheck("YxYve",CD_STATE_NOTVALID)~ THEN @690
== IF_FILE_EXISTS ~B!GavJ~ IF ~InParty("B!Gavin2") InMyArea("B!Gavin2") !StateCheck("B!Gavin2",CD_STATE_NOTVALID)~ THEN @692
END
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",18)~ REPLY @496 EXTERN ANbugb01 ANnumaTalk24YES
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",18)~ REPLY @497 EXTERN ANbugb01 ANnumaTalk24YES
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",18)~ REPLY @498 EXTERN ANbugb01 ANnumaTalk24YES
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",18)~ REPLY @499 EXTERN ANbugb01 ANnumaTalk24YES
IF ~~ THEN REPLY @506 GOTO ANnumaTalk24NO
IF ~~ THEN REPLY @507 GOTO ANnumaTalk24NO
IF ~~ THEN REPLY @508 GOTO ANnumaTalk24NO

APPEND ANbugb01
IF ~~ THEN BEGIN ANnumaTalk24YES
  SAY @500
IF ~~ THEN EXTERN ANnuma1 ANnumaTalk24YES1
END
END

APPEND ANnuma1
IF ~~ THEN BEGIN ANnumaTalk24YES1
  SAY @501
IF ~~ THEN REPLY @502 GOTO ANnumaTalk25
IF ~~ THEN REPLY @503 GOTO ANnumaTalk25
IF ~~ THEN REPLY @504 GOTO ANnumaTalk25
END

IF ~~ THEN BEGIN ANnumaTalk25
  SAY @505
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnumaTalk24NO
  SAY @509
IF ~~ THEN REPLY @510 GOTO ANnumaTalk24NO1
IF ~~ THEN REPLY @511 GOTO ANnumaTalk24NO1
IF ~~ THEN REPLY @512 GOTO ANnumaTalk24NO1
IF ~~ THEN REPLY @513 GOTO ANnumaTalk24NO1
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",18)~ REPLY @496 EXTERN ANbugb01 ANnumaTalk24YES
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",18)~ REPLY @497 EXTERN ANbugb01 ANnumaTalk24YES
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",18)~ REPLY @498 EXTERN ANbugb01 ANnumaTalk24YES
END

IF ~~ THEN BEGIN ANnumaTalk24NO1
  SAY @514
IF ~~ THEN DO ~EscapeArea() ActionOverride("ANhemed1",EscapeArea())~ EXTERN ANbugb01 ANnumaTalk24NO2
END
END

APPEND ANbugb01
IF ~~ THEN BEGIN ANnumaTalk24NO2
  SAY @515
IF ~~ THEN REPLY @516 GOTO ANnumaTalk24NO3
IF ~~ THEN REPLY @517 GOTO ANnumaTalk24NO3
IF ~~ THEN REPLY @518 GOTO ANnumaTalk24NO3
END
END

CHAIN IF ~Global("ANSearchGuild","GLOBAL",19)~ THEN ANnuma1 ANnumaTalk26
@572 DO ~SetGlobal("ANSearchGuild","GLOBAL",20) ActionOverride("ANhemed1",DestroySelf())~ 
=@573  
== ANbugb01 @574
== ANnuma1 @575
=@576
== ANnuma1 IF ~NumInPartyGT(2)~ THEN @577 DO ~GiveItemCreate("ANscrGD2",Player1,1,0,0)~
== ANnuma1 IF ~!NumInPartyGT(2)~ THEN @578 DO ~GiveItemCreate("ANscrGD1",Player1,1,0,0)~
== ANnuma1 @579
== ANbugb01 @580
== ANnuma1 @581
EXIT

APPEND ANnuma1
IF ~Global("ANSearchGuild","GLOBAL",21)~ THEN BEGIN ANnumaTalk27
  SAY @582
IF ~~ THEN REPLY @583 GOTO ANnumaTalk28
IF ~~ THEN REPLY @584 GOTO ANnumaTalk28
IF ~~ THEN REPLY @585 GOTO ANnumaTalk28
IF ~~ THEN REPLY @586 GOTO ANnumaTalk28
END

IF ~~ THEN BEGIN ANnumaTalk28
  SAY @587
IF ~~ THEN REPLY @588 GOTO ANnumaTalk29
IF ~~ THEN REPLY @589 GOTO ANnumaTalk29
IF ~~ THEN REPLY @590 GOTO ANnumaTalk29
IF ~~ THEN REPLY @591 GOTO ANnumaTalk29
END

IF ~~ THEN BEGIN ANnumaTalk29
  SAY @669
IF ~~ THEN DO ~ActionOverride("ANbugb01",EscapeArea()) SetGlobal("ANSearchGuild","GLOBAL",22) EscapeArea()~ EXIT
END

END

APPEND ANcivil1
IF ~Global("ANSearchGuild","GLOBAL",22) Global("ANcivil2Exists","AR1002",1)~ THEN BEGIN ANCivilTalkFinal
  SAY @592
IF ~~ THEN DO ~SetGlobal("ANcivil2Exists","AR1002",2)~ EXTERN ANnuma1 ANCivilTalkFinal1
END

IF ~~ THEN BEGIN ANCivilTalkFinal2
  SAY @594
IF ~~ THEN EXTERN ANnuma1 ANCivilTalkFinal3
END

IF ~~ THEN BEGIN ANCivilTalkFinal4
  SAY @596
IF ~~ THEN REPLY @597 EXTERN ANnuma1 ANCivilTalkFinal5
IF ~~ THEN REPLY @598 EXTERN ANnuma1 ANCivilTalkFinal6
END

IF ~~ THEN BEGIN ANCivilTalkFinal7
  SAY @601
IF ~~ THEN REPLY @602 EXTERN ANnuma1 ANCivilTalkFinal8
IF ~~ THEN REPLY @603 EXTERN ANnuma1 ANCivilTalkFinal8
END
END

APPEND ANnuma1
IF ~~ THEN BEGIN ANCivilTalkFinal1
  SAY @593
IF ~~ THEN EXTERN ANcivil1 ANCivilTalkFinal2
END

IF ~~ THEN BEGIN ANCivilTalkFinal3
  SAY @595
IF ~~ THEN EXTERN ANcivil1 ANCivilTalkFinal4
END

IF ~~ THEN BEGIN ANCivilTalkFinal5
  SAY @599
IF ~~ THEN EXTERN ANcivil1 ANCivilTalkFinal7
END

IF ~~ THEN BEGIN ANCivilTalkFinal6
  SAY @600
IF ~~ THEN EXTERN ANcivil1 ANCivilTalkFinal7
END

IF ~~ THEN BEGIN ANCivilTalkFinal8
  SAY @604
IF ~~ THEN EXTERN ANcivil1 ANCivilTalkFinal9
END
END

CHAIN ANcivil1 ANCivilTalkFinal9
@605 
== ANnuma1 @606
== ANcivil1 @607
=@608
=@609
END
IF ~~ THEN DO ~ActionOverride("ANnuma1",DestroySelf()) ActionOverride("ANbugb01",DestroySelf())~ REPLY @610 EXTERN ANcivil1 ANCivilTalkFinal9-1

CHAIN ANcivil1 ANCivilTalkFinal9-1
@611
END
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",23)~ REPLY @610 EXTERN ANcivil1 ANCivilTalkFinal9-2

CHAIN ANcivil1 ANCivilTalkFinal9-2
@612
=@613 DO ~AddexperienceParty(3000) GiveItemCreate("ANringGD",Player1,1,0,0) AddJournalEntry(@1006,QUEST_DONE) DestroySelf()~
EXIT

APPEND ANnuma1

// Нума нанят
IF ~Global("ANSearchGuild","GLOBAL",25)~ THEN BEGIN ANNumaTalkFinalOK
  SAY @614
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",26)~ REPLY @615 GOTO ANNumaTalkFinalOK1
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",26)~ REPLY @616 GOTO ANNumaTalkFinalOK1
IF ~~ THEN DO ~SetGlobal("ANSearchGuild","GLOBAL",26)~ REPLY @617 GOTO ANNumaTalkFinalOK1
END

IF ~~ THEN BEGIN ANNumaTalkFinalOK1
  SAY @618
IF ~~ THEN DO ~EscapeArea()~ EXTERN ANbugb01 ANbugbFinalTalk
END

END

APPEND ANbugb01
IF ~~ THEN BEGIN ANbugbFinalTalk
  SAY @622
IF ~~ THEN REPLY @623 GOTO ANbugbFinalTalk1
IF ~~ THEN REPLY @624 GOTO ANbugbFinalTalk1
IF ~~ THEN REPLY @625 GOTO ANbugbFinalTalk1
IF ~~ THEN REPLY @626 GOTO ANbugbFinalTalk1
END

IF ~~ THEN BEGIN ANbugbFinalTalk1
  SAY @627
IF ~~ THEN REPLY @628 GOTO ANbugbFinalTalk2
IF ~~ THEN REPLY @629 GOTO ANbugbFinalTalk2
IF ~~ THEN REPLY @630 GOTO ANbugbFinalTalk2
IF ~~ THEN REPLY @631 GOTO ANbugbFinalTalk2
IF ~~ THEN REPLY @632 GOTO ANbugbFinalTalk2
END

IF ~~ THEN BEGIN ANbugbFinalTalk2
  SAY @633
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

END

// Провал
CHAIN IF ~Global("ANSearchGuild","GLOBAL",999) Global("ANSearchGuildLOSTNordik","LOCALS",1)~ THEN ANbugb01 ANSearchGuildLOSTNordik1
@306 DO ~EscapeArea() SetGlobal("ANSearchGuildLOSTNordik","LOCALS",2)~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @634
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @634
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @635
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @636
== IF_FILE_EXISTS O#XANJ IF ~InParty("O#Xan") InMyArea("O#Xan") !StateCheck("O#Xan",CD_STATE_NOTVALID)~ THEN @637
== IF_FILE_EXISTS 7XXANJ IF ~InParty("7XXAN") InMyArea("7XXAN") !StateCheck("7XXAN",CD_STATE_NOTVALID)~ THEN @637
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @638
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @639
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @640
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @641
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @642
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @642
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @644
== IF_FILE_EXISTS 1xQUAYJ IF ~InParty("QUAYLE") InMyArea("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID)~ THEN @644
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @643
EXIT

CHAIN ANbugb01 ANnumaTalk24NO3
@519
=@520 DO ~EscapeArea() SetGlobal("ANSearchGuildLOSTNordik","LOCALS",2)~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @634
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @634
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @635
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @636
== IF_FILE_EXISTS O#XANJ IF ~InParty("O#Xan") InMyArea("O#Xan") !StateCheck("O#Xan",CD_STATE_NOTVALID)~ THEN @637
== IF_FILE_EXISTS 7XXANJ IF ~InParty("7XXAN") InMyArea("7XXAN") !StateCheck("7XXAN",CD_STATE_NOTVALID)~ THEN @637
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @638
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @639
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @640
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @641
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @642
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @642
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @644
== IF_FILE_EXISTS 1xQUAYJ IF ~InParty("QUAYLE") InMyArea("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID)~ THEN @644
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @643
EXIT

// Полурослик в Трущобах
CHAIN IF WEIGHT #-2 ~Global("ANSearchGuildTalk","LOCALS",0)~ THEN SLHALF02 ANsearchGuildSLHALF02
@670 DO ~SetGlobal("ANSearchGuildTalk","LOCALS",1)~ 
EXIT

EXTEND_BOTTOM EDWINP 4
IF ~Global("ANSearchGuildEdwin","GLOBAL",2) !Global("Chapter","GLOBAL",%bg2_chapter_4%) !Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @700 GOTO ANguildEdwinOtpusk
END

EXTEND_BOTTOM EDWINP 8
IF ~Global("ANSearchGuildEdwin","GLOBAL",2) !Global("Chapter","GLOBAL",%bg2_chapter_4%) !Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @700 GOTO ANguildEdwinOtpusk
END

APPEND EDWINP
IF ~~ THEN BEGIN ANguildEdwinOtpusk
  SAY @701
IF ~~ THEN DO ~SetGlobalTimer("EdwinLaboratoryTimer","GLOBAL",ONE_DAY) SetGlobal("ANSearchGuildEdwin","GLOBAL",3) SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AN0450",364,840,0)~ EXIT
END

IF ~~ THEN BEGIN ANguildEdwinOtpusk2
  SAY @704
IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN ANguildEdwinOtpusk3
  SAY @706
IF ~~ THEN EXIT
END

IF WEIGHT #-10 ~Global("KickedOut","LOCALS",1) OR(2)Global("ANSearchGuildEdwin","GLOBAL",3)Global("ANSearchGuildEdwin","GLOBAL",4) AreaCheck("AN0450") !GlobalTimerExpired("EdwinLaboratoryTimer","GLOBAL")~ THEN BEGIN ANguildEdwinOtpuskWait
  SAY @318
IF ~~ THEN EXIT
END
END

CHAIN IF WEIGHT #-11 ~Global("KickedOut","LOCALS",1) Global("ANSearchGuildEdwin","GLOBAL",4) AreaCheck("AN0450") GlobalTimerExpired("EdwinLaboratoryTimer","GLOBAL")~ THEN EDWINP ANguildEdwinOtpusk1
@702 
END
IF ~Global("ANEdwinSCRL5J","AN0450",1)~ THEN DO ~GiveItem("SCRL5J",Player1) SetGlobal("ANEdwinSCRL5J","AN0450",0) SetGlobal("ANSearchGuildEdwin","GLOBAL",2)~ REPLY @703 GOTO ANguildEdwinOtpusk2
IF ~Global("ANEdwinSCRL5J","AN0450",1)~ THEN DO ~GiveItem("SCRL5J",Player1) SetGlobal("ANEdwinSCRL5J","AN0450",0) SetGlobal("ANSearchGuildEdwin","GLOBAL",3) SetGlobalTimer("EdwinLaboratoryTimer","GLOBAL",ONE_DAY)~ REPLY @705 GOTO ANguildEdwinOtpusk3
IF ~Global("ANEdwinSCRL8B","AN0450",1)~ THEN DO ~GiveItem("SCRL8B",Player1) SetGlobal("ANEdwinSCRL8B","AN0450",0) SetGlobal("ANSearchGuildEdwin","GLOBAL",2)~ REPLY @703 GOTO ANguildEdwinOtpusk2
IF ~Global("ANEdwinSCRL8B","AN0450",1)~ THEN DO ~GiveItem("SCRL8B",Player1) SetGlobal("ANEdwinSCRL8B","AN0450",0) SetGlobal("ANSearchGuildEdwin","GLOBAL",3) SetGlobalTimer("EdwinLaboratoryTimer","GLOBAL",ONE_DAY)~ REPLY @705 GOTO ANguildEdwinOtpusk3
IF ~Global("ANEdwinSCRL9G","AN0450",1)~ THEN DO ~GiveItem("SCRL9G",Player1) SetGlobal("ANEdwinSCRL9G","AN0450",0) SetGlobal("ANSearchGuildEdwin","GLOBAL",2)~ REPLY @703 GOTO ANguildEdwinOtpusk2
IF ~Global("ANEdwinSCRL9G","AN0450",1)~ THEN DO ~GiveItem("SCRL9G",Player1) SetGlobal("ANEdwinSCRL9G","AN0450",0) SetGlobal("ANSearchGuildEdwin","GLOBAL",3) SetGlobalTimer("EdwinLaboratoryTimer","GLOBAL",ONE_DAY)~ REPLY @705 GOTO ANguildEdwinOtpusk3

APPEND ANbugb01

IF ~GlobalGT("ANSearchGuild","GLOBAL",24) AreaCheck("AN0450")~ THEN BEGIN ANnordikInGuild
  SAY @707
IF ~~ THEN REPLY @708 GOTO ANnordikInGuild1
IF ~~ THEN REPLY @709 GOTO ANnordikInGuild2
IF ~~ THEN REPLY @710 EXIT
END

IF ~~ THEN BEGIN ANnordikInGuild2
  SAY @717
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnordikInGuild1
  SAY @718
IF ~True()~ THEN GOTO ANnordikInGuild1-5
IF ~RandomNum(4,1)~ THEN GOTO ANnordikInGuild1-1
IF ~Global("TannerExposed","GLOBAL",0) Global("TannerMove","GLOBAL",0) RandomNum(4,2)~ THEN GOTO ANnordikInGuild1-2
IF ~OR(2) Global("ANSearchGuildEdwin","GLOBAL",3) Global("ANSearchGuildEdwin","GLOBAL",4) RandomNum(4,3)~ THEN GOTO ANnordikInGuild1-3
IF ~RandomNum(4,4)~ THEN GOTO ANnordikInGuild1-4
END

IF ~~ THEN BEGIN ANnordikInGuild1-1
  SAY @712
IF ~OR(2) !InParty("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXIT
IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN JANJ ANnordikInGuild1-1Jan
END

IF ~~ THEN BEGIN ANnordikInGuild1-2
  SAY @714
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnordikInGuild1-3
  SAY @715
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnordikInGuild1-4
  SAY @716
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANnordikInGuild1-5
  SAY @711
IF ~~ THEN EXIT
END

END

APPEND JANJ
IF ~~ THEN BEGIN ANnordikInGuild1-1Jan
  SAY @713
IF ~~ THEN EXIT
END
END

APPEND ANbugb01
IF ~~ THEN BEGIN ANNumaInGuild1Talk2
  SAY @736
IF ~~ THEN REPLY @737 EXTERN ANnuma1 ANNumaInGuild1Talk3
IF ~~ THEN REPLY @738 EXTERN ANnuma1 ANNumaInGuild1Talk3
END
END

APPEND ANnuma1

// Нума в гильдии
IF WEIGHT #-1 ~AreaCheck("AN0450") Global("ANNumaGuild","AN0450",1)~ THEN BEGIN ANNumaInGuild1Talk
SAY @729
=@730 
IF ~~ THEN DO ~SetGlobal("ANNumaGuild","AN0450",2)~ REPLY @731 GOTO ANNumaInGuild1Talk1
IF ~~ THEN DO ~SetGlobal("ANNumaGuild","AN0450",2)~ REPLY @732 GOTO ANNumaInGuild1Talk1
IF ~~ THEN DO ~SetGlobal("ANNumaGuild","AN0450",2)~ REPLY @733 GOTO ANNumaInGuild1Talk1
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk1
  SAY @734
=@735  
IF ~~ THEN EXTERN ANbugb01 ANNumaInGuild1Talk2
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk3
  SAY @739
IF ~~ THEN REPLY @740 GOTO ANNumaInGuild1Talk4
IF ~~ THEN REPLY @741 GOTO ANNumaInGuild1Talk4
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk4
  SAY @742
=@743  
IF ~~ THEN REPLY @744 GOTO ANNumaInGuild1Talk5
IF ~~ THEN REPLY @745 GOTO ANNumaInGuild1Talk5
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk5
  SAY @746
=@747  
IF ~~ THEN REPLY @748 GOTO ANNumaInGuild1Talk5-1
IF ~~ THEN REPLY @749 GOTO ANNumaInGuild1Talk5-2
IF ~~ THEN REPLY @750 GOTO ANNumaInGuild1Talk5-3
IF ~~ THEN REPLY @751 GOTO ANNumaInGuild1Talk5-4
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk5-1
  SAY @752
IF ~~ THEN REPLY @756 GOTO ANNumaInGuild1Talk6-1
IF ~~ THEN REPLY @757 GOTO ANNumaInGuild1Talk6-2
IF ~~ THEN REPLY @758 GOTO ANNumaInGuild1Talk6-1
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk5-2
  SAY @753
IF ~~ THEN REPLY @756 GOTO ANNumaInGuild1Talk6-1
IF ~~ THEN REPLY @757 GOTO ANNumaInGuild1Talk6-2
IF ~~ THEN REPLY @758 GOTO ANNumaInGuild1Talk6-1
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk5-3
  SAY @754
IF ~~ THEN REPLY @756 GOTO ANNumaInGuild1Talk6-1
IF ~~ THEN REPLY @757 GOTO ANNumaInGuild1Talk6-2
IF ~~ THEN REPLY @758 GOTO ANNumaInGuild1Talk6-1
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk5-4
  SAY @755
IF ~~ THEN REPLY @756 GOTO ANNumaInGuild1Talk6-1
IF ~~ THEN REPLY @757 GOTO ANNumaInGuild1Talk6-2
IF ~~ THEN REPLY @758 GOTO ANNumaInGuild1Talk6-1
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk6-2
  SAY @759
IF ~~ THEN REPLY @756 GOTO ANNumaInGuild1Talk6-3
IF ~~ THEN REPLY @758 GOTO ANNumaInGuild1Talk6-3
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk6-1
  SAY @760
IF ~~ THEN GOTO ANNumaInGuild1Talk6-3
END

IF ~~ THEN BEGIN ANNumaInGuild1Talk6-3
  SAY @761
=@762
=@763
=@764
=@765
IF ~~ THEN REPLY @770 GOTO ANNumaInGuild2Talk1
END



// Основной диалог
IF ~AreaCheck("AN0450") Global("ANNumaGuild","AN0450",2)~ THEN BEGIN ANNumaInGuild2Talk
SAY @766
IF ~~ THEN REPLY @767 GOTO ANNumaInGuildQuests
IF ~Global("ANSearchGuildHH","GLOBAL",1)~ THEN REPLY @769 GOTO ANNumaInGuildHH2Talk
IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN REPLY @812 GOTO ANNumaInGuildImoen
IF ~~ THEN REPLY @818 GOTO ANNumaInGuildIrenicus
IF ~Global("ANSearchGuildHH","GLOBAL",2)~ THEN DO ~TakePartyGold(400) SetGlobal("ANSearchGuildHH","GLOBAL",3) SetGlobal("ANSearchGuildMoney","GLOBAL",3) SetGlobalTimer("GuildHHTimer3","GLOBAL",ONE_DAY)~ REPLY @789 GOTO ANNumaInGuildHH1Talk-Three
IF ~Global("ANSearchGuildMoney","GLOBAL",1) GlobalTimerExpired("GuildMoneyTimer","GLOBAL")~ THEN DO ~SetGlobalTimer("GuildMoneyTimer","GLOBAL",SEVEN_DAYS) GiveGoldForce(500)~ REPLY @768 GOTO ANNumaInGuildGold500 
IF ~Global("ANSearchGuildMoney","GLOBAL",1) !GlobalTimerExpired("GuildMoneyTimer","GLOBAL")~ THEN REPLY @768 GOTO ANNumaInGuildGoldNO
IF ~Global("ANSearchGuildMoney","GLOBAL",2) GlobalTimerExpired("GuildMoneyTimer","GLOBAL")~ THEN DO ~SetGlobalTimer("GuildMoneyTimer","GLOBAL",SEVEN_DAYS) GiveGoldForce(700)~ REPLY @768 GOTO ANNumaInGuildGold500 
IF ~Global("ANSearchGuildMoney","GLOBAL",2) !GlobalTimerExpired("GuildMoneyTimer","GLOBAL")~ THEN REPLY @768 GOTO ANNumaInGuildGoldNO
IF ~Global("ANSearchGuildMoney","GLOBAL",3) GlobalTimerExpired("GuildMoneyTimer","GLOBAL")~ THEN DO ~SetGlobalTimer("GuildMoneyTimer","GLOBAL",SEVEN_DAYS) GiveGoldForce(1000)~ REPLY @768 GOTO ANNumaInGuildGold500 
IF ~Global("ANSearchGuildMoney","GLOBAL",3) !GlobalTimerExpired("GuildMoneyTimer","GLOBAL")~ THEN REPLY @768 GOTO ANNumaInGuildGoldNO
IF ~~ THEN REPLY @790 GOTO ANNumaInGuildBye
END

IF ~~ THEN BEGIN ANNumaInGuildGold500
  SAY @777
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildGoldNO
  SAY @778
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildBye
  SAY @791
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildQuests
  SAY @792
IF ~RandomNum(8,1)~ THEN GOTO ANNumaInGuildQuests-1
IF ~RandomNum(8,2)~ THEN GOTO ANNumaInGuildQuests-2
IF ~RandomNum(8,3)~ THEN GOTO ANNumaInGuildQuests-3
IF ~RandomNum(8,4)~ THEN GOTO ANNumaInGuildQuests-4
IF ~RandomNum(8,5)~ THEN GOTO ANNumaInGuildQuests-5
IF ~RandomNum(8,6)~ THEN GOTO ANNumaInGuildQuests-6
IF ~RandomNum(8,7)~ THEN GOTO ANNumaInGuildQuests-7
IF ~RandomNum(8,8)~ THEN GOTO ANNumaInGuildQuests-8
END

IF ~~ THEN BEGIN ANNumaInGuildQuests-1
  SAY @793
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildQuests-2
  SAY @794
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildQuests-3
  SAY @795
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildQuests-4
  SAY @796
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildQuests-5
  SAY @797
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildQuests-6
  SAY @798
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildQuests-7
  SAY @799
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildQuests-8
  SAY @800
IF ~~ THEN EXIT
END

END

CHAIN ANnuma1 ANNumaInGuild2Talk1
@771 DO ~SetGlobal("ANSearchGuildMoney","GLOBAL",1) SetGlobalTimer("GuildMoneyTimer","GLOBAL",THREE_DAYS)~
=@772
=@773
== ANbugb01 @774
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @775
== ANnuma1 @776
EXIT

CHAIN IF WEIGHT #-10 ~AreaCheck("AN0450") Global("ANNumaGuild","AN0450",2) Global("ANSearchGuildHH","GLOBAL",0) Global("ANSearchGuildMoney","GLOBAL",1)~ THEN ANnuma1 ANNumaInGuildHH1Talk
@780 DO ~SetGlobal("ANSearchGuildHH","GLOBAL",1) SetGlobalTimer("ANNordikKitchenTimer","GLOBAL",SEVEN_DAYS)~
=@781
=@782
END
IF ~~ THEN DO ~TakePartyGold(200) SetGlobal("ANSearchGuildHH","GLOBAL",2) SetGlobal("ANSearchGuildMoney","GLOBAL",2) SetGlobalTimer("GuildHHTimer1","GLOBAL",ONE_DAY)~ REPLY @783 EXTERN ANnuma1 ANNumaInGuildHH1Talk-One
IF ~~ THEN DO ~TakePartyGold(600) SetGlobal("ANSearchGuildHH","GLOBAL",3) SetGlobal("ANSearchGuildMoney","GLOBAL",3) SetGlobalTimer("GuildHHTimer2","GLOBAL",ONE_DAY)~ REPLY @784 EXTERN ANnuma1 ANNumaInGuildHH1Talk-Three
IF ~~ THEN REPLY @785 EXTERN ANnuma1 ANNumaInGuildHH1Talk-Nobody

APPEND ANnuma1
IF ~~ THEN BEGIN ANNumaInGuildHH1Talk-One
  SAY @786
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildHH1Talk-Three
  SAY @787
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildHH1Talk-Nobody
  SAY @788
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildHH2Talk
  SAY @782
IF ~~ THEN DO ~TakePartyGold(200) SetGlobal("ANSearchGuildHH","GLOBAL",2) SetGlobal("ANSearchGuildMoney","GLOBAL",2) SetGlobalTimer("GuildHHTimer1","GLOBAL",ONE_DAY)~ REPLY @783 GOTO ANNumaInGuildHH1Talk-One
IF ~~ THEN DO ~TakePartyGold(600) SetGlobal("ANSearchGuildHH","GLOBAL",3) SetGlobal("ANSearchGuildMoney","GLOBAL",3) SetGlobalTimer("GuildHHTimer2","GLOBAL",ONE_DAY)~ REPLY @784 GOTO ANNumaInGuildHH1Talk-Three
IF ~~ THEN REPLY @785 GOTO ANNumaInGuildHH1Talk-Nobody
END

IF WEIGHT #-10 ~AreaCheck("AN0450") Global("ANRushdiJoin","GLOBAL",1) Global("ANNumaRushdi","GLOBAL",0) GlobalGT("ANSearchGuildMoney","GLOBAL",1)~ THEN BEGIN ANNumaRushdiTalk
  SAY @801
IF ~~ THEN DO ~SetGlobal("ANNumaRushdi","GLOBAL",1)~ REPLY @802 GOTO ANNumaRushdiTalk1
END

IF ~~ THEN BEGIN ANNumaRushdiTalk1
  SAY @803
=@804  
IF ~~ THEN DO ~AddJournalEntry(@1013,QUEST) SetGlobal("ANNumaRushdi","GLOBAL",2) SetGlobalTimer("ANNumaRushdiTimer","GLOBAL",ONE_DAY)~ REPLY @805 GOTO ANNumaRushdiTalkYES
IF ~~ THEN REPLY @806 GOTO ANNumaRushdiTalkNO
END

IF ~~ THEN BEGIN ANNumaRushdiTalkYES
  SAY @807
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaRushdiTalkNO
  SAY @808
IF ~~ THEN EXIT
END

IF WEIGHT #-10 ~AreaCheck("AN0450") Global("ANNumaRushdi","GLOBAL",2) GlobalTimerExpired("ANNumaRushdiTimer","GLOBAL")~ THEN BEGIN ANNumaRushdiFINAL
  SAY @809
IF ~~ THEN DO ~AddJournalEntry(@1014,QUEST_DONE) SetGlobal("ANNumaRushdi","GLOBAL",3) GiveGoldForce(500) AddexperienceParty(1000)~ EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildImoen
  SAY @813
IF ~~ THEN REPLY @814 GOTO ANNumaInGuildImoen1
IF ~~ THEN REPLY @816 GOTO ANNumaInGuildImoen2
END

IF ~~ THEN BEGIN ANNumaInGuildImoen1
  SAY @815
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildImoen2
  SAY @817
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANNumaInGuildIrenicus
  SAY @813
IF ~~ THEN REPLY @814 GOTO ANNumaInGuildImoen1
IF ~~ THEN REPLY @816 GOTO ANNumaInGuildImoen2
END

END

// Ghost
BEGIN ANGhost1
IF ~Global("ANSearchGuildPrizrak","AN0451",2)~ THEN BEGIN ANSearchGuildPrizrakTalk
  SAY @819
IF ~~ THEN DO ~SetGlobal("ANSearchGuildPrizrak","AN0451",3)~ REPLY @820 GOTO ANSearchGuildPrizrakTalk1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildPrizrak","AN0451",3)~ REPLY @821 GOTO ANSearchGuildPrizrakTalk1
END

CHAIN ANGhost1 ANSearchGuildPrizrakTalk1
@822
=@823
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @824
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @825
== IF_FILE_EXISTS CMALORAJ IF ~InParty("CMAlora") !StateCheck("CMAlora",CD_STATE_NOTVALID)~ THEN @825
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @826
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @827
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @827
== ANGhost1 IF ~InParty("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @828
== ANGhost1 IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @828
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @829
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @829
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @831
== NALIAJ IF ~OR(2) !InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @831
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @832
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @833
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @834
== ANGhost1 IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @835
== ANGhost1 @830 DO ~Enemy()~
EXIT

// Kitchen talk
CHAIN IF WEIGHT #-12 ~AreaCheck("AN0450") Global("ANSearchGuildKithen","AN0450",0) Global("ANNordikKitchen","LOCALS",1)~ THEN ANbugb01 ANNordikKitchenTalk
@836 DO ~SetGlobal("ANSearchGuildKithen","AN0450",1) SetGlobalTimer("GuildAnnMaryTimer","GLOBAL",ONE_DAY)~
== ANnuma1 @837
== ANbugb01 @838
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @839
== IF_FILE_EXISTS CMALORAJ IF ~InParty("CMAlora") !StateCheck("CMAlora",CD_STATE_NOTVALID)~ THEN @839
== ANbugb01 IF ~InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @840
== ANbugb01 IF ~InParty("CMAlora") !StateCheck("CMAlora",CD_STATE_NOTVALID)~ THEN @840
== ANbugb01 @841
== ANnuma1 @842
EXIT

BEGIN ANcook1
IF WEIGHT #-12  ~Global("ANSearchGuildKithen","AN0450",2)~ THEN BEGIN ANcook1InGuild
  SAY @843
IF ~~ THEN DO ~SetGlobal("ANSearchGuildKithen","AN0450",3) SetGlobalTimer("ANSearchGuildFatherTimer","GLOBAL",TWO_DAYS)~ REPLY @844 GOTO ANcook1InGuild1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildKithen","AN0450",3) SetGlobalTimer("ANSearchGuildFatherTimer","GLOBAL",TWO_DAYS)~ REPLY @845 GOTO ANcook1InGuild1
IF ~~ THEN DO ~SetGlobal("ANSearchGuildKithen","AN0450",3) SetGlobalTimer("ANSearchGuildFatherTimer","GLOBAL",TWO_DAYS)~ REPLY @846 GOTO ANcook1InGuild1
END

IF ~~ THEN BEGIN ANcook1InGuild1
  SAY @847
IF ~~ THEN REPLY @848 GOTO ANcook1InGuild2
IF ~~ THEN REPLY @849 GOTO ANcook1InGuild2
IF ~~ THEN REPLY @850 GOTO ANcook1InGuild2
END

IF ~~ THEN BEGIN ANcook1InGuild2
  SAY @851
IF ~~ THEN REPLY @853 GOTO ANcook1InGuild3
IF ~~ THEN REPLY @868 GOTO ANcook1InGuildNO
END

IF ~~ THEN BEGIN ANcook1InGuildNO
  SAY @869
IF ~~ THEN REPLY @853 GOTO ANcook1InGuild3
IF ~~ THEN REPLY @870 GOTO ANcook1InGuildNO1
END

IF ~~ THEN BEGIN ANcook1InGuildNO1
  SAY @871
IF ~~ THEN DO ~EscapeArea()~ EXTERN ANbugb01 ANcook1InGuildNO2
END

IF ~~ THEN BEGIN ANcook1InGuild4
  SAY @860
IF ~~ THEN DO ~SetGlobal("ANSearchGuildKithen","AN0450",4) EscapeArea()~ EXTERN ANnuma1 ANcook1InGuild5
END

CHAIN ANcook1 ANcook1InGuild3
@854
== ANbugb01 @855
== ANcook1 @856
== ANbugb01 @857
== ANcook1 @858
END
IF ~~ THEN REPLY @859 EXTERN ANcook1 ANcook1InGuild4

APPEND ANbugb01
IF ~~ THEN BEGIN ANcook1InGuildNO2
  SAY @872
IF ~~ THEN EXIT
END
END

APPEND ANnuma1
IF ~~ THEN BEGIN ANcook1InGuild5
  SAY @861
IF ~~ THEN REPLY @862 GOTO ANcook1InGuild6
IF ~~ THEN REPLY @864 GOTO ANcook1InGuild8
END

IF ~~ THEN BEGIN ANcook1InGuild6
  SAY @863
IF ~~ THEN REPLY @865 GOTO ANcook1InGuild7
END

IF ~~ THEN BEGIN ANcook1InGuild7
  SAY @866
IF ~~ THEN GOTO ANcook1InGuild8
END

IF ~~ THEN BEGIN ANcook1InGuild8
  SAY @867
IF ~~ THEN EXIT
END
END

APPEND ANcook1
IF ~Global("ANSearchGuildKithen","AN0450",5)~ THEN BEGIN ANcook1InGuildOK
  SAY @878
IF ~RandomNum(2,1)~ THEN REPLY @873 GOTO ANcook1InGuildEda1
IF ~RandomNum(2,2)~ THEN REPLY @873 GOTO ANcook1InGuildEda2
IF ~RandomNum(8,1)~ THEN REPLY @876 GOTO ANcook1InGuildNews1
IF ~RandomNum(8,2)~ THEN REPLY @876 GOTO ANcook1InGuildNews2
IF ~RandomNum(8,3)~ THEN REPLY @876 GOTO ANcook1InGuildNews3
IF ~RandomNum(8,4)~ THEN REPLY @876 GOTO ANcook1InGuildNews4
IF ~RandomNum(8,5)~ THEN REPLY @876 GOTO ANcook1InGuildNews5
IF ~RandomNum(8,6)~ THEN REPLY @876 GOTO ANcook1InGuildNews6
IF ~RandomNum(8,7)~ THEN REPLY @876 GOTO ANcook1InGuildNews7
IF ~RandomNum(8,8)~ THEN REPLY @876 GOTO ANcook1InGuildNews8
IF ~~ THEN REPLY @877 GOTO ANcook1InGuildOKBy
END

IF ~~ THEN BEGIN ANcook1InGuildEda1
  SAY @874
IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpellRES("SPIN101",Myself))~ EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildEda2
  SAY @875
IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpellRES("SPIN101",Myself))~ EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildNews1
  SAY @880
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildNews2
  SAY @881
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildNews3
  SAY @882
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildNews4
  SAY @883
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildNews5
  SAY @884
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildNews6
  SAY @885
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildNews7
  SAY @886
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildNews8
  SAY @887
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANcook1InGuildOKBy
  SAY @879
IF ~~ THEN EXIT
END

END

INTERJECT_COPY_TRANS INSPECT 14 ANGuildINSPECT14
== INSPECT IF ~GlobalGT("ANSearchGuild","GLOBAL",25)~ THEN @888
END