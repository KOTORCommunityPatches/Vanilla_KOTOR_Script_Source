//::///////////////////////////////////////////////
//:: FileName c_chkattintres12
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 12/14/03
//:: This script checks to see if the player has asked Atton questions 1 and 2
//:: questions in the queue to vary the responses some.
//:://////////////////////////////////////////////
int StartingConditional()
{

    if ( GetGlobalNumber("101PER_Atton_Intro_1") == 1 & GetGlobalNumber("101PER_Atton_Intro_2") == 1 & GetGlobalNumber("101PER_Atton_Intro_3") == 0 ) return TRUE;

    return FALSE;

}
