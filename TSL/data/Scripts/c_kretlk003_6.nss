// c_kretlk003_6
// Parameter Count: 5
// Param1 - The local boolean # to check if TRUE.
// Param2 - The local boolean # to check if TRUE.
// Param3 - The local boolean # to check if TRUE.
// Param4 - The local boolean # to check if TRUE.
// Param5 - The local boolean # to check if TRUE.
// This is a special script for the booleans in Kreia's
// conversation on 003EBO after leaving Peragus.
// CFA 1/2

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    int nLocalBoolean = GetScriptParameter( 1 );
    int nLocalBoolean2 = GetScriptParameter( 2 );
    int nLocalBoolean3 = GetScriptParameter( 3 );
    int nLocalBoolean4 = GetScriptParameter( 4 );
    int nLocalBoolean5 = GetScriptParameter( 5 );

    if ( GetLocalBoolean(OBJECT_SELF, nLocalBoolean) && GetLocalBoolean(OBJECT_SELF, nLocalBoolean2) && GetLocalBoolean(OBJECT_SELF, nLocalBoolean3) && GetLocalBoolean(OBJECT_SELF, nLocalBoolean4) && GetLocalBoolean(OBJECT_SELF, nLocalBoolean5)) return TRUE;

    return FALSE;

}
