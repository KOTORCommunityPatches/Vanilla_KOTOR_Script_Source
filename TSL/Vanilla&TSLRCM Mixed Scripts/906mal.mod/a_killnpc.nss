void main() {
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	SetMinOneHP(object1, 0);
	CreateObject(64, "stmventc003", GetLocation(GetObjectByTag("WP_GAS_SPAWN", 0)), 0);
	CreateObject(64, "stmventc003", GetLocation(GetObjectByTag("WP_GAS1_SPAWN", 0)), 0);
	CreateObject(64, "stmventc003", GetLocation(GetObjectByTag("WP_GAS2_SPAWN", 0)), 0);
	SoundObjectPlay(GetObjectByTag("SteamC", 0));
	DelayCommand(1.5, AssignCommand(object1, ActionPlayAnimation(45, 1.0, 1.0)));
	DelayCommand(4.5, AssignCommand(object1, ActionPlayAnimation(30, 1.0, (-1.0))));
	DelayCommand(5.0, ApplyEffectToObject(0, EffectDeath(0, 1, 0), object1, 0.0));
	int nParam1 = GetScriptParameter(1);
	RemoveAvailableNPC(nParam1);
}

