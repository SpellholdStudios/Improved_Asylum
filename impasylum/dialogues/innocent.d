BEGIN ~R#EFEM~

IF WEIGHT #0 ~Global("R#IADrowSpawn","GLOBAL",0)~ THEN BEGIN YellForHelp
 SAY @0 = @1
 ++@2+Drow
 +~!IsValidForPartyDialogue("Jaheira")
  !IsValidForPartyDialogue("Aerie")
  !IsValidForPartyDialogue("Anomen")~+@3+Murderer
 +~IsValidForPartyDialogue("Jaheira")
  !IsValidForPartyDialogue("Aerie")
  !IsValidForPartyDialogue("Anomen")~+@3 EXTERN JAHEIRAJ JMurderer
 +~IsValidForPartyDialogue("Aerie")
  !IsValidForPartyDialogue("Anomen")~+@3 EXTERN AERIEJ AeMurderer
 +~IsValidForPartyDialogue("Anomen")~+@3 EXTERN ANOMENJ AnMurderer
 ++@4+Who
END

IF ~~ THEN BEGIN Drow
 SAY @5 = @6
 ++@7+Drow2
 ++@8+PlayerKill
 ++@9+Help
END

IF ~~ THEN BEGIN Murderer
 SAY @10
 ++@7+Drow2
 ++@11 DO ~SetGlobal("R#IADrowSpawn","GLOBAL",1)
CreateCreature("r#vlis",[1539.400],3)
CreateCreature("r#drow",[1461.516],5)
CreateCreature("r#drow",[1318.381],2)
CreateCreature("r#drow",[1457.357],3)~ EXIT
 ++@9+Help
END

IF ~~ THEN BEGIN Who
 SAY @12
 ++@13+Drow2
 ++@14+PlayerKill
 ++@9+Help
END

IF ~~ THEN BEGIN Drow2
 SAY @15
 IF ~~ THEN DO ~SetGlobal("R#IADrowSpawn","GLOBAL",1)
CreateCreature("r#vlis",[1539.400],3)
CreateCreature("r#drow",[1461.516],5)
CreateCreature("r#drow",[1318.381],2)
CreateCreature("r#drow",[1457.357],3)~ EXIT
END

IF ~~ THEN BEGIN Help
 SAY @16 = @17
 IF ~~ THEN DO ~SetGlobal("R#IADrowSpawn","GLOBAL",1)
CreateCreature("r#vlis",[1539.400],3)
CreateCreature("r#drow",[1461.516],5)
CreateCreature("r#drow",[1318.381],2)
CreateCreature("r#drow",[1457.357],3)~ EXIT
END

IF ~~ THEN BEGIN PlayerKill
 SAY @18
 IF ~~ THEN DO ~SetGlobal("R#IADrowSpawn","GLOBAL",1)
CreateCreature("r#vlis",[1539.400],3)
CreateCreature("r#drow",[1461.516],5)
CreateCreature("r#drow",[1318.381],2)
CreateCreature("r#drow",[1457.357],3)
EscapeArea()~ EXIT
END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN JMurderer
 SAY @19
 IF ~~ THEN EXTERN R#EFEM Murderer
END

END // of APPEND

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN AnMurderer
 SAY @20 = @21
 IF ~~ THEN EXTERN R#EFEM Murderer
END

END // of APPEND

APPEND ~AERIEJ~

IF ~~ THEN BEGIN AeMurderer
 SAY @22
 IF ~~ THEN EXTERN R#EFEM Murderer
END

END // of APPEND

BEGIN ~R#EMALE~

IF WEIGHT #0 ~Global("R#IADrowSpawn","GLOBAL",0)~ THEN BEGIN YellForHelp
 SAY @23 = @24
 ++@2+Drow
 ++@4+Who
 +~InParty("Viconia")~+@3 EXTERN VICONIJ ViMurderer
 +~!InParty("Viconia")
  InParty("Keldorn")~+@3 EXTERN KELDORJ KelMurderer
 +~!InParty("Viconia")
 !InParty("Keldorn")
 InParty("Anomen")~+@3 EXTERN ANOMENJ AnoMurderer
 +~!InParty("Viconia")
 !InParty("Keldorn")
 !InParty("Anomen")~+@3+Murderer
END

IF ~~ THEN BEGIN Drow
 SAY @25 = @26
 ++@7+Drow2
 ++@8+PlayerKill
 ++@9+Help
END

IF ~~ THEN BEGIN Drow2
 SAY @15
 IF ~~ THEN DO ~SetGlobal("R#IADrowSpawn","GLOBAL",1)
CreateCreature("r#vlis",[1539.400],3)
CreateCreature("r#drow",[1461.516],5)
CreateCreature("r#drow",[1318.381],2)
CreateCreature("r#drow",[1457.357],3)~ EXIT
END

IF ~~ THEN BEGIN Murderer
 SAY @10
 ++@7+Drow2
 ++@11 DO ~SetGlobal("R#IADrowSpawn","GLOBAL",1)
CreateCreature("r#vlis",[1539.400],3)
CreateCreature("r#drow",[1461.516],5)
CreateCreature("r#drow",[1318.381],2)
CreateCreature("r#drow",[1457.357],3)~ EXIT
 ++@9+Help
END

IF ~~ THEN BEGIN PlayerKill
 SAY @18
 IF ~~ THEN DO ~SetGlobal("R#IADrowSpawn","GLOBAL",1)
CreateCreature("r#vlis",[1539.400],3)
CreateCreature("r#drow",[1461.516],5)
CreateCreature("r#drow",[1318.381],2)
CreateCreature("r#drow",[1457.357],3)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Help
 SAY @27 = @28
 IF ~~ THEN DO ~SetGlobal("R#IADrowSpawn","GLOBAL",1)
CreateCreature("r#vlis",[1539.400],3)
CreateCreature("r#drow",[1461.516],5)
CreateCreature("r#drow",[1318.381],2)
CreateCreature("r#drow",[1457.357],3)~ EXIT
END

IF ~~ THEN BEGIN Who
 SAY @29
 ++@13+Drow2
 ++@14+PlayerKill
 ++@9+Help
END

APPEND VICONIJ

IF ~~ THEN BEGIN ViMurderer
 SAY @30
 IF ~~ THEN EXTERN R#EMALE Murderer
END

END // of APPEND

APPEND KELDORJ

IF ~~ THEN BEGIN KelMurderer
 SAY @31 = @32
 IF ~~ THEN EXTERN R#EMALE Murderer
END

END // of APPEND

APPEND ANOMENJ

IF ~~ THEN BEGIN AnoMurderer
 SAY @33
 IF ~~ THEN EXTERN R#EMALE Murderer
END

END // of APPEND
