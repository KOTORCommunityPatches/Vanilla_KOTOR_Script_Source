#include "k_inc_utility"

void PLCAnim() {
	
	object oPillarBase1 = GetObjectByTag("k39_plc_base1", 0);
	object oPillarBase2 = GetObjectByTag("k39_plc_base2", 0);
	object oPillarBase3 = GetObjectByTag("k39_plc_base3", 0);
	object oPillarLower1 = GetObjectByTag("k39_plc_lower1", 0);
	object oPillarLower2 = GetObjectByTag("k39_plc_lower2", 0);
	object oPillarLower3 = GetObjectByTag("k39_plc_lower3", 0);
	object oPillarUpper1 = GetObjectByTag("k39_plc_upper1", 0);
	object oPillarUpper2 = GetObjectByTag("k39_plc_upper2", 0);
	object oPillarUpper3 = GetObjectByTag("k39_plc_upper3", 0);
	object oPillarTop1 = GetObjectByTag("k39_plc_top1", 0);
	object oPillarTop2 = GetObjectByTag("k39_plc_top2", 0);
	object oPillarTop3 = GetObjectByTag("k39_plc_top3", 0);
	
	AssignCommand(oPillarBase2, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
	AssignCommand(oPillarBase3, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
	AssignCommand(oPillarLower2, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
	AssignCommand(oPillarLower3, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
	AssignCommand(oPillarUpper2, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
	AssignCommand(oPillarUpper3, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
	AssignCommand(oPillarTop2, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
	AssignCommand(oPillarTop3, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
	AssignCommand(oPillarBase1, ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
	AssignCommand(oPillarLower1, ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
	AssignCommand(oPillarUpper1, ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
	AssignCommand(oPillarTop1, ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE));
}

void main() {
	
	object oPillar = GetObjectByTag("k39_plc_pillcomp", 0);
	
	if ((!UT_GetTalkedToBooleanFlag(oPillar)))
		{
			PLCAnim();
		}
}
