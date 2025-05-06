// c_con_t3m4pm
// Checks to see if T3-M4 is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-15-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_T3_M4) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("T3M4")) <= 10.0));
}
