#include "k_inc_utility"

void SpawnRak(location lSpawn) {
	CreateObject(OBJECT_TYPE_CREATURE, "tar04_rakghoulvi", lSpawn);
}

void RakChange(object oObject, location lLocation) {
	location lSpawn = GetLocation(oObject);
	object oWP = GetObjectByTag("ptar_wpgraveyard", 0);
	
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1046), lSpawn);
	DelayCommand(1.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1047), lSpawn));
	DelayCommand(1.1, AssignCommand(oObject, PlaySound("cs_ghoulchange")));
	DelayCommand(1.2, UT_TeleportPartyMember(oObject, GetLocation(oWP)));
	DelayCommand(1.4, PlaySound("cs_ghoulchange"));
	DelayCommand(1.5, SpawnRak(lSpawn));
}

void main() {
	
	int nNum;
	object oObject;
	object oVic1 = GetObjectByTag("rakghoulvic00", 0);
	object oVic2 = GetObjectByTag("rakghoulvic01", 0);
	object oVic3 = GetObjectByTag("rakghoulvic02", 0);
	location lVic1 = GetLocation(oVic1);
	location lVic2 = GetLocation(oVic2);
	location lVic3 = GetLocation(oVic3);
	
	DelayCommand(0.1, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectHorrified(), oVic1, 8.0));
	DelayCommand(0.3, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectHorrified(), oVic2, 8.0));
	DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectHorrified(), oVic3, 8.0));
	DelayCommand(2.0, RakChange(oVic1, lVic1));
	DelayCommand(3.0, RakChange(oVic2, lVic2));
	DelayCommand(3.3, RakChange(oVic3, lVic3));
	
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
}
