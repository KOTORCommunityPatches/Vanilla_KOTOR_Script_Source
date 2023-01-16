//:: FileName c_chkexchwarn
//:: Created By: Chris Avellone
//:: Created On: 12/14/03
//:: This script checks to see if the player didn't get the warning from Atton.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Exchange_Warn");
    if( iResult == 0 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
