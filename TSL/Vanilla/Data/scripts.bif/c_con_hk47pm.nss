// c_con_hk47pm
// Checks to see if HK-47 is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-15-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_HK_47) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("HK47")) <= 10.0));
}
