// c_chkrevsexend
// Parameter Count: 1
// Param1 - The local boolean # to check Revan's End.
// This is a special script for the booleans in Kreia's
// conversation on 003EBO after leaving Peragus.
// CFA 1/18/04

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    int nRevanEnd = GetScriptParameter( 1 );

    if ( GetGlobalNumber("101PER_Revan_End") == nRevanEnd ) return TRUE;

    return FALSE;

}
