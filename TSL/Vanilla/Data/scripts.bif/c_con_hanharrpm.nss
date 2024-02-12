// c_con_hanharrpm
// Checks to see if Hanharr is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-28-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_HANHARR) == TRUE) && (GetGlobalNumber ("000_Hanharr_Joined") == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Hanharr")) <= 10.0));
}
