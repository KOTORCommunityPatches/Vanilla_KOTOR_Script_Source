//::///////////////////////////////////////////////
//:: FileName c_chkattfuel
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 11/17/2003 10:47:14 AM
//:: This script checks to see if Atton complained about the fuel line.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("152HAR_Atton_Fuel");
    if( iResult == 0 ) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}
