// c_con_mirapm
// Checks to see if Mira is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-24-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_MIRA) == TRUE) && (GetGlobalNumber ("000_Hanharr_Joined") == 0) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Mira")) <= 10.0));
}

