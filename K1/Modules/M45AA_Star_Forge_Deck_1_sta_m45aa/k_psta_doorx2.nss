#include "k_inc_utility"

void main() {
	
	object oDoor = GetObjectByTag("sta_door_x2", 0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oDroid3 = GetObjectByTag("sta45_droid_cut3", 0);
	object oDroid4 = GetObjectByTag("sta45_droid_cut4", 0);
	object oDroid3_WP = GetObjectByTag("STA_DROID3_WP", 0);
	object oDroid4_WP = GetObjectByTag("STA_DROID4_WP", 0);
	object oSmoke3 = GetObjectByTag("sta_smoke3", 0);
	object oSmoke4 = GetObjectByTag("sta_smoke4", 0);
	location lDoor = GetLocation(oDoor);
	
	UT_ActionPauseConversation(5.3);
	
	DelayCommand(1.3, SetDialogPlaceableCamera(29));
	
	DelayCommand(2.35, AssignCommand(oPM1, PlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT, 1.0, 0.0)));
	DelayCommand(2.35, AssignCommand(oPM2, PlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_RIGHT, 1.0, 0.0)));
	
	DelayCommand(2.3, ApplyEffectAtLocation(0, EffectVisualEffect(VFX_FNF_GRENADE_PLASMA, 0), lDoor, 0.0));
	DelayCommand(2.5, ApplyEffectToObject(0, EffectVisualEffect(VFX_IMP_SCREEN_SHAKE, 0), GetFirstPC(), 0.0));
	DelayCommand(2.7, ApplyEffectAtLocation(0, EffectVisualEffect(VFX_FNF_GRENADE_PLASMA, 0), lDoor, 0.0));
	
	DelayCommand(2.8, DestroyObject(oDoor, 0.0, 0, 0.0));
	
	DelayCommand(2.9, AssignCommand(oDroid3, ActionMoveToObject(oDroid3_WP, 1, 1.0)));
	DelayCommand(3.2, AssignCommand(oDroid4, ActionMoveToObject(oDroid4_WP, 1, 1.0)));
}