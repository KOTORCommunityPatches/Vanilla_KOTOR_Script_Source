//:: k_pdan_romance06
/*
    Checks to see if DAN_ROMANCE_PLOT is 5 (meaning that
    Nurik has accepted Shen and Rahasia) and
    DAN_BELAYAS_DONE is FALSE (meaning Belaya has not
    mentioned the romance results previously). This
    conversation will not repeat as DAN_BELAYAS_DONE is
    set to TRUE to show that this conversation has taken
    place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("DAN_BELAYAS_DONE") == FALSE) && (GetGlobalNumber("DAN_ROMANCE_PLOT") == 5));
    if (iResult)
        SetGlobalBoolean("DAN_BELAYAS_DONE", TRUE);

    return iResult;
}

