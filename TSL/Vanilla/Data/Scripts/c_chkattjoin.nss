//::///////////////////////////////////////////////
//:: FileName c_chkattjoin
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: This script checks to see if Atton has joined the party.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Atton_Joined");
    if( iResult == 1 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
