//:: c_domin_mind
/*
    // DJS-OEI 2/3/2004
    Checks to see if character has the Dominate Mind power
    We also use GetSpellAcquired() instead of GetHasSpell()
    since it doesn't check Force Point totals before returning TRUE.
*/

#include "k_inc_debug"

int StartingConditional()
{
  if( GetSpellAcquired(FORCE_POWER_DOMINATE, GetPartyLeader()) )
  {
      return TRUE;
  }
  return  FALSE;
}
