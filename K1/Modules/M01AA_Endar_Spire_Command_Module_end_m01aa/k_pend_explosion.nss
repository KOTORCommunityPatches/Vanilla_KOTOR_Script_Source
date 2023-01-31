#include "k_inc_end"

void main() {
	
	object oRepSldA = GetObjectByTag("end_cut2_soldier3", 0);
	object oRepSldB = GetObjectByTag("end_cut2_soldier4", 0);
	object oExplode = GetObjectByTag("end_explosion", 0);
	location lExplode = GetLocation(oExplode);
	object oSithA = GetObjectByTag("end_cut2_sith5", 0);
	object oSithB = GetObjectByTag("end_cut2_sith3", 0);
	
	UT_ActionPauseConversation(1.9);
	
	AssignCommand(oSithA, CutsceneAttack(oExplode, 239, ATTACK_RESULT_HIT_SUCCESSFUL, 0));
	DelayCommand(0.3, AssignCommand(oRepSldA, CutsceneAttack(oSithA, 239, ATTACK_RESULT_MISS, 0)));
	
	DelayCommand(0.95000005, SetDialogPlaceableCamera(30));
	
	DelayCommand(1.0, PlayExplosion("end_cut2_explode1", TRUE, TRUE));
	
	DelayCommand(1.1, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(100), oExplode));
	DelayCommand(1.2, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForcePushTargeted(lExplode), oRepSldA));
	
	DelayCommand(1.4, SetMinOneHP(oRepSldA, FALSE));
	
	DelayCommand(1.25, SetDialogPlaceableCamera(36));
}