//::///////////////////////////////////////////////
//:: FileName c_chkkremis
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: This script checks to see if Kreia is assigning the mission for 151HAR.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("151HAR_Kreia_Mission");
    if( iResult == 1 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
