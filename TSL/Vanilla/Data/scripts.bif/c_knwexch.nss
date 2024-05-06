//:: FileName c_knwexch
//:: Created By: Chris Avellone
//:: Created On: 12/14/03
//:: This script checks to see if the player already asked (Atton) about the Exchange.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Know_Exchange");
    if( iResult == 0 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
