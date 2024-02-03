void main() {
	object oDisciple = GetObjectByTag("Disciple", 0);
	SetMinOneHP(oDisciple, 0);
	CreateObject(64, "stmventc003", GetLocation(GetObjectByTag("WP_GAS_SPAWN", 0)), 0);
	SoundObjectPlay(GetObjectByTag("SteamC", 0));
	DelayCommand(1.0, AssignCommand(oDisciple, ActionPlayAnimation(45, 1.0, 1.0)));
	DelayCommand(2.1, AssignCommand(oDisciple, ActionPlayAnimation(30, 1.0, (-1.0))));
	DelayCommand(5.0, ApplyEffectToObject(0, EffectDeath(0, 1, 0), oDisciple, 0.0));
	RemoveAvailableNPC(11);
}

