// c_con_g0t0pm
// Checks to see if G0-T0 is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-15-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_G0T0) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("G0T0")) <= 10.0));
}

