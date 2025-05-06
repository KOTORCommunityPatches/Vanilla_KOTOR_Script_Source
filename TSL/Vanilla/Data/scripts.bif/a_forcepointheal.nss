// a_forcepointheal
// This heals the Disciple and the player of all Force points.
// CFA 10-10-04

#include "k_inc_debug"

void main() {

    object obj1 = GetFirstPC ();
    object obj2 = GetObjectByTag ("Disciple");

    int nHealAmount = GetMaxForcePoints(obj1) - GetCurrentForcePoints(obj1);
    if( nHealAmount > 0 )
    {
        if(GetIsObjectValid(obj1))//heal party leader
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints( nHealAmount ),obj1);
    }

    int nHealAmount2 = GetMaxHitPoints(obj2) - GetCurrentHitPoints(obj2);
    if( nHealAmount2 > 0 )
    {
        if(GetIsObjectValid(obj2))//heal Disciple
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints( nHealAmount2 ),obj2);
    }

}
