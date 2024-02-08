//::///////////////////////////////////////////////
//:: FileName c_chkattintres1
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 12/14/03
//:: This script checks to see if the player asked Atton who he was. The intention
//:: is to replace this with Booleans when I get a global boolean answer.
//:://////////////////////////////////////////////
int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("101PER_Atton_Intro_1");
    if( iResult == 0 ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
