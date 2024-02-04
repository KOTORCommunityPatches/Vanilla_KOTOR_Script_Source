void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	NoClicksFor(2.0);
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oKreia, ClearAllActions());
	object oP_handmaiden = GetObjectByTag("Handmaiden", 0);
	if ((!GetIsObjectValid(oP_handmaiden))) {
		if (IsAvailableCreature(4)) {
			oP_handmaiden = SpawnAvailableNPC(4, GetLocation(GetWaypointByTag("WP_PC_WALK_2")));
			SetNPCSelectability(4, 0);
		}
		else {
			oP_handmaiden = CreateObject(1, "p_handmaiden", GetLocation(GetWaypointByTag("WP_HAND_0")), 0);
			CreateObject(1, "p_sister", GetLocation(GetWaypointByTag("WP_SISTER1_0")), 0);
			CreateObject(1, "p_sister2", GetLocation(GetWaypointByTag("WP_SISTER2_0")), 0);
		}
	}
	SetLockOrientationInDialog(oP_handmaiden, 1);
	AssignCommand(oP_handmaiden, ClearAllActions());
	AssignCommand(oP_handmaiden, ActionStartConversation(GetPCSpeaker(), "krehand1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}