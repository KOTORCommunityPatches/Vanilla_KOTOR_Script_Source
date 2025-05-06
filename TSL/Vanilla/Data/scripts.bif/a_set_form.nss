// a_set_form
// DJS-OEI 9/7/2004
// This function is used to give the Jedi Masters the player
// can battle the proper Form and activate it. It shouldn't
// be used for any other purpose.
void main()
{
    // Determine the Form the player should be learning next.
    // This is stolen from Kevin's c_chkform_next global script.
    int nPrestigeClass = GetClassByPosition(2, GetFirstPC());
    int nPrimaryClass = GetClassByPosition(1, GetFirstPC());
    int nCurrentForm = GetGlobalNumber("G_PC_FORM");
    int nFormToLearn = 0;
    object oPC = GetFirstPC();

    if(nPrestigeClass == CLASS_TYPE_INVALID) {
        //player doesn't have a prestige class yet.
        switch (nPrimaryClass) {
            case 3: {
                // Jedi Guardian
                switch (nCurrentForm) {
                    case 0: {nFormToLearn = 261; break;}
                    case 1: {nFormToLearn = 262; break;}
                    case 2: {nFormToLearn = 264; break;}
                }
                break;
            }
            case 4: {
                // Jedi Consular
                if(nCurrentForm == 0) {
                    if(GetGoodEvilValue(oPC) < 50) nFormToLearn = 266;
                      else nFormToLearn = 267;
                }
                else if(nCurrentForm == 1) {
                    if(GetGoodEvilValue(oPC) < 50) {
                        // player is evil, so Force Focus is higher priority.
                        if(!GetSpellAcquired(266, oPC)) nFormToLearn = 266;
                        else nFormToLearn = 267;
                    }
                    else {
                        // player is not evil, so Force Affinity is higher priority
                        if(!GetSpellAcquired(267, oPC)) nFormToLearn = 267;
                        else nFormToLearn = 266;
                    }
                }
                else if(nCurrentForm == 2) nFormToLearn = 268;
                break;
            }
            case 5: {
                // Jedi Sentinel
                switch (nCurrentForm) {
                    case 0: {nFormToLearn = 262; break;}
                    case 1: {nFormToLearn = 261; break;}
                    case 2: {nFormToLearn = 263; break;}
                }
                break;
            }
         }
     }
     else {
        //player has chosen a prestige class
        if(nPrestigeClass == 11) {
            //Jedi Weaponmaster
            if(nCurrentForm == 0) nFormToLearn = 261;
            else if(nCurrentForm == 1) {
                if(!GetSpellAcquired(261, oPC)) nFormToLearn = 261;
                else nFormToLearn = 262;
            }
            else if(nCurrentForm == 2) nFormToLearn = 264;
         }
         else if(nPrestigeClass == 12 || nPrestigeClass == 15) {
             // Master or Lord
             if(nCurrentForm == 0) {
                 if(GetGoodEvilValue(oPC) < 50) nFormToLearn = 266;
                 else nFormToLearn = 267;
             }
             else if(nCurrentForm == 1) {

                if(GetGoodEvilValue(oPC) < 50) {
                    // player is evil, so Force Focus is higher priority.
                    if(!GetSpellAcquired(266, oPC)) nFormToLearn = 266;
                    else nFormToLearn = 267;
                }
                else {
                    // player is not evil, so Force Affinity is higher priority
                    if(!GetSpellAcquired(267, oPC)) nFormToLearn = 267;
                    else nFormToLearn = 266;
                }
             }
             else if(nCurrentForm == 2) nFormToLearn = 268;
        }
        else if(nPrestigeClass == 13) {
            //Jedi Watchman
            if(nCurrentForm == 0) nFormToLearn = 262;
            else if(nCurrentForm == 1) {
                if(!GetSpellAcquired(262, oPC)) nFormToLearn = 262;
                else nFormToLearn = 261;
            }
            else if(nCurrentForm == 2) nFormToLearn = 263;
        }
        else if(nPrestigeClass == 14) {
            //Sith Marauder
            if(nCurrentForm == 0) nFormToLearn = 261;
            else if(nCurrentForm == 1) {
                if(!GetSpellAcquired(261, oPC)) nFormToLearn = 261;
                else nFormToLearn = 262;
            }
            else if(nCurrentForm == 2) nFormToLearn = 264;
        }
        else if(nPrestigeClass == 16) {
            //Sith Assassin
            if(nCurrentForm == 0) nFormToLearn = 262;
            else if(nCurrentForm == 1) {
                if(!GetSpellAcquired(262, oPC)) nFormToLearn = 262;
                else nFormToLearn = 261;
            }
            else if(nCurrentForm == 2) nFormToLearn = 263;
        }
    }

    if( nFormToLearn == 0 ) {
        AurPostString( "MAJOR PROBLEM!!! Can't find next Form for player to learn.", 10, 10, 3.0 );
        return;
    }

    // Grant the Form the player is to learn to the Jedi
    // Master so he can use it during the battle. The Jedi
    // should always be the owner of the dialogue, and hence
    // OBJECT_SELF.
    GrantSpell( nFormToLearn, OBJECT_SELF );
    SetCurrentForm( OBJECT_SELF, nFormToLearn );

    // Set the Master to Min 1HP.
    SetMinOneHP( OBJECT_SELF, TRUE );
}
