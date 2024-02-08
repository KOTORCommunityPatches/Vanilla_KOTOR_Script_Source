// a_local_set
// Parameter Count: 1
// Param1 - The local boolean # to trigger to TRUE.
// Param2 - Optional string parameter to refer to another object's local #
//
// FAB 12/4
// Modified TDE 7/31/04

#include "k_inc_debug"
#include "k_inc_utility"
void main()
{

    int nLocalBoolean = GetScriptParameter( 1 );
    // Added optional string parameter to refer to another object's local #
    string sTag = GetScriptStringParameter();

    object oObject;

    // If sTag is empty, use the object that called the script
    if ( sTag == "" ) oObject = OBJECT_SELF;

    else oObject = GetObjectByTag(sTag);

    SetLocalBoolean(oObject, nLocalBoolean, TRUE);

}
