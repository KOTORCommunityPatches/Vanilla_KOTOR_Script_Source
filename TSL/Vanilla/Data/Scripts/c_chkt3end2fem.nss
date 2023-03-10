//:: FileName c_chkt3end2fem
//:: Created By: Chris Avellone
//:: Created On: 11/17/2003 10:47:14 AM
//:: This script checks to see if this node is coming from T3
//:: and if the PC is female.

#include "k_inc_debug"

int StartingConditional()
{

    int nLocalBoolean = GetScriptParameter( 1 );
    int iGender = GetGender(GetFirstPC());

    if( GetGlobalNumber("105PER_T3_End") == 2 && !GetLocalBoolean (OBJECT_SELF, nLocalBoolean) && iGender == GENDER_FEMALE) {
        SetLocalBoolean (OBJECT_SELF, nLocalBoolean, TRUE);
        return TRUE;
    }

    return FALSE;

}
