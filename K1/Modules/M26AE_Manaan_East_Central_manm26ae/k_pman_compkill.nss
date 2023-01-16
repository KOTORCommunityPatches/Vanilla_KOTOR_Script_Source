#include "k_inc_utility"

void SpawnNPC(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void main() {
	
	object oCage = GetObjectByTag("EnergyCage", 0);
	object oCageHelper = GetObjectByTag("EnergyCage_invis", 0);
	object oLorgal = GetObjectByTag("Lorgal", 0);
	location lLorgal = GetLocation(oLorgal);
	vector vCage = Vector(74.1193, 98.2838, 55.23);
	location lCage = Location(vCage, 270.0);
	
	UT_ActionPauseConversation(7.0);
	
	DelayCommand(1.4, PlaySound("v_imp_choke"));
	DelayCommand(5.0, PlaySound("n_rodian_hit1"));
	DelayCommand(7.2, PlaySound("n_rodian_dead"));
	DelayCommand(9.4, PlaySound("bf_normal_metal"));
	
	DelayCommand(1.0, ApplyEffectAtLocation(0, EffectVisualEffect(VFX_FNF_GRENADE_POISON), lLorgal, 0.0));
	DelayCommand(1.0, AssignCommand(oCage, PlayAnimation(ANIMATION_PLACEABLE_ACTIVATE, 1.0, 0.0)));
	DelayCommand(4.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, oCageHelper, BODY_NODE_HEAD), oLorgal, 2.5));
	DelayCommand(1.3, AssignCommand(oLorgal, PlayAnimation(ANIMATION_LOOPING_HORROR, 1.0, 6.0)));
	DelayCommand(4.6, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_LIGHTNING_L), oLorgal, 0.0));
	DelayCommand(5.4, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_LIGHTNING_L), oLorgal, 0.0));
	DelayCommand(6.2, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_LIGHTNING_L), oLorgal, 0.0));
	
	DelayCommand(7.0, AssignCommand(oLorgal, JumpToObject(GetObjectByTag("lorgal_jump", 0))));
	DelayCommand(7.1, SpawnNPC(OBJECT_TYPE_PLACEABLE, "deadrodian", lCage));
	DelayCommand(7.1, AssignCommand(GetObjectByTag("EnergyCage", 0), PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE)));
	DelayCommand(8.7, DestroyObject(oLorgal));
}
