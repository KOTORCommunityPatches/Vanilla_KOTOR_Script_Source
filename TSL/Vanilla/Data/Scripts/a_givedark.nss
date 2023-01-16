// a_givedark
// Parameter Count: 1
// Param1 - The number of Dark Side points to give the PC.
// This script gives the number of Dark Side points designated
// in the parameter to the player's character.
void main() {

    int nValue = GetScriptParameter( 1 );
    AurPostString("Hit = " + IntToString(nValue), 5, 5, 4.0);
    AdjustAlignment( GetFirstPC(), ALIGNMENT_DARK_SIDE, nValue );
}
