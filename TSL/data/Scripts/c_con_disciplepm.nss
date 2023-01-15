// c_con_disciplepm
// Checks to see if Disciple is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-28-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_DISCIPLE) == TRUE) && (GetGlobalNumber ("000_Disciple_Joined") == 1) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Disciple")) <= 10.0));
}

