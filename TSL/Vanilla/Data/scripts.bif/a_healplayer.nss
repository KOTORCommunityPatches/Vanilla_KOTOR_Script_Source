// a_healplayer
// This script fully heals the player's character.
// Please note that if for some reason the player's
// character is not in the party (the party has split)
// this will affect whomever is the first PC in the party.
void main() {

    object obj = GetFirstPC();
    ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(GetMaxHitPoints(obj) - GetCurrentHitPoints(obj)),obj);
}
