//:: FileName c_chkexchwarn1
//:: Created By: Chris Avellone
//:: Created On: 12/14/03
//:: This script checks to see if the player DID get the warning from Atton.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Exchange_Warn");
    if( iResult == 1 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
