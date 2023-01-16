// a_localn_dec
// Parameter Count: 2
// Param1 - The local number # to decrement (range 12-31)
// Param2 - The value to subtract from Param1 (default = 1)
// Param3 - Optional string parameter to refer to another object's local #
//
// KDS 06/15/04
// Modified TDE 7/31/04

#include "k_inc_debug"
#include "k_inc_utility"
void main()
{

    int nLocalNumber = GetScriptParameter( 1 );
    int nValue = GetScriptParameter ( 2 );
    // Added optional string parameter to refer to another object's local #
    string sTag = GetScriptStringParameter();

    object oObject;

    // If sTag is empty, use the object that called the script
    if ( sTag == "" ) oObject = OBJECT_SELF;

    else oObject = GetObjectByTag(sTag);

    if (nValue == 0) nValue = 1;

    SetLocalNumber(oObject, nLocalNumber,
        GetLocalNumber(oObject, nLocalNumber) - nValue);

}
