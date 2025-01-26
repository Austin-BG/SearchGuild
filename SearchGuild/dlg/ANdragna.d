BEGIN ANdecheb

IF ~True()~ THEN BEGIN ANdechebTalkFirst
  SAY @2
=@3  
IF ~~ THEN EXIT
END

BEGIN ANshane

IF ~True()~ THEN BEGIN ANshaneTalkFirst
  SAY @4
IF ~~ THEN REPLY @5 EXIT
END

BEGIN ANgortar

IF ~True()~ THEN BEGIN ANgortarTalkFirst
  SAY @22
IF ~~ THEN REPLY @0 GOTO ANgortarTalkFirst1
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN ANgortarTalkFirst1
  SAY @1
IF ~~ THEN EXIT
END

BEGIN ANdragna
IF ~Dead("ANgortar") Dead("ANshane") Dead("ANdecheb") Global("ANDragonlonaBattle","GLOBAL",0)~ THEN BEGIN ANdragnaTalkFirst
  SAY @6
IF ~~ THEN REPLY @7 GOTO ANdragnaTalkFirst1
IF ~~ THEN REPLY @8 GOTO ANdragnaTalkFirst1
IF ~~ THEN DO ~Kill(Myself)~ REPLY @9 EXIT
END

IF ~~ THEN BEGIN ANdragnaTalkFirst1
  SAY @10
IF ~Dead("MaeVar")~ THEN DO ~EscapeArea()~ REPLY @37 GOTO ANdragnaTalkFirstOut1
IF ~!Dead("MaeVar")~ THEN REPLY @11 GOTO ANdragnaTalkFirst2 
IF ~~ THEN DO ~EscapeArea()~ REPLY @12 GOTO ANdragnaTalkFirstOut
END

IF ~~ THEN BEGIN ANdragnaTalkFirstOut
  SAY @14
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANdragnaTalkFirstOut1
  SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANdragnaTalkFirst2
  SAY @13
IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,CLERIC_ALL)~ THEN DO ~SetGlobal("ANDragonlonaBattle","GLOBAL",1)~ REPLY @15 GOTO ANdragnaTalkFirstHeal
IF ~~ THEN DO ~SetGlobal("ANDragonlonaBattle","GLOBAL",1)~ REPLY @16 GOTO ANdragnaTalkFirst3
IF ~~ THEN DO ~SetGlobal("ANDragonlonaBattle","GLOBAL",1)~ REPLY @27 GOTO ANdragnaTalkFirst3_1
END

IF ~~ THEN BEGIN ANdragnaTalkFirstHeal
  SAY @26
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE)~ REPLY @17 GOTO ANdragnaTalkFirst4
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE)~ REPLY @29 GOTO ANdragnaTalkFirst4
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE)~ REPLY @30 GOTO ANdragnaTalkFirst4
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE) Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF)~ REPLY @36 EXIT
END

IF ~~ THEN BEGIN ANdragnaTalkFirst3
  SAY @24
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE)~ REPLY @17 GOTO ANdragnaTalkFirst4
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE)~ REPLY @29 GOTO ANdragnaTalkFirst4
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE)~ REPLY @30 GOTO ANdragnaTalkFirst4
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE) Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF)~ REPLY @36 EXIT
END

IF ~~ THEN BEGIN ANdragnaTalkFirst3_1
  SAY @28
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE)~ REPLY @17 GOTO ANdragnaTalkFirst4
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE)~ REPLY @29 GOTO ANdragnaTalkFirst4
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE)~ REPLY @30 GOTO ANdragnaTalkFirst4
IF ~~ THEN DO ~SetSequence(SEQ_AWAKE) Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF)~ REPLY @36 EXIT
END

IF ~~ THEN BEGIN ANdragnaTalkFirst4
  SAY @18
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,CONTROLLED) EquipRanged() ~ REPLY @19 GOTO ANdragnaTalkFirst5
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,CONTROLLED) EquipRanged() ~ REPLY @31 GOTO ANdragnaTalkFirst5
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,CONTROLLED) EquipRanged() ~ REPLY @32 GOTO ANdragnaTalkFirst5
IF ~~ THEN DO ~Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF)~ REPLY @36 EXIT
END

IF ~~ THEN BEGIN ANdragnaTalkFirst5
  SAY @20
IF ~~ THEN EXIT
END

IF ~!Dead("MaeVar") Global("ANDragonlonaBattle","GLOBAL",1)~ THEN BEGIN ANdragnaTalkRepeat
  SAY @25
IF ~~ THEN EXIT
END

IF ~Dead("MaeVar") Global("ANDragonlonaBattle","GLOBAL",2)~ THEN BEGIN ANdragnaTalkSecond
  SAY @21
IF ~~ THEN DO ~AddexperienceParty(500) SetGlobal("ANDragonlonaBattle","GLOBAL",3) SetGlobal("ANDragonlonaFriend","GLOBAL",1) EscapeArea() ~ REPLY @33 GOTO ANdragnaTalkSecond1
IF ~~ THEN DO ~AddexperienceParty(500) SetGlobal("ANDragonlonaBattle","GLOBAL",3) SetGlobal("ANDragonlonaFriend","GLOBAL",1) EscapeArea()~ REPLY @34 GOTO ANdragnaTalkSecond1
IF ~~ THEN DO ~Enemy() ChangeEnemyAlly(Myself, EVILCUTOFF) SetGlobal("ANDragonlonaBattle","GLOBAL",3)~ REPLY @35 GOTO ANdragnaTalkSecond2
END

IF ~~ THEN BEGIN ANdragnaTalkSecond1
  SAY @107
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANdragnaTalkSecond2
  SAY @108
IF ~~ THEN EXIT
END


IF WEIGHT #-2 ~Global("ANdragonlonaExists","AN0451",1) AreaCheck("AN0451")~ THEN BEGIN ANdragnaGuildTalk
  SAY @39
IF ~~ THEN DO ~SetGlobal("ANdragonlonaExists","AN0451",2)~ REPLY @40 GOTO ANdragnaGuildTalk1 
IF ~~ THEN DO ~SetGlobal("ANdragonlonaExists","AN0451",2)~ REPLY @41 GOTO ANdragnaGuildTalk1 
IF ~~ THEN DO ~SetGlobal("ANdragonlonaExists","AN0451",2)~ REPLY @42 GOTO ANdragnaGuildTalk1 
IF ~~ THEN DO ~SetGlobal("ANdragonlonaExists","AN0451",2) ActionOverride("ANdragna",EscapeArea())~ REPLY @43 GOTO ANdragnaGuildTalkEnd 
END

IF ~~ THEN BEGIN ANdragnaGuildTalkEnd
  SAY @44
IF ~~ THEN EXIT
END

CHAIN ANdragna ANdragnaGuildTalk1
@45
=@46
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @49
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @50
=@76
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @51
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @52
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @53
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @54
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @55
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @56
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @57
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @58
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @59
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @60
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @61
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @62
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @63
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @64
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @65
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @66
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @67
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @68
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @69
== IF_FILE_EXISTS HEXXATJ IF ~InParty("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @70
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @71
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @72
== IF_FILE_EXISTS RASAADJ IF ~InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @73
== IF_FILE_EXISTS 7XYESJ IF ~InParty("7XYES") !StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @74
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @75
== IF_FILE_EXISTS O#BRANJ IF ~InParty("O#Bran")!StateCheck("O#Bran",CD_STATE_NOTVALID)~ THEN @75
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @77
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @78
== ANdragna IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @79
== IF_FILE_EXISTS CMALORAJ IF ~InParty("CMAlora")!StateCheck("CMAlora",CD_STATE_NOTVALID)~ THEN @78
== ANdragna IF ~InParty("CMAlora")!StateCheck("CMAlora",CD_STATE_NOTVALID)~ THEN @79
== IF_FILE_EXISTS 7XAJANJ IF ~InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @80
== IF_FILE_EXISTS 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @81
== ANdragna IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @82
== IF_FILE_EXISTS O#CORANJ IF ~InParty("O#Coran")!StateCheck("O#Coran",CD_STATE_NOTVALID)~ THEN @81
== ANdragna IF ~InParty("O#Coran")!StateCheck("O#Coran",CD_STATE_NOTVALID)~ THEN @82
== IF_FILE_EXISTS 7XXANJ IF ~InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)~ THEN @83
== IF_FILE_EXISTS O#XANJ IF ~InParty("O#Xan")!StateCheck("O#Xan",CD_STATE_NOTVALID)~ THEN @83
== IF_FILE_EXISTS 7XSafaJ IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @84
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @85
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @86
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @87
== IF_FILE_EXISTS O#TIAXJ IF ~InParty("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @87
END
IF ~~ THEN DO ~SetGlobalTimer("ANDragonlonaGuildTimer","GLOBAL",ONE_DAY)~ REPLY @47 EXTERN ANdragna ANdragnaGuildTalkYES
IF ~~ THEN REPLY @48 EXTERN ANdragna ANdragnaGuildTalkNO

CHAIN ANdragna ANdragnaGuildTalkYES
@109 DO ~SetGlobal("ANDragonlonaFriend","GLOBAL",2)~
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @88
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @89
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @90
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @91
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @92
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @93
== ANdragna @111
EXIT 

CHAIN ANdragna ANdragnaGuildTalkNO
@110 DO ~ActionOverride("ANdragna",EscapeArea())~
== ANdragna @107
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @94
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @95
== KORGANJ IF ~InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @96
EXIT 

APPEND ANdragna

IF ~Global("ANDragonlonaFriend","GLOBAL",2) RandomNum(3,1)~ THEN BEGIN ANdragnaGuildPID1
  SAY @97
IF ~~ THEN EXIT
END

IF ~Global("ANDragonlonaFriend","GLOBAL",2) RandomNum(3,2)~ THEN BEGIN ANdragnaGuildPID2
  SAY @98
IF ~~ THEN EXIT
END

IF ~Global("ANDragonlonaFriend","GLOBAL",2) RandomNum(3,3)~ THEN BEGIN ANdragnaGuildPID3
  SAY @99
IF ~~ THEN EXIT
END

END

CHAIN IF WEIGHT #-99 ~GlobalTimerExpired("ANDragonlonaGuildTimer","GLOBAL") Global("ANSearchGuildDragnaEscape","AN0450",0)~ THEN ANnuma1 ANNumaDrangolonaEscapeTalk
@100 DO ~SetGlobal("ANSearchGuildDragnaEscape","AN0450",1) AddexperienceParty(500) AddJournalEntry(@1015,INFO)~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @101
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @102
END
IF ~~ THEN REPLY @103 EXTERN ANnuma1 ANNumaDrangolonaEscapeTalk1
IF ~~ THEN REPLY @104 EXTERN ANnuma1 ANNumaDrangolonaEscapeTalk1
IF ~~ THEN REPLY @105 EXTERN ANnuma1 ANNumaDrangolonaEscapeTalk1

APPEND ANnuma1
IF ~~ THEN BEGIN ANNumaDrangolonaEscapeTalk1
  SAY @106
IF ~~ THEN EXIT
END
END