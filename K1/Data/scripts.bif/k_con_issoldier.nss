//:: k_con_issoldier
/*
    checks to see if pc is a soldier
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    return(GetLevelByClass(CLASS_TYPE_SOLDIER,GetPCSpeaker()));
}
