// FileName c_chktelos
// Created By: Chris Avellone
// Created On: 11/17/2003 10:47:14 AM
// This script checks to see if the player is in the Dxun temple.

int StartingConditional()
{
    if( GetModuleName() != "411DXN" )  {
        return TRUE;
    }

    else return FALSE;

}
