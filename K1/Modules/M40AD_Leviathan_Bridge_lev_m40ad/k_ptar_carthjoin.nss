void SpawnTrooper(object oWP) {
	object oTrooper = CreateObject(OBJECT_TYPE_CREATURE, "g_sithtroop04", GetLocation(GetObjectByTag("lev40_wpsithspawn", 0)), 0);
	AssignCommand(oTrooper, ActionMoveToObject(oWP, TRUE));
}

void main() {
	
	AddPartyMember(NPC_CARTH, GetObjectByTag("Carth", 0));
	AddPartyMember(NPC_BASTILA, GetObjectByTag("Bastila", 0));
	
	DelayCommand(3.0, SpawnTrooper(GetObjectByTag("lev40_party0", 0)));
	DelayCommand(6.0, SpawnTrooper(GetObjectByTag("lev40_party1", 0)));
	DelayCommand(9.0, SpawnTrooper(GetObjectByTag("lev40_party2", 0)));
	
	SoundObjectPlay(GetObjectByTag("lev40_alarm", 0));
}
