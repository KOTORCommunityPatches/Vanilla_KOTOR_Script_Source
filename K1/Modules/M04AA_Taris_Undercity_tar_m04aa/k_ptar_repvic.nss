#include "k_inc_utility"

void SpawnRak(location lSpawn) {
	CreateObject(OBJECT_TYPE_CREATURE, "tar04_rakghoulvi", lSpawn);
}

void RakChange(object oObject) {
	location lSpawn = GetLocation(oObject);
	object oWP = GetObjectByTag("ptar_wpgraveyard", 0);
	
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1046), lSpawn, 0.0);
	DelayCommand(0.7, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1047), lSpawn, 0.0));
	DelayCommand(0.8, UT_TeleportPartyMember(oObject, GetLocation(oWP)));
	DelayCommand(1.1, PlaySound("cs_ghoulchange"));
	DelayCommand(1.2, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1046), lSpawn, 0.0));
	DelayCommand(1.4, SpawnRak(lSpawn));
}

void main() {
	
	int nNum;
	object oObject;
	object oRepSol = GetObjectByTag("republicso", 0);
	
	UT_ActionPauseConversation(7.0);
	
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectHorrified(), oRepSol, 4.0);
	DelayCommand(2.0, RakChange(oRepSol));
}
