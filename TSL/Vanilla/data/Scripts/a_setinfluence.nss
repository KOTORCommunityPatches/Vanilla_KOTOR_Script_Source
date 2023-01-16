// a_setinfluence
// Parameter Count: 2
// Param1 - Checks to see which NPC it is.
// Param2 - Sets it by X value
// This takes an NPC and modifies his influence by X amount.
    // int NPC_PLAYER          =-1;
    // int NPC_ATTON           = 0;
    // int NPC_BAO_DUR         = 1;
    // int NPC_CANDEROUS       = 2;
    // int NPC_G0T0            = 3;
    // int NPC_HANDMAIDEN      = 4;
    // int NPC_DISCIPLE        = 4;
    // int NPC_HK_47           = 5;
    // int NPC_KREIA           = 6;
    // int NPC_MIRA            = 7;
    // int NPC_HANHARR         = 7;
    // int NPC_T3_M4           = 8;
    // int NPC_VISAS           = 9;

#include "k_inc_debug"

void main()
{

    int nNPC = GetScriptParameter( 1 );
    int nInfluence = GetScriptParameter( 2 );

    ModifyInfluence ( nNPC, nInfluence );

}
