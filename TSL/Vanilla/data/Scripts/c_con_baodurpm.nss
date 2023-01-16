// c_con_baodurpm
// Checks to see if Bao-Dur is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-15-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_BAO_DUR) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Baodur")) <= 10.0));
}

