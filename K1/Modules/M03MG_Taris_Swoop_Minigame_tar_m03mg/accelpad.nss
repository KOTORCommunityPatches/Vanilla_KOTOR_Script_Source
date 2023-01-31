int StartingConditional() {
	int nGlobal = GetGlobalNumber("MIN_RACE_GEAR");
	object object1 = SWMG_GetPlayer();
	if ((SWMG_GetIsInvulnerable(object1) == 0)) {
		if ((nGlobal != 5)) {
			SWMG_SetPlayerAccelerationPerSecond((SWMG_GetPlayerAccelerationPerSecond() * 1.1));
			SWMG_SetPlayerSpeed((SWMG_GetPlayerSpeed() * 1.05));
		}
	}
	SWMG_PlayAnimation(OBJECT_SELF, "boost", 0, 0, 1);
	SWMG_StartInvulnerability(object1);
	SWMG_AdjustFollowerHitPoints(SWMG_GetLastFollowerHit(), (-100), (-100));
	return 0;
}