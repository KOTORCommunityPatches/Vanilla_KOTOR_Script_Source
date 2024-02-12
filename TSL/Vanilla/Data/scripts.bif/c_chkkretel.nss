//::///////////////////////////////////////////////
//:: FileName c_chkkretel
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 11/16/2003 7:46:14 PM
//:: This script checks to see if Kreia has telepathically spoken to PC.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Kreia_Telepath");
    if( iResult == 0 ) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}
