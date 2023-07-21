//:: k_con_zaalbarpm
/*
    checks to see if zaalbar is a party member
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.
//:: modified by Aidan, Sept 28,02
//:: updated with the new party functions
#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_ZAALBAR) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("zaalbar")) <= 10.0));
}
