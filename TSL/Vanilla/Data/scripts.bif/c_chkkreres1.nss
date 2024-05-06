//::///////////////////////////////////////////////
//:: FileName c_chkkreres1
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: This script checks to see if the player already asked Kreia the dead response.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Kreia_Res1");
    if( iResult == 0 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
