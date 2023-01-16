// a_local_resetal
// This resets all the local booleans from 30 to 40, for simplicity's sake.
// This script is usually used in sections of dialogue that will not be
// repeated.
//
// Param1 - Optional string parameter to refer to another object's local #
//
// CFA 1/2
// Modified TDE 7/31/04


#include "k_inc_debug"
#include "k_inc_utility"
void main()
{
    // Added optional string parameter to refer to another object's local #
    string sTag = GetScriptStringParameter();

    object oObject;

    // If sTag is empty, use the object that called the script
    if ( sTag == "" ) oObject = OBJECT_SELF;

    else oObject = GetObjectByTag(sTag);

    SetLocalBoolean(oObject, 30, FALSE);
    SetLocalBoolean(oObject, 31, FALSE);
    SetLocalBoolean(oObject, 32, FALSE);
    SetLocalBoolean(oObject, 33, FALSE);
    SetLocalBoolean(oObject, 34, FALSE);
    SetLocalBoolean(oObject, 35, FALSE);
    SetLocalBoolean(oObject, 36, FALSE);
    SetLocalBoolean(oObject, 37, FALSE);
    SetLocalBoolean(oObject, 38, FALSE);
    SetLocalBoolean(oObject, 39, FALSE);
    SetLocalBoolean(oObject, 40, FALSE);

}

