//:: c_darkobvious
/*
    checks to see if pc is obviously dark (30 and under)
*/
//:: TDE 6/29/04

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int align = GetGoodEvilValue(GetPCSpeaker());

    if(align >= 0 && align <= 30)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }

}
