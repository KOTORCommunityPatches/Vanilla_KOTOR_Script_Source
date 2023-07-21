//:: k_con_carthpm
/*
    checks to see if carth is a party member
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
//:: modified by Aidan, Sept 28,02
//:: updated with the new party functions
#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_CARTH) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("carth")) <= 10.0));
}
