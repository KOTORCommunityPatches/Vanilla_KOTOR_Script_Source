//:: c_chkform
/*

returns TRUE if the player knows the form specified by param1

KEY:

4 = Lightsaber Form 4 = 261
5 = Lightsaber Form 5 = 262
6 = Lightsaber Form 6 = 263
7 = Lightsaber Form 7 = 264

12 = Force Form 2 = 266
13 = Force Form 2 = 267
14 = Force Form 2 = 268



*/
//:: Created By: Kevin Saunders
//:: Copyright 2004 Obsidian Entertainment
int StartingConditional()
{

int nParam1 = GetScriptParameter (1);
int nFormToCheck;

switch (nParam1)
{
    case 4: {nFormToCheck = 261; break;}
    case 5: {nFormToCheck = 262; break;}
    case 6: {nFormToCheck = 263; break;}
    case 7: {nFormToCheck = 264; break;}
    case 12: {nFormToCheck = 266; break;}
    case 13: {nFormToCheck = 267; break;}
    case 14: {nFormToCheck = 268; break;}
}

return (GetSpellAcquired(nFormToCheck, GetFirstPC()));

}
