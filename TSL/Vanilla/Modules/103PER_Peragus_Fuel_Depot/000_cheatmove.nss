void main() {
	object oT3M4 = GetObjectByTag("T3M4", 0);
	object oWP_T3_DEAD = GetObjectByTag("WP_T3_DEAD", 0);
	object oWP_T3_SMOKE = GetObjectByTag("WP_T3_SMOKE", 0);
	location location1 = GetLocation(oWP_T3_DEAD);
	location location3 = GetLocation(oWP_T3_SMOKE);
	DelayCommand(0.1, AssignCommand(oT3M4, ActionJumpToLocation(location1)));
	CreateObject(64, "stmventi001", location3, 0);
	DelayCommand(0.2, ApplyEffectToObject(0, EffectDeath(0, 1, 0), GetObjectByTag("T3M4", 0), 0.0));
}
