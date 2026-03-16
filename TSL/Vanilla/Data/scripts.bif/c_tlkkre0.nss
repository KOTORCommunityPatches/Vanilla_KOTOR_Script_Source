//::///////////////////////////////////////////////
//:: FileName c_tlkkre0
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 11/16/2003 7:46:14 PM
//:: This script checks to see if the player has NOT talked to Kreia before.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Talk_Kreia");
    if( iResult == 1 ) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}
