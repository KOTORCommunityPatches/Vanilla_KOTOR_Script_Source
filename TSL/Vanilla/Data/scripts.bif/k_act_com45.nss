//:: k_act_com45
/*
     Removes the correct amount of tokens
     and sets the boolean flag on the module
     FAB: Param1: speed increase is 25%*Param1
*/
//:: Created By:    Preston Watamaniuk
//:: Modified By:   Ferret Baudoin (3/15)
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"
#include "k_inc_generic"

void main()
{
    int nAmount = UT_DeterminesItemCost(6, SKILL_REPAIR);
    UT_RemoveRepairParts(nAmount);

    // FAB CODE here
    int nSpeed;
    int nParam = GetScriptParameter(1);
    if ( nParam == 0 ) nSpeed = 125;
    else nSpeed = 100 + 25*nParam;
    effect eFX = EffectMovementSpeedIncrease(nSpeed);
    ApplyEffectToObject( DURATION_TYPE_PERMANENT,eFX,OBJECT_SELF );

    // FAB CODE ends here

    UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_REPAIR_ACTIVATE_PATROL_ROUTE, TRUE);
}
