// a_healparty
// This script heals everyone in the current party.
void main() {

    object obj = GetFirstPC();
    while( GetIsObjectValid( obj ) ) {
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(GetMaxHitPoints(obj) - GetCurrentHitPoints(obj)),obj);
        obj = GetNextPC();
    }
}
