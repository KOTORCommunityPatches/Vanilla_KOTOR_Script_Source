//:: a_give_form
/*

 Gives the player the next Form they are supposed to learn

*/
//:: Created By: Kevin Saunders
//:: Copyright 2004 Obsidian Entertainment
void main()
{

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

GrantSpell(nFormToLearn, GetFirstPC());
IncrementGlobalNumber("G_PC_FORM", 1);

}
