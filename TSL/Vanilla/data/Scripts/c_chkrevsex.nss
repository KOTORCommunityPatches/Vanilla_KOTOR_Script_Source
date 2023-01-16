// c_chkrevsex
// Parameter Count: 1
// Param1 - The local boolean # to check Revan's Sex.
// This is a special script for the booleans in Kreia's
// conversation on 003EBO after leaving Peragus.
// CFA 1/18/04

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    int nRevanSex = GetScriptParameter( 1 );

    if ( GetGlobalNumber("101PER_Revan_Sex") == nRevanSex ) return TRUE;

    return FALSE;

}
