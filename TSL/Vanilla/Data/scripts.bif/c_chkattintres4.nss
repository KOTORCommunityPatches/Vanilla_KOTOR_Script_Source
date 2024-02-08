//::///////////////////////////////////////////////
//:: FileName c_chkattintres4
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 12/14/03
//:: This script checks to see if the player has asked Atton all the "other"
//:: questions in the queue, and then advances to the exciting revelation phase.
//:://////////////////////////////////////////////
int StartingConditional()
{

    if ( GetGlobalNumber("101PER_Atton_Intro_1") == 1 & GetGlobalNumber("101PER_Atton_Intro_2") == 1 & GetGlobalNumber("101PER_Atton_Intro_3")  ) return TRUE;

    return FALSE;

}
