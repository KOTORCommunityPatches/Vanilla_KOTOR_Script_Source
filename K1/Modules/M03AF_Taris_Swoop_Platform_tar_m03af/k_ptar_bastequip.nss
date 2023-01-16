#include "k_inc_utility"

void main() {
	
	object oBastila = GetObjectByTag("Bastilla03", 0);
	location lJump = GetLocation(GetObjectByTag("tar_bast_guard_p_wp", 0));
	
	UT_ActionPauseConversation(3.0);
	DestroyObject(GetObjectByTag("CageLgB", 0));
	DestroyObject(GetObjectByTag("CageLgB", 1));
	DelayCommand(0.5, AssignCommand(oBastila, ClearAllActions()));
	DelayCommand(0.5, AssignCommand(oBastila, JumpToLocation(lJump)));
	DelayCommand(1.0, AssignCommand(oBastila, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0)));
}
