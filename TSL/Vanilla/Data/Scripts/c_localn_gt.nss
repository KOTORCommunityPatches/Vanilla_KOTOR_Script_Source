// c_localn_gt
// Parameter Count: 2
// Param1 - The local number # to check (range 12-31)
// Param2 - The value of Param1 being checked
// Param3 - Optional string parameter to refer to another object's local #
//
// Returns TRUE if value of Param1 > Param2
//
// KDS 06/15/04
// Modified TDE 7/31/04

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    int nLocalNumber = GetScriptParameter( 1 );
    int nValue = GetScriptParameter( 2 );
    // Added optional string parameter to refer to another object's local #
    string sTag = GetScriptStringParameter();

    object oObject;

    // If sTag is empty, use the object that called the script
    if ( sTag == "" ) oObject = OBJECT_SELF;

    else oObject = GetObjectByTag(sTag);

    if ( GetLocalNumber(oObject, nLocalNumber) > nValue) return TRUE;

    return FALSE;

}
