//Start workbench tutorial if first time used, otherwise start workbench


#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    if(UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
        {
        UT_SetTalkedToBooleanFlag(OBJECT_SELF);
        ActionStartConversation(GetLastUsedBy());
        }

    else ShowUpgradeScreen(OBJECT_INVALID, GetLastUsedBy());
}







