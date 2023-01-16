//:: FileName c_chkattjoin0
//:: Created By: Chris Avellone
//:: This script checks to see if Atton hasn't joined the party.

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Atton_Joined");
    if( iResult == 0 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
