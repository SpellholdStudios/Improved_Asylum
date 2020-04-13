BEGIN ~R#VLIS~

IF ~See("R#EFEMALE") Gender(Player1,MALE)~ THEN BEGIN SeeChick
 SAY ~Ah, so there you are my beauty.~ = ~I must admit, you lead us a merry chase.~ = ~But... what is this?  It appears that you have found some poor fool to help you.~ = ~It doesn't matter.  You shall both suffer the cruel tortures of my blade!~
 IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Dead("R#EFEMALE") Gender(Player1,MALE)~ THEN BEGIN ChickDead
 SAY ~Aww, it looks as though you took all of the fun out of my hunt.~ = ~(she smiles gingerly) No matter. I shall take you as my prize instead.~
 IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~!Detect("R#EFEMALE") !Dead("R#EFEMALE") Gender(Player1,MALE)~ THEN BEGIN ChickMissing
 SAY ~So, you have discovered some way to hide my quarry, have you male?~ = ~It matters little. I shall find and kill her after I have finished with you!~
 IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~See("R#EMALE") Gender(Player1,FEMALE)~ THEN BEGIN SeeGuy
 SAY ~Ah, my handsome male! At last I have found you!~ = ~I must admit, you lead us a merry chase.~ = ~But, what is this?  It appears that you have found some poor fool to help you.~ = ~It doesn't matter. You shall both suffer the cruel tortures of my blade!~
 IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Dead("R#EMALE") Gender(Player1,FEMALE)~ THEN BEGIN GuyDead
 SAY ~Aww, it looks as though you took all of the fun out of my hunt.~ = ~(she smiles gingerly) No matter. I shall take you as my prize instead.~
 IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~!Detect("R#EMALE") !Dead("R#EMALE") Gender(Player1,FEMALE)~ THEN BEGIN GuyMissing
 SAY ~So, you have discovered some way to hide my quarry, have you female?~ = ~It matters little. I shall find and kill him after I have finished with you!~
 IF ~~ THEN DO ~Enemy()~ EXIT
END
