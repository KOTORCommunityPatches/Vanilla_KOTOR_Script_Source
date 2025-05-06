// a_local_reset
// Parameter Count: 1
// Param1 - The local boolean # to set to FALSE.
// Param2 - Optional string parameter to refer to another object's local #
// This resets a specified local boolean to FALSE.
// CFA 1/2
// Modified TDE 7/31/04

#include "k_inc_debug"
#include "k_inc_utility"
void main()
{

    int nLocalBoolean = GetScriptParameter( 1 );
    // Added optional string parameter to modify another object's local #
    string sTag = GetScriptStringParameter();

    object oObject;

    // If sTag is empty, use the object that called the script
    if ( sTag == "" ) oObject = OBJECT_SELF;

    else oObject = GetObjectByTag(sTag);
    SetLocalBoolean(oObject, nLocalBoolean, FALSE);

}
