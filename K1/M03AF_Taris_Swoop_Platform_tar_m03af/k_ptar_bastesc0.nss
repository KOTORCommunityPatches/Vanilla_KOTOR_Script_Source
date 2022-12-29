#include "k_inc_utility"

void main() {
	
	object oBastila = GetObjectByTag("Bastilla03", 0);
	object oGuard = GetObjectByTag("tar_bast_guard_pull", 0);
	//object oSword = GetItemInSlot(4, oGuard);
	location lLand = GetLocation(GetObjectByTag("tar_bastila_force", 0));
	//location location3 = GetLocation(GetObjectByTag("tar03_wpsword", 0));
	//string string1 = "g_w_vbrdblswd01";
	object oSFX = GetObjectByTag("bastila_kick", 0);
	
	UT_ActionPauseConversation(5.8);
	
	CreateItemOnObject("g_w_vbrdblswd01", oBastila, 1);
	
	AssignCommand(oBastila, ActionCastFakeSpellAtObject(FORCE_POWER_FORCE_PUSH, oBastila));
	DelayCommand(0.7, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForcePushTargeted(lLand, TRUE), oGuard));
	DelayCommand(0.7, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_FORCE_PUSH), oGuard));
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_SCREEN_SHAKE), GetFirstPC()));
	
	DelayCommand(1.1, AssignCommand(GetObjectByTag("tar03_bastcage", 0), PlayAnimation(ANIMATION_PLACEABLE_OPEN, 1.0, 0.0)));
	
	DelayCommand(1.3, ChangeToStandardFaction(oGuard, STANDARD_FACTION_FRIENDLY_2));

	DelayCommand(1.3, AssignCommand(oBastila, ClearAllActions()));
	DelayCommand(1.3, CancelCombat(oBastila));
	DelayCommand(1.6, SetDialogPlaceableCamera(17));
	DelayCommand(1.8, AssignCommand(oBastila, CutsceneAttack(oGuard, 247, ATTACK_RESULT_CRITICAL_HIT, 200))); //247 is g8a1, melee/unarmed attack 1.
	
	DelayCommand(2.5, SoundObjectPlay(oSFX));
	DelayCommand(3.0, ApplyEffectToObject(0, EffectDeath(), oGuard));
	DelayCommand(3.1, SoundObjectStop(oSFX));
	
	DelayCommand(3.4, SetDialogPlaceableCamera(18));
	
	DelayCommand(4.3, AssignCommand(oBastila, ClearAllActions()));
	DelayCommand(4.3, CancelCombat(oBastila));
	DelayCommand(4.8, AssignCommand(oBastila, PlayAnimation(ANIMATION_LOOPING_GET_LOW, 1.0, 2.0)));
	DelayCommand(5.9, AssignCommand(oBastila, ClearAllActions()));
}
