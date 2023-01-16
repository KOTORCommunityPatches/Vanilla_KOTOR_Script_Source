// a_heal_pc
// This heals the PC to max.
// CFA 10-10-04

#include "k_inc_debug"

void main() {

    object obj1 = GetFirstPC ();

    int nHealAmount = GetMaxHitPoints(obj1) - GetCurrentHitPoints(obj1);
    if( nHealAmount > 0 )
    {
        if(GetIsObjectValid(obj1))//heal party leader
            ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints( nHealAmount ),obj1);
    }

}
