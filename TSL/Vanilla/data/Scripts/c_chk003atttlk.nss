// c_chk003Atttlk
// Parameter Count: 1
// Param1 - The # to check if TRUE.
// This is a special script for the booleans in Atton's
// conversation on 003EBO after leaving Peragus.
// CFA 1/2

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    int nLocalParam = GetScriptParameter( 1 );

    if ( GetGlobalNumber("003EBO_Atton_Talk") == nLocalParam ) return TRUE;

    return FALSE;

}
