// c_con_handmaidpm
// Checks to see if the Handmaiden is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-15-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_HANDMAIDEN) == TRUE) && (GetGlobalNumber ("000_Disciple_Joined") == 0) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Handmaiden")) <= 10.0));
}

