//:: c_chkform_next
/*

returns TRUE if the next form the player should learn equals the one specified by param1

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

int nPrestigeClass = GetClassByPosition(2, GetFirstPC());
int nPrimaryClass = GetClassByPosition(1, GetFirstPC());
int nCurrentForm = GetGlobalNumber("G_PC_FORM");
int nFormToLearn;
object oPC = GetFirstPC();


if(nPrestigeClass == CLASS_TYPE_INVALID)
    //player doesn't have a prestige class yet.
    switch (nPrimaryClass)
    {
        case 3: // Jedi Guardian
              { switch (nCurrentForm)
                {
                    case 0: {nFormToLearn = 261; break;}
                    case 1: {nFormToLearn = 262; break;}
                    case 2: {nFormToLearn = 264; break;}
                }
                break;
              }
        case 4: // Jedi Consular
              {
                if(nCurrentForm == 0)
                {
                    if(GetGoodEvilValue(oPC) < 50) nFormToLearn = 266;
                      else nFormToLearn = 267;
                }
                if(nCurrentForm == 1)
                {
                    if(GetGoodEvilValue(oPC) < 50)
                        {   // player is evil, so Force Focus is higher priority.
                            if(!GetSpellAcquired(266, oPC)) nFormToLearn = 266;
                                else nFormToLearn = 267;
                        }
                        else // player is not evil, so Force Affinity is higher priority
                        {
                            if(!GetSpellAcquired(267, oPC)) nFormToLearn = 267;
                                else nFormToLearn = 266;
                        }
                }
                if(nCurrentForm == 2) nFormToLearn = 268;
                break;
              }
        case 5: // Jedi Sentinel
              { switch (nCurrentForm)
                {
                    case 0: {nFormToLearn = 262; break;}
                    case 1: {nFormToLearn = 261; break;}
                    case 2: {nFormToLearn = 263; break;}
                }
                break;
              }
     }
     else //player has chosen a prestige class
     {
        if(nPrestigeClass == 11) //Jedi Weaponmaster
            {
                if(nCurrentForm == 0) nFormToLearn = 261;
                if(nCurrentForm == 1)
                    {
                        if(!GetSpellAcquired(261, oPC)) nFormToLearn = 261;
                            else nFormToLearn = 262;
                    }
                if(nCurrentForm == 2) nFormToLearn = 264;
            }
         if(nPrestigeClass == 12 || nPrestigeClass == 15) // Master or Lord
            {
                if(nCurrentForm == 0)
                {
                    if(GetGoodEvilValue(oPC) < 50) nFormToLearn = 266;
                      else nFormToLearn = 267;
                }
                if(nCurrentForm == 1)
                {
                    if(GetGoodEvilValue(oPC) < 50)
                        {   // player is evil, so Force Focus is higher priority.
                            if(!GetSpellAcquired(266, oPC)) nFormToLearn = 266;
                                else nFormToLearn = 267;
                        }
                        else // player is not evil, so Force Affinity is higher priority
                        {
                            if(!GetSpellAcquired(267, oPC)) nFormToLearn = 267;
                                else nFormToLearn = 266;
                        }
                }
                if(nCurrentForm == 2) nFormToLearn = 268;
            }

            if(nPrestigeClass == 13) //Jedi Watchman
            {
                if(nCurrentForm == 0) nFormToLearn = 262;
                if(nCurrentForm == 1)
                    {
                        if(!GetSpellAcquired(262, oPC)) nFormToLearn = 262;
                            else nFormToLearn = 261;
                    }
                if(nCurrentForm == 2) nFormToLearn = 263;
            }
            if(nPrestigeClass == 14)  //Sith Marauder
            {
                if(nCurrentForm == 0) nFormToLearn = 261;
                if(nCurrentForm == 1)
                    {
                        if(!GetSpellAcquired(261, oPC)) nFormToLearn = 261;
                            else nFormToLearn = 262;
                    }
                if(nCurrentForm == 2) nFormToLearn = 264;
            }
            if(nPrestigeClass == 16) //Sith Assassin
            {
                if(nCurrentForm == 0) nFormToLearn = 262;
                if(nCurrentForm == 1)
                    {
                        if(!GetSpellAcquired(262, oPC)) nFormToLearn = 262;
                            else nFormToLearn = 261;
                    }
                if(nCurrentForm == 2) nFormToLearn = 263;
            }
         }


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

return (nFormToCheck == nFormToLearn);

}
