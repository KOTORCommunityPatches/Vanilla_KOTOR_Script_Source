//::///////////////////////////////////////////////
//:: FileName c_tlkatt
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 11/17/2003 10:50:14 AM
//:: This script checks to see if the player has spoken to Atton or not, but not yet freed him.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Talk_Atton");
    if( iResult == 1 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
