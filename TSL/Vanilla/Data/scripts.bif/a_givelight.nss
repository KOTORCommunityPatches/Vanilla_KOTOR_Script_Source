// a_givelight
// Parameter Count: 1
// Param1 - The number of Light Side points to give the PC.
// This script gives the number of Light Side points designated
// in the parameter to the player's character.
void main() {

    int nValue = GetScriptParameter( 1 );
    AurPostString("Hit = " + IntToString(nValue), 5, 5, 4.0);
    AdjustAlignment( GetFirstPC(), ALIGNMENT_LIGHT_SIDE, nValue );
}
