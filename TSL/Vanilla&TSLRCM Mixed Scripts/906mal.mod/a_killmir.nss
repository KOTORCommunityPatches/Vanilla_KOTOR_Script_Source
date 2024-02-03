void main() {
	object oMira = GetObjectByTag("Mira", 0);
	SetMinOneHP(oMira, 0);
	CreateObject(64, "stmventc003", GetLocation(GetObjectByTag("WP_GAS2_SPAWN", 0)), 0);
	SoundObjectPlay(GetObjectByTag("SteamC", 0));
	DelayCommand(1.0, AssignCommand(oMira, ActionPlayAnimation(45, 1.0, 1.0)));
	DelayCommand(2.1, AssignCommand(oMira, ActionPlayAnimation(30, 1.0, (-1.0))));
	DelayCommand(5.0, ApplyEffectToObject(0, EffectDeath(0, 1, 0), oMira, 0.0));
	RemoveAvailableNPC(7);
}

