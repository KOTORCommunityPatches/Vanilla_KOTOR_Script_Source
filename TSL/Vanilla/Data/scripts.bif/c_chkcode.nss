//::///////////////////////////////////////////////
//:: FileName c_chkcode
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 11/17/2003 10:47:14 AM
//:: This script checks to see if the player got the access code from Atton.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Know_Adm_Code");
    if( iResult == 0 ) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}
