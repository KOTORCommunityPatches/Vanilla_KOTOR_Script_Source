void main() {
	object oP_baodur001 = CreateObject(1, "p_baodur001", GetLocation(GetWaypointByTag("wp_baodur_end")), 0);
	AssignCommand(oP_baodur001, ClearAllActions());
	AssignCommand(oP_baodur001, ActionStartConversation(GetPartyLeader(), "sensorfi", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
