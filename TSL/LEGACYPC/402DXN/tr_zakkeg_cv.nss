void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 55)) {
		return;
	}
	if (GetSpellAcquired(178, oEntering)) {
		object oZakkeg = GetObjectByTag("zakkeg", 0);
		ChangeToStandardFaction(oZakkeg, 5);
		AssignCommand(oZakkeg, ClearAllActions());
		AssignCommand(oZakkeg, ActionJumpToObject(GetWaypointByTag("wp_zakkeg"), 1));
		DelayCommand(5.0, ChangeToStandardFaction(oZakkeg, 1));
		AssignCommand(oEntering, ActionStartConversation(OBJECT_SELF, "zakcv", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	SetLocalBoolean(OBJECT_SELF, 55, 1);
}

