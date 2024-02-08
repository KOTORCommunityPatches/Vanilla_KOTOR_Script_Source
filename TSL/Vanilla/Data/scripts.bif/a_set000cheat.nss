// a_set000cheat
// Parameter Count: 1
// Param1 - Checks to see if set to #
// Turns cheat mode on.
// CFA: 1-10-04

#include "k_inc_debug"

void main()
{
    int n000cheat = GetScriptParameter( 1 );

    SetGlobalNumber ( "000_Cheat", n000cheat);
}
