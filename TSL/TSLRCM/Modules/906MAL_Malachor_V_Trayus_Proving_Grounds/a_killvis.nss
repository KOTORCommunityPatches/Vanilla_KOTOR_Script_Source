void main() {
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	SetMinOneHP(oVisasMarr, 0);
	CreateObject(64, "stmventc003", GetLocation(GetObjectByTag("WP_GAS1_SPAWN", 0)), 0);
	SoundObjectPlay(GetObjectByTag("SteamC", 0));
	DelayCommand(1.0, AssignCommand(oVisasMarr, ActionPlayAnimation(45, 1.0, 1.0)));
	DelayCommand(2.1, AssignCommand(oVisasMarr, ActionPlayAnimation(30, 1.0, (-1.0))));
	DelayCommand(5.0, ApplyEffectToObject(0, EffectDeath(0, 1, 0), oVisasMarr, 0.0));
	RemoveAvailableNPC(9);
}