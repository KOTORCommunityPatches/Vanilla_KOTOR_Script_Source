void main() {
	object oMand = GetObjectByTag("Mand", 0);
	SetMinOneHP(oMand, 0);
	CreateObject(64, "stmventc003", GetLocation(GetObjectByTag("WP_GAS3_SPAWN", 0)), 0);
	SoundObjectPlay(GetObjectByTag("SteamC", 0));
	DelayCommand(1.0, AssignCommand(oMand, ActionPlayAnimation(45, 1.0, 1.0)));
	DelayCommand(2.1, AssignCommand(oMand, ActionPlayAnimation(30, 1.0, (-1.0))));
	DelayCommand(5.0, ApplyEffectToObject(0, EffectDeath(0, 1, 0), oMand, 0.0));
	RemoveAvailableNPC(2);
}