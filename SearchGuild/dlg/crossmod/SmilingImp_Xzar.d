APPEND 7XXZARJ

IF ~GlobalGT("ANSearchGuild","GLOBAL",22) Global("XzarAN0450","AN0450",2)~ THEN BEGIN XzarAN0450Talk
  SAY @13
IF ~~ THEN DO ~SetGlobal("XzarAN0450","AN0450",3)~ REPLY @14 + XzarAN0450Talk1
IF ~~ THEN DO ~SetGlobal("XzarAN0450","AN0450",3)~ REPLY @15 + XzarAN0450Talk1
IF ~~ THEN DO ~SetGlobal("XzarAN0450","AN0450",3)~ REPLY @16 + XzarAN0450TalkEnd
END

IF ~~ THEN BEGIN XzarAN0450Talk1
  SAY @18
=@19
=@20
=@21
=@22
=@23
=@24
=@25
=@26
=@27
=@28
=@29
IF ~~ THEN REPLY @30 + XzarAN0450Talk2
IF ~~ THEN REPLY @31 + XzarAN0450Talk3
END

IF ~~ THEN BEGIN XzarAN0450Talk2
  SAY @32
IF ~OR(3) !InParty("7XMONT") !InMyArea("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN GOTO XzarAN0450Talk4
IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN EXTERN IF_FILE_EXISTS 7XMONTJ XzarAN0450TalkMont
END

IF ~~ THEN BEGIN XzarAN0450Talk3
  SAY @33
IF ~OR(3) !InParty("7XMONT") !InMyArea("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN GOTO XzarAN0450Talk4
IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN EXTERN IF_FILE_EXISTS 7XMONTJ XzarAN0450TalkMont
END

IF ~~ THEN BEGIN XzarAN0450TalkMont1
  SAY @35
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XzarAN0450Talk4
  SAY @36
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XzarAN0450TalkEnd
  SAY @17
IF ~~ THEN EXIT
END

END

APPEND IF_FILE_EXISTS 7XMONTJ
IF ~~ THEN BEGIN XzarAN0450TalkMont
  SAY @34
IF ~~ THEN EXTERN 7XXZARJ XzarAN0450TalkMont1
END
END