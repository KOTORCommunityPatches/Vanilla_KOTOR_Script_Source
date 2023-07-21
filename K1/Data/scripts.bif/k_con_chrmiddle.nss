//:: k_con_chrmiddle
/*
    checks for middle charisma
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
  return IsCharismaNormal() && !IsCharismaHigh();
}
