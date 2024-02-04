void main() {
	object oKhoonda_turret_1 = GetObjectByTag("khoonda_turret_1", 0);
	object oKhoonda_turret_2 = GetObjectByTag("khoonda_turret_2", 0);
	object oKhoonda_turret_3 = GetObjectByTag("khoonda_turret_3", 0);
	object oWP_turret1 = GetObjectByTag("WP_turret1", 0);
	object oWP_turret2 = GetObjectByTag("WP_turret2", 0);
	object oWP_turret3 = GetObjectByTag("WP_turret3", 0);
	AssignCommand(oKhoonda_turret_1, ClearAllActions());
	AssignCommand(oKhoonda_turret_2, ClearAllActions());
	AssignCommand(oKhoonda_turret_3, ClearAllActions());
	CreateObject(1, "g_merc_az001", GetLocation(oWP_turret1), 1);
	CreateObject(1, "g_merc_az001", GetLocation(oWP_turret2), 1);
	CreateObject(1, "g_merc_az001", GetLocation(oWP_turret3), 1);
	ChangeToStandardFaction(oKhoonda_turret_1, 11);
	ChangeToStandardFaction(oKhoonda_turret_2, 11);
	ChangeToStandardFaction(oKhoonda_turret_3, 11);
}