//:: k_con_isscout
/*
    checks to see if pc is a scout
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    return(GetLevelByClass(CLASS_TYPE_SCOUT,GetPCSpeaker()));
}
