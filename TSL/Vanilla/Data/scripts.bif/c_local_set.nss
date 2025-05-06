// c_local_set
// Parameter Count: 1
// Param1 - The local boolean # to check if TRUE.
// Param2 - Optional string parameter to refer to another object's local #
//
// FAB 12/4
// Modified TDE 7/31/04

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    int nLocalBoolean = GetScriptParameter( 1 );
    // Added optional string parameter to refer to another object's local #
    string sTag = GetScriptStringParameter();

    object oObject;

    // If sTag is empty, use the object that called the script
    if ( sTag == "" ) oObject = OBJECT_SELF;

    else oObject = GetObjectByTag(sTag);

    if ( GetLocalBoolean(oObject, nLocalBoolean) ) return TRUE;

    return FALSE;

}
