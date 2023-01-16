// a_leaveparty
// Parameter Count: 1
// Param1 - The # of the party member to leave.
// Global script, mostly for cheat purposes, makes specificed party member leave.
// CFA 2/2/04

#include "k_inc_debug"
#include "k_inc_utility"
void main()
{

    int nParam1 = GetScriptParameter( 1 );

    //definitions are as follows:
    //int NPC_PLAYER                =-1;
    //int NPC_ATTON                 = 0;
    //int NPC_BAO_DUR               = 1;
    //int NPC_CANDEROUS             = 2;
    //int NPC_G0T0                  = 3;
    //int NPC_HANDMAIDEN            = 4;
    //int NPC_DISCIPLE              = 4;
    //int NPC_HK_47                 = 5;
    //int NPC_KREIA                 = 6;
    //int NPC_MIRA                  = 7;
    //int NPC_HANHARR               = 7;
    //int NPC_T3_M4                 = 8;
    //int NPC_VISAS                 = 9;

    //If Disciple was the party member, reset the global.
    if( nParam1 == 4 && GetGlobalNumber ("000_Disciple_Joined") == 1  ) {
            SetGlobalNumber ("000_Disciple_Joined", 0);
    }

    //If Hanharr was the party member, reset the global.
    if( nParam1 == 7 && GetGlobalNumber ("000_Hanharr_Joined") == 1  ) {
            SetGlobalNumber ("000_Hanharr_Joined", 0);
    }

    RemovePartyMember(nParam1);

}
