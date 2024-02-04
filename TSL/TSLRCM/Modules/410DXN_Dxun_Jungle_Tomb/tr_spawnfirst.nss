// Prototypes
void sub1(string stringParam1, string stringParam2, string stringParam3, string stringParam4);

void sub1(string stringParam1, string stringParam2, string stringParam3, string stringParam4) {
	object oWp_spawn4;
	object oWp_spawn4a;
	object object3;
	if ((stringParam1 != "")) {
		oWp_spawn4 = GetWaypointByTag("wp_spawn1");
		object3 = CreateObject(1, stringParam1, GetLocation(oWp_spawn4), 0);
		oWp_spawn4 = GetWaypointByTag("wp_spawnrun");
		oWp_spawn4a = GetWaypointByTag("wp_spawn1a");
		AssignCommand(object3, ActionMoveToObject(oWp_spawn4a, 1, 1.0));
		AssignCommand(object3, ActionMoveToObject(oWp_spawn4, 1, 1.0));
	}
	if ((stringParam2 != "")) {
		oWp_spawn4 = GetWaypointByTag("wp_spawn2");
		object3 = CreateObject(1, stringParam2, GetLocation(oWp_spawn4), 0);
		oWp_spawn4 = GetWaypointByTag("wp_spawnrun2");
		oWp_spawn4a = GetWaypointByTag("wp_spawn2a");
		AssignCommand(object3, ActionMoveToObject(oWp_spawn4a, 1, 1.0));
		AssignCommand(object3, ActionMoveToObject(oWp_spawn4, 1, 1.0));
	}
	if ((stringParam3 != "")) {
		oWp_spawn4 = GetWaypointByTag("wp_spawn3");
		object3 = CreateObject(1, stringParam3, GetLocation(oWp_spawn4), 0);
		oWp_spawn4 = GetWaypointByTag("wp_spawnrun");
		oWp_spawn4a = GetWaypointByTag("wp_spawn3a");
		AssignCommand(object3, ActionMoveToObject(oWp_spawn4a, 1, 1.0));
		AssignCommand(object3, ActionMoveToObject(oWp_spawn4, 1, 1.0));
	}
	if ((stringParam4 != "")) {
		oWp_spawn4 = GetWaypointByTag("wp_spawn4");
		object3 = CreateObject(1, stringParam4, GetLocation(oWp_spawn4), 0);
		oWp_spawn4 = GetWaypointByTag("wp_spawnrun2");
		oWp_spawn4a = GetWaypointByTag("wp_spawn4a");
		AssignCommand(object3, ActionMoveToObject(oWp_spawn4a, 1, 1.0));
		AssignCommand(object3, ActionMoveToObject(oWp_spawn4, 1, 1.0));
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((!GetLocalBoolean(OBJECT_SELF, 40))) {
		int nGlobal = GetGlobalNumber("410DXN_Ramp_Spawns");
		switch (nGlobal) {
			case 0:
				sub1("g_sithcomm002", "sgren_ramp", "g_sithtroop004", "");
				break;
			case 1:
				sub1("sgren_ramp", "g_sithtroop004", "g_darkjedi002", "");
				break;
			case 2:
				sub1("g_sithcomm002", "g_darkjedi002", "sgren_ramp", "");
				break;
			case 3:
				sub1("sgren_ramp", "g_darkjedi002", "g_sithtroop004", "");
				break;
		}
		SetGlobalNumber("410DXN_Ramp_Spawns", (nGlobal + 1));
		SetLocalBoolean(OBJECT_SELF, 40, 1);
	}
}