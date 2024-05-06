//::///////////////////////////////////////////////
//:: FileName c_chkkrejoin
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 11/17/2003 10:47:14 AM
//:: This script checks to see if Kreia has joined the party.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Kreia_Joined");
    if( iResult == 1 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
