// This global conditional is just intended to check and see if Kreia has had
// a talk with the PC about too many people in the party. Happens only once.

int StartingConditional()
{

    // If Kreia has mentioned this before, drop out.
    if ( GetGlobalNumber ("000_Kreia_Influence") > 0 ) return FALSE;

    // Is the Handmaiden or Disicple just joined?
    else if ( IsAvailableCreature(NPC_HANDMAIDEN) ) return TRUE;

    else if ( IsAvailableCreature(NPC_DISCIPLE) ) return TRUE;

    else return FALSE;

}
