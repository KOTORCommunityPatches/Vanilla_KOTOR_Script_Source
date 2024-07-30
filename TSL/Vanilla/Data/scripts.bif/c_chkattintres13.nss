//::///////////////////////////////////////////////
//:: FileName c_chkattintres13
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 12/14/03
//:: This script checks to see if the player has asked Atton questions 1 and 3
//:: questions in the queue to vary the responses some.
//:://////////////////////////////////////////////
int StartingConditional()
{

    if ( GetGlobalNumber("101PER_Atton_Intro_1") == 1 & GetGlobalNumber("101PER_Atton_Intro_2") == 0 & GetGlobalNumber("101PER_Atton_Intro_3") == 1 ) return TRUE;

    return FALSE;

}
