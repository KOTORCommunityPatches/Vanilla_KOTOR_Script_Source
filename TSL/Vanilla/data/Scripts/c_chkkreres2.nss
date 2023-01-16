//::///////////////////////////////////////////////
//:: FileName c_chkkreres2
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: This script checks to see if the player already asked Kreia the "voice" response.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Kreia_Res2");
    if( iResult == 0 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
