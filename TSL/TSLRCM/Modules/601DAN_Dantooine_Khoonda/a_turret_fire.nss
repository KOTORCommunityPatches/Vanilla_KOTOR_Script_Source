void main() {
	object oKhoonda_turret1 = GetObjectByTag("khoonda_turret1", 0);
	object oKhoonda_turret2 = GetObjectByTag("khoonda_turret2", 0);
	object oKhoonda_turret3 = GetObjectByTag("khoonda_turret3", 0);
	object oWP_turret1 = GetObjectByTag("WP_turret1", 0);
	object oWP_turret2 = GetObjectByTag("WP_turret2", 0);
	object oWP_turret3 = GetObjectByTag("WP_turret3", 0);
	AssignCommand(oKhoonda_turret1, ClearAllActions());
	AssignCommand(oKhoonda_turret2, ClearAllActions());
	AssignCommand(oKhoonda_turret3, ClearAllActions());
	CreateObject(1, "g_target_merc", GetLocation(oWP_turret1), 1);
	CreateObject(1, "g_target_merc", GetLocation(oWP_turret2), 1);
	CreateObject(1, "g_target_merc", GetLocation(oWP_turret3), 1);
	ChangeToStandardFaction(oKhoonda_turret1, 11);
	ChangeToStandardFaction(oKhoonda_turret2, 11);
	ChangeToStandardFaction(oKhoonda_turret3, 11);
}