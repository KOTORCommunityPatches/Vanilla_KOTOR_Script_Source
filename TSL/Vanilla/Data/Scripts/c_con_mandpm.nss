// c_con_mandpm
// Checks to see if Mandalore/Canderous is a party member and close by.
// Created By: Copyright (c) 2002 Bioware Corp, modified by CFA, 1-15-04

#include "k_inc_debug"

int StartingConditional()
{
  return ((IsNPCPartyMember(NPC_CANDEROUS) == TRUE) && (GetDistanceBetween(GetPCSpeaker(), GetObjectByTag("Mand")) <= 10.0));
}
