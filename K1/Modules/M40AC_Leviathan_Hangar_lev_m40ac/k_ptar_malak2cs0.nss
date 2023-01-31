#include "k_inc_utility"

void main() {
	
	object oMalak = GetObjectByTag("darthmalak400", 0);
	object oPC = GetFirstPC();
	
	UT_ActionPauseConversation(5.3);
	
	SetCommandable(TRUE, oMalak);
	
	SetLockHeadFollowInDialog(oPC, TRUE);
	DelayCommand(5.0, SetLockHeadFollowInDialog(oPC, FALSE));
	
	SetLockHeadFollowInDialog(oMalak, TRUE);
	DelayCommand(5.0, SetLockHeadFollowInDialog(oMalak, FALSE));
	SetLockOrientationInDialog(oMalak, TRUE);
	DelayCommand(5.0, SetLockOrientationInDialog(oMalak, TRUE));
	
	AssignCommand(oMalak, JumpToLocation(GetLocation(GetObjectByTag("lev40_wpmalak2", 0))));
	
	DelayCommand(2.5, SetDialogPlaceableCamera(23));
	
	DelayCommand(3.0, SetLightsaberPowered(oMalak, TRUE, TRUE, TRUE));
	
	DelayCommand(4.0, SetDialogPlaceableCamera(24));
	
	DelayCommand(4.2, AssignCommand(oMalak, PlayAnimation(ANIMATION_FIREFORGET_TAUNT)));
	
	DelayCommand(5.1, AssignCommand(oPC, JumpToLocation(GetLocation(GetObjectByTag("lev_pcwalk_wp", 0)))));
}