APPEND 7XCoranJ

IF ~GlobalGT("ANSearchGuild","GLOBAL",22) Global("CoranAN0450","AN0450",2)~ THEN BEGIN CoranAN0450Talk
  SAY @0
IF ~~ THEN DO ~SetGlobal("CoranAN0450","AN0450",3)~ REPLY @1 + CoranAN0450Talk1
IF ~~ THEN DO ~SetGlobal("CoranAN0450","AN0450",3)~ REPLY @2 + CoranAN0450Talk1
IF ~~ THEN DO ~SetGlobal("CoranAN0450","AN0450",3)~ REPLY @3 + CoranAN0450Talk1
END

IF ~~ THEN BEGIN CoranAN0450Talk1
  SAY @4
=@5 
=@6 
=@7 
IF ~~ THEN REPLY @8 + CoranAN0450Talk2
IF ~~ THEN REPLY @9 + CoranAN0450Talk2
IF ~~ THEN REPLY @10 + CoranAN0450Talk2
IF ~~ THEN REPLY @11 + CoranAN0450Talk2
END

IF ~~ THEN BEGIN CoranAN0450Talk2
  SAY @12
IF ~~ THEN EXIT
END

END