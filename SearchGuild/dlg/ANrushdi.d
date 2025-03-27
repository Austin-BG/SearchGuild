BEGIN ANRUSHD0

// Первый диалог

CHAIN IF ~Dead("ANJELGRE") Global("ANRushdiTalk","AN0451",1) Global("ANNumaRushdi","GLOBAL",0)~ THEN ANRUSHD0 ANRushdiTalkFirst
@0 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("ANRushdiTalk","AN0451",2)~
=@1
=@2 
=@3 
== PLAYER1 IF ~NumInPartyGT(1)~ THEN @53
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @54
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @55
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @56
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @57
== IF_FILE_EXISTS DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @58
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(3) !InParty("Dorn") !InMyArea("Dorn") StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @58
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @59
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @60
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @61
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @62
== IF_FILE_EXISTS 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @63
== IF_FILE_EXISTS 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @64
== IF_FILE_EXISTS O#TiaxJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @64
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID) InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @70
== IF_FILE_EXISTS 1xQUAYJ IF ~InParty("QUAYLE") InMyArea("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID) InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @70
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID) InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @70
== IF_FILE_EXISTS 1xQUAYJ IF ~InParty("QUAYLE") InMyArea("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID) InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @70
== IF_FILE_EXISTS 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @69
== IF_FILE_EXISTS 1xQUAYJ IF ~InParty("QUAYLE") InMyArea("QUAYLE") !StateCheck("QUAYLE",CD_STATE_NOTVALID)~ THEN @69
== IF_FILE_EXISTS 7XkagaJ IF ~InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @65
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @66
== IF_FILE_EXISTS 7XFALDJ IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @68
== IF_FILE_EXISTS 7XSkiJ IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @71
== IF_FILE_EXISTS L#2SDSKJ IF ~InParty("L#2SDSkie") InMyArea("L#2SDSkie") !StateCheck("L#2SDSkie",CD_STATE_NOTVALID)~ THEN @71
== IF_FILE_EXISTS 7XCoranJ IF ~InParty("7XCORAN") InMyArea("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @72
== IF_FILE_EXISTS O#CORANJ IF ~InParty("O#Coran") InMyArea("O#Coran") !StateCheck("O#Coran",CD_STATE_NOTVALID)~ THEN @72
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @73
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !InParty("7XGAR") !InMyArea("7XGAR") StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @73
== IF_FILE_EXISTS 7XXZARJ IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @74
== ANRUSHD0 IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @75
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @67
END
IF ~!Exists("ANbugb01")~ THEN REPLY @8 GOTO ANRushdiTalkFirst4
IF ~Exists("ANbugb01")~ THEN REPLY @8 EXTERN ANbugb01 ANRushdiTalkFirst4Nord
IF ~~ THEN REPLY @4 GOTO ANRushdiTalkFirst1
IF ~~ THEN REPLY @5 GOTO ANRushdiTalkFirst2
IF ~~ THEN REPLY @6 GOTO ANRushdiTalkFirst3
IF ~~ THEN REPLY @7 GOTO ANRushdiTalkFirst5

APPEND ANRUSHD0
IF ~Dead("ANJELGRE") Global("ANRushdiTalk","AN0451",2)~ THEN BEGIN ANRushdiTalkFirstRepeat
  SAY @2
IF ~!Exists("ANbugb01")~ THEN REPLY @8 GOTO ANRushdiTalkFirst4
IF ~Exists("ANbugb01")~ THEN REPLY @8 EXTERN ANbugb01 ANRushdiTalkFirst4Nord  
IF ~~ THEN REPLY @4 GOTO ANRushdiTalkFirst1
IF ~~ THEN REPLY @5 GOTO ANRushdiTalkFirst2
IF ~~ THEN REPLY @6 GOTO ANRushdiTalkFirst3
IF ~~ THEN REPLY @7 GOTO ANRushdiTalkFirst5
END

IF ~~ THEN BEGIN ANRushdiTalkFirst1
  SAY @9
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN ANRushdiTalkFirst2
  SAY @10
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN ANRushdiTalkFirst3
  SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANRushdiTalkFirst5
  SAY @12
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN ANRushdiTalkFirst5_1
  SAY @89
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN ANRushdiTalkFirst4
  SAY @15
=@16 
=@17
IF ~~ THEN REPLY @18 GOTO ANRushdiTalkFirst6
IF ~~ THEN REPLY @21 GOTO ANRushdiTalkFirst7
END

IF ~~ THEN BEGIN ANRushdiTalkFirst6
  SAY @19
IF ~~ THEN REPLY @20 GOTO ANRushdiTalkFirst7
IF ~~ THEN REPLY @21 GOTO ANRushdiTalkFirst7
END

IF ~~ THEN BEGIN ANRushdiTalkFirst7
  SAY @22
IF ~~ THEN REPLY @25 GOTO ANRushdiTalkQuestions1
IF ~~ THEN REPLY @23 GOTO ANRushdiTalkFirst5
IF ~~ THEN REPLY @24 GOTO ANRushdiTalkFirst5
END

// Первая группа вопросов
IF ~~ THEN BEGIN ANRushdiTalkQuestions1
  SAY @26
IF ~~ THEN REPLY @27 GOTO ANRushdiTalkQuestions1-1
IF ~~ THEN REPLY @28 GOTO ANRushdiTalkQuestions1-2
IF ~~ THEN REPLY @29 GOTO ANRushdiTalkQuestions1-3
IF ~~ THEN REPLY @30 GOTO ANRushdiTalkQuestions2
IF ~~ THEN REPLY @24 GOTO ANRushdiTalkFirst5
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions1-1
  SAY @31
IF ~~ THEN REPLY @32 GOTO ANRushdiTalkQuestions1-1-1
IF ~~ THEN REPLY @33 GOTO ANRushdiTalkQuestions2
IF ~~ THEN REPLY @34 GOTO ANRushdiTalkFirst5
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions1-1-1
  SAY @35
=@36  
IF ~~ THEN REPLY @28 GOTO ANRushdiTalkQuestions1-2
IF ~~ THEN REPLY @29 GOTO ANRushdiTalkQuestions1-3
IF ~~ THEN REPLY @30 GOTO ANRushdiTalkQuestions2
IF ~~ THEN REPLY @24 GOTO ANRushdiTalkFirst5
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions1-2
  SAY @37
IF ~~ THEN REPLY @27 GOTO ANRushdiTalkQuestions1-1  
IF ~~ THEN REPLY @29 GOTO ANRushdiTalkQuestions1-3
IF ~~ THEN REPLY @30 GOTO ANRushdiTalkQuestions2
IF ~~ THEN REPLY @24 GOTO ANRushdiTalkFirst5
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions1-3
  SAY @38
IF ~Global("ANbankExists","GLOBAL",0)~ THEN GOTO ANRushdiTalkQuestions1-3-2
IF ~Global("ANbankExists","GLOBAL",1)~ THEN GOTO ANRushdiTalkQuestions1-3-1   
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions1-3-1 
  SAY @39
IF ~~ THEN GOTO ANRushdiTalkQuestions1-3-2
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions1-3-2
  SAY @40
IF ~~ THEN REPLY @27 GOTO ANRushdiTalkQuestions1-1
IF ~~ THEN REPLY @28 GOTO ANRushdiTalkQuestions1-2
IF ~~ THEN REPLY @30 GOTO ANRushdiTalkQuestions2
IF ~~ THEN REPLY @24 GOTO ANRushdiTalkFirst5
END

// Вторая группа вопросов
IF ~~ THEN BEGIN ANRushdiTalkQuestions2
  SAY @41
IF ~~ THEN REPLY @42 GOTO ANRushdiTalkQuestions2-1
IF ~~ THEN REPLY @43 GOTO ANRushdiTalkQuestions2-2
IF ~~ THEN REPLY @44 GOTO ANRushdiTalkQuestions2-3
IF ~~ THEN REPLY @45 GOTO ANRushdiTalkFirst5
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions2-1
  SAY @46
IF ~~ THEN REPLY @43 GOTO ANRushdiTalkQuestions2-2
IF ~~ THEN REPLY @44 GOTO ANRushdiTalkQuestions2-3
IF ~~ THEN REPLY @45 GOTO ANRushdiTalkFirst5
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions2-2
  SAY @47
IF ~~ THEN REPLY @42 GOTO ANRushdiTalkQuestions2-1
IF ~~ THEN REPLY @44 GOTO ANRushdiTalkQuestions2-3
IF ~~ THEN REPLY @45 GOTO ANRushdiTalkFirst5
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions2-3
  SAY @48
IF ~~ THEN DO ~SetGlobal("ANRushdiTalk","AN0451",3) SetGlobal("ANRushdiJoin","GLOBAL",1)~ REPLY @49 GOTO ANRushdiTalkQuestions3YES
IF ~~ THEN REPLY @23 GOTO ANRushdiTalkFirst5
IF ~~ THEN REPLY @24 GOTO ANRushdiTalkFirst5
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions3YES
  SAY @51
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANRushdiTalkQuestions3NO
  SAY @52
IF ~~ THEN REPLY @50 GOTO ANRushdiTalkFirst5_1
END


// PID

IF ~Global("ANRushdiJoin","GLOBAL",1) Global("ANRushdiStoki","AN0451",0)~ THEN BEGIN ANRushdiPIDQuest
  SAY @77
IF ~~ THEN DO ~SetGlobal("ANRushdiStoki","AN0451",1) SetGlobalTimer("ANRushdiStokiTimer","GLOBAL",TWENTY_HOURS)~ REPLY @78 GOTO ANRushdiPIDQuest1
IF ~~ THEN REPLY @90 EXIT
END

IF ~Global("ANRushdiJoin","GLOBAL",1) Global("ANRushdiStoki","AN0451",3)~ THEN BEGIN ANRushdiPIDNoQuest
  SAY @88
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANRushdiPIDQuest1
  SAY @79
 =@80 
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~Global("ANRushdiJoin","GLOBAL",1) Global("ANRushdiStoki","AN0451",2)~ THEN BEGIN ANRushdiPIDQuest2
  SAY @77
IF ~~ THEN DO ~SetGlobal("ANRushdiStoki","AN0451",3)~ REPLY @81 GOTO ANRushdiPIDQuest3
IF ~~ THEN REPLY @90 EXIT
END

IF ~~ THEN BEGIN ANRushdiPIDQuest3
  SAY @82
IF ~~ THEN REPLY @83 GOTO ANRushdiPIDQuest3_1
IF ~~ THEN REPLY @91 GOTO ANRushdiPIDQuest3_2
END

IF ~~ THEN BEGIN ANRushdiPIDQuest3_1
  SAY @77
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ANRushdiPIDQuest3_2
  SAY @92
IF ~~ THEN EXIT
END

END

APPEND ANbugb01
IF ~~ THEN BEGIN ANRushdiTalkFirst4Nord
  SAY @13
IF ~~ THEN REPLY @14 EXTERN ANRUSHD0 ANRushdiTalkFirst4
END
END
