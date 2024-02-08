// a_local_reset5
// Parameter Count: 5
// Param1 - The local boolean # to set to FALSE.
// Param2 - The local boolean # to set to FALSE.
// Param3 - The local boolean # to set to FALSE.
// Param4 - The local boolean # to set to FALSE.
// Param5 - The local boolean # to set to FALSE.
// This resets five specific local booleans chosen from the Param list.
// This script is usually used in sections of dialogue that will not be
// repeated.
// CFA 1/2

#include "k_inc_debug"
#include "k_inc_utility"
void main()
{


    int nLocalBoolean = GetScriptParameter( 1 );
    int nLocalBoolean2 = GetScriptParameter( 2 );
    int nLocalBoolean3 = GetScriptParameter( 3 );
    int nLocalBoolean4 = GetScriptParameter( 4 );
    int nLocalBoolean5 = GetScriptParameter( 5 );

    SetLocalBoolean(OBJECT_SELF, nLocalBoolean, FALSE);
    SetLocalBoolean(OBJECT_SELF, nLocalBoolean2, FALSE);
    SetLocalBoolean(OBJECT_SELF, nLocalBoolean3, FALSE);
    SetLocalBoolean(OBJECT_SELF, nLocalBoolean4, FALSE);
    SetLocalBoolean(OBJECT_SELF, nLocalBoolean5, FALSE);

}
