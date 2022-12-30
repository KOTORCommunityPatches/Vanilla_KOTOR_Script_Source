#include "k_inc_utility"

void main() {
	
	object oDoor = GetObjectByTag("sta_door_x1", 0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oDroid1 = GetObjectByTag("sta45_droid_cut1", 0);
	object oDroid2 = GetObjectByTag("sta45_droid_cut2", 0);
	object oDroid1_WP = GetObjectByTag("STA_DROID1_WP", 0);
	object oDroid2_WP = GetObjectByTag("STA_DROID2_WP", 0);
	object oSmoke1 = GetObjectByTag("sta_smoke1", 0);
	object oSmoke2 = GetObjectByTag("sta_smoke2", 0);
	location lDoor = GetLocation(oDoor);
	
	UT_ActionPauseConversation(5.3);
	
	DelayCommand(1.3, SetDialogPlaceableCamera(27));
	
	DelayCommand(2.35, AssignCommand(oPM1, PlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT, 1.0, 0.0)));
	DelayCommand(2.35, AssignCommand(oPM2, PlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT, 1.0, 0.0)));
	
	DelayCommand(2.3, ApplyEffectAtLocation(0, EffectVisualEffect(VFX_FNF_GRENADE_PLASMA, 0), lDoor, 0.0));
	DelayCommand(2.5, ApplyEffectToObject(0, EffectVisualEffect(VFX_IMP_SCREEN_SHAKE, 0), GetFirstPC(), 0.0));
	DelayCommand(2.7, ApplyEffectAtLocation(0, EffectVisualEffect(VFX_FNF_GRENADE_PLASMA, 0), lDoor, 0.0));
	
	DelayCommand(2.8, DestroyObject(oDoor, 0.0, 0, 0.0));
	
	DelayCommand(2.9, AssignCommand(oDroid1, ActionMoveToObject(oDroid1_WP, 1, 1.0)));
	DelayCommand(3.2, AssignCommand(oDroid2, ActionMoveToObject(oDroid2_WP, 1, 1.0)));
}
