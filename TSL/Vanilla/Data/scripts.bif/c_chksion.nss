//:: FileName c_chksion
//:: Created By: Chris Avellone
//:: Created On: 11/16/2003 7:46:14 PM
//:: This script checks to see if Sion has arrived at Peragus or not.
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Sion_Arrives");
    if( iResult == 0 ) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}
