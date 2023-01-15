
//:: c_pc_party_not
/*
    Returns TRUE if the player character is *NOT* in the party at the moment.
*/
//:: Created By: RWT-OEI 10/29/04

#include "k_inc_debug"

int StartingConditional()
{
    int nResult = TRUE;

    int i = 0;
    object oCurCharacter;
    for ( ; i < 3; ++i )
    {
        oCurCharacter = GetPartyMemberByIndex(i);
        if ( GetIsPlayerMadeCharacter(oCurCharacter) )
        {
            nResult = FALSE;
        }
    }

    return nResult;
}

