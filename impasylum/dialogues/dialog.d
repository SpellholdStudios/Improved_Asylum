BEGIN ~R#Anast~
BEGIN ~R#Thord~
BEGIN ~R#Drusil~
BEGIN ~R#Breu01~

CHAIN
 IF WEIGHT #0 ~See([PC])
               Global("TalkedToPC","LOCALS",0)
               Allegiance(Myself,NEUTRAL)~ THEN R#Breu01 OpenChain @93 = @94
 DO ~SetGlobal("TalkedToPC","LOCALS",1)~
 == R#Anast @95
 == R#Thord @96
 == R#Breu01 @97
END
++@98 EXTERN R#Anast IrenicusChain
++@99+Jabber
++@100+Western
++@101+SpellholdInfo

CHAIN R#Anast IrenicusChain @102
 == R#Breu01 @103 = @104
 == R#Thord @105
 == R#Drusil @106
 == R#Breu01 @107
 == R#Anast @108
 == R#Breu01 @109
 == R#Thord @110
END
++@111 DO ~Enemy() ActionOverride("R#Breu01",Enemy()) ActionOverride("R#Anast",Enemy()) ActionOverride("R#Drusil01",Enemy())~ EXIT
++@112 EXTERN R#Anast FamiliarChain
++@113 EXTERN R#Breu01 BozoChain
++@114 EXTERN R#Breu01 AoWouldKnowChain

CHAIN R#Anast FamiliarChain @115
 == R#Thord @116
 == R#Drusil @117
 == R#Thord @118
 == R#Breu01 @119
 == R#Thord @120
 == R#Anast @121
 == R#Breu01 @122 = @123
END
++@124 EXTERN R#Breu01 WayOut
++@125 EXTERN R#Breu01 CashPrize
++@126 EXTERN R#Breu01 PCLaid
++@127 EXTERN R#Thord Scenery

CHAIN R#Breu01 WayOut @128
 == R#Anast @129
 == R#Drusil @130
 == R#Anast @131
 == R#Breu01 @132
EXIT

CHAIN R#Breu01 CashPrize @133
 == R#Drusil @134
 == R#Breu01 @135
 == R#Anast @136
 == R#Thord @137
 == R#Breu01 @138
 == R#Thord @139
EXIT

CHAIN R#Breu01 PCLaid @140
 == BVICONI IF ~OR(2)
IsValidForPartyDialogue("Viconia")
IsGabber("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @141
 == BJAHEIR IF ~OR(2)
IsValidForPartyDialogue("Jaheira")
IsGabber("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @142
 == BAERIE IF ~OR(2)
IsValidForPartyDialogue("Aerie")
IsGabber("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN @143
 == BANOMEN IF ~OR(2)
IsValidForPartyDialogue("Anomen")
IsGabber("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
Alignment("Anomen",MASK_CHAOTIC)~ THEN @144
 == BANOMEN IF ~OR(2)
IsValidForPartyDialogue("Anomen")
IsGabber("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
Alignment("Anomen",MASK_LAWFUL)~ THEN @206
 == R#Breu01 @145
 == R#Thord @146
 == R#Anast @147
 == R#Thord @148
 == R#Drusil @149
 == R#Breu01 @150
EXIT

CHAIN R#Thord Scenery @151
 == R#Breu01 @152
 == R#Thord @153
 == R#Breu01 @154
 == R#Drusil @155
 == R#Thord @156
 == R#Anast @157
END
++@158 DO ~ActionOverride("R#Anast",Enemy()) ActionOverride("R#Breu01",Enemy()) ActionOverride("R#Thorde",Enemy()) ActionOverride("R#Drusil01",Enemy())~ EXIT
++@159 EXIT
++@160 EXIT

CHAIN R#Breu01 AoWouldKnowChain @161 = @162
 == R#Thord @163
 == R#Breu01 @164
END
++@165 DO ~Enemy() ActionOverride("R#Thorde",Enemy()) ActionOverride("R#Anast",Enemy()) ActionOverride("R#Drusil",Enemy())~ EXIT
++@166 EXIT

CHAIN R#Breu01 Western @167
 == R#Thord @168
 == R#Anast @169
 == R#Thord @170
 == R#Drusil @171
 == R#Breu01 @172
 == R#Thord @173
END
++@174 DO ~ActionOverride("R#Thorde",Enemy()) ActionOverride("R#Breu01",Enemy()) ActionOverride("R#Anast",Enemy()) ActionOverride("R#Drusil01",Enemy())~ EXIT
++@175 EXTERN R#Drusil DwarfSpeak
++@176 EXIT

CHAIN R#Drusil DwarfSpeak @177
 == R#Thord @178
 == R#Drusil @179
 == R#Thord @180
 == R#Breu01 @181
 == R#Drusil @182
END
++@183 DO ~DisplayStringHead("R#Breu01",@205) ApplySpell(Player1,WIZARD_IMPROVED_INVISIBILITY)~ EXIT
++@184 EXIT
++@185 DO ~ActionOverride("R#Drusil01",Enemy()) ActionOverride("R#Breu01",Enemy()) ActionOverride("R#Thorde",Enemy()) ActionOverride("R#Anast",Enemy())~ EXIT

CHAIN R#Breu01 SpellholdInfo @186 = @187
 == R#Drusil @188
 == R#Breu01 @189
 == R#Thord @190
 == R#Drusil @191
 == R#Breu01 @192
END
++@193 DO ~Enemy() ActionOverride("R#Anast",Enemy()) ActionOverride("R#Drusil01",Enemy()) ActionOverride("R#Thorde",Enemy())~ EXIT
++@194 EXIT
++@195 EXIT

CHAIN R#Breu01 BozoChain @196
 == R#Thord @197
 == R#Drusil @198
END
++@199 DO ~ActionOverride("R#Anast",Enemy()) ActionOverride("R#Drusil01",Enemy()) ActionOverride("R#Thorde",Enemy()) ActionOverride("R#Breu01",Enemy())~ EXIT
++@200+SpellholdInfo
++@201 EXIT

APPEND R#Breu01
 IF ~~ THEN BEGIN Jabber
  SAY @202
  ++@203+SpellholdInfo
  ++@204 DO ~Enemy() ActionOverride("R#Anast",Enemy()) ActionOverride("R#Drusil01",Enemy()) ActionOverride("R#Thorde",Enemy())~ EXIT
 END
END // of APPEND
