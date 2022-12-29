int StartingConditional() {
	SetGlobalNumber("MIN_RACE_GEAR", (-6));
	object oWind = GetObjectByTag("Wind", 0);
	SoundObjectPlay(oWind);
	SWMG_SetPlayerSpeed(0.0);
	SWMG_PlayAnimation(OBJECT_SELF, "camshake1", 1, 0, 1);
	SWMG_PlayAnimation(OBJECT_SELF, "gear0", 1, 0, 0);
	return 0;
}
