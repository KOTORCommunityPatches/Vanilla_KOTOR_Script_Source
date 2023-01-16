// c_con_attonpm
// Checks to see if Atton is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-15-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_ATTON) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Atton")) <= 10.0));
}

