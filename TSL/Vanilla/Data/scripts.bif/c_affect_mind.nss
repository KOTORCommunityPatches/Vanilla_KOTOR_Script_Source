//:: c_affect_mind
/*
    // DJS-OEI 2/3/2004
    Checks to see if character has the Affect Mind power
    or anything more powerful. We also use GetSpellAcquired()
    instead of GetHasSpell() since it doesn't check Force Point
    totals before returning TRUE.
    It is not strictly necessary to check the higher level versions
    of the powers since the lower level ones are prerequisites, but
    we're doing it just in case any exceptions occur later.
*/

#include "k_inc_debug"

int StartingConditional()
{
  if( GetSpellAcquired(FORCE_POWER_AFFECT_MIND, GetPartyLeader()) ||
      GetSpellAcquired(FORCE_POWER_DOMINATE, GetPartyLeader()))
  {
      return TRUE;
  }
  return  FALSE;
}
