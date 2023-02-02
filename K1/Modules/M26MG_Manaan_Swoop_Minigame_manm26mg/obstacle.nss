int StartingConditional() {
	int nGlobal = GetGlobalNumber("MIN_RACE_GEAR");
	if ((nGlobal > 0)) {
		object oDamage = GetObjectByTag("Damage", 0);
		SoundObjectPlay(oDamage);
		SWMG_SetPlayerSpeed((SWMG_GetPlayerSpeed() * 0.7));
		SWMG_PlayAnimation(OBJECT_SELF, "damage", 0, 0, 1);
	}
	return 0;
}
