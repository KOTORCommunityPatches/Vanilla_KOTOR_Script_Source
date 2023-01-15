// c_con_kreiapm
// Checks to see if Kreia is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-15-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_KREIA) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Kreia")) <= 10.0));
}

