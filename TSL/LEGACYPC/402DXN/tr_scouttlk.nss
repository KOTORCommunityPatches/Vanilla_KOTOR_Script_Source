void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (((GetGlobalNumber("402DXN_ScoutHunt") == 0) || (GetGlobalNumber("402DXN_FirstScout") == 1))) {
		return;
	}
	object oNpc_scout1;
	object oWp_om_scout2spwn = GetWaypointByTag("wp_om_scout1spwn");
	oNpc_scout1 = CreateObject(1, "npc_scout1", GetLocation(oWp_om_scout2spwn), 0);
	oWp_om_scout2spwn = GetWaypointByTag("wp_om_scout2spwn");
	CreateObject(1, "npc_scout2", GetLocation(oWp_om_scout2spwn), 0);
	if ((!GetIsObjectValid(oNpc_scout1))) {
		return;
	}
	AssignCommand(oNpc_scout1, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetGlobalNumber("402DXN_FirstScout", 1);
	SetGlobalNumber("402DXN_ScoutHunt", (GetGlobalNumber("402DXN_ScoutHunt") + 1));
}

