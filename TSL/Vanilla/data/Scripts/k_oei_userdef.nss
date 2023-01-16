//:: k_oei_userdef
/*
    Default User Defined Events Script
*/
//:: Created By: Anthony Davis
#include "k_oei_hench_inc"
#include "k_inc_debug"

void main()
{
    int nUser = GetUserDefinedEventNumber();
    DoSpecialUserDefined(OBJECT_SELF, nUser);
}

