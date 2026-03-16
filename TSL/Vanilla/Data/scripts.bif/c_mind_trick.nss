// c_mind_trick
// CFA 2/1/04
// DJS-OEI 2/3/2004
//  Checks to see if character has the Mind Trick power
//  or anything more powerful. We also use GetSpellAcquired()
//  instead of GetHasSpell() since it doesn't check Force Point
//  totals before returning TRUE. It is not strictly necessary
//  to check the higher level versions of the powers since the
//  lower level ones are prerequisites, but we're doing it just
//  in case any exceptions occur later.
//
// KDS 07/10/04
// UPDATE: Mind Trick was changed to be part of the Force Confusion
// line instead of the Affect Mind one.  So only Affect Mind and
// Dominate Mind will have this effect.  Therefore, this script has
// been modifier to work the same as c_affect_mind.

#include "k_inc_debug"

int StartingConditional()
{
  if( GetSpellAcquired(FORCE_POWER_AFFECT_MIND, GetPartyLeader()) ||
      GetSpellAcquired(FORCE_POWER_DOMINATE, GetPartyLeader()) )
  {
      return TRUE;
  }
  return  FALSE;
}
