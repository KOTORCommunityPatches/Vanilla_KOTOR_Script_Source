// c_chkrevsexend
// Parameter Count: 2
// Param1 - The local boolean # to check Revan's Sex.
// Param2 - The local boolean # to check Revan's End.
// This is a special script for the booleans in Kreia's
// conversation on 003EBO after leaving Peragus.
// CFA 1/3

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    int nRevanSex = GetScriptParameter( 1 );
    int nRevanEnd = GetScriptParameter( 2 );

    if ( GetGlobalNumber("101PER_Revan_Sex") == nRevanSex && GetGlobalNumber("101PER_Revan_End") == nRevanEnd ) return TRUE;

    return FALSE;

}
