void main() {
	if ((((GetLastOpenedBy() == GetPartyLeader()) && (GetGlobalNumber("302NAR_Serroco") < 2)) && (!GetLocalBoolean(OBJECT_SELF, 35)))) {
		SetLocalBoolean(OBJECT_SELF, 35, 1);
		AssignCommand(GetNearestObjectByTag("SerrocoThug1", OBJECT_SELF, 1), ClearAllActions());
		AssignCommand(GetNearestObjectByTag("SerrocoThug1", OBJECT_SELF, 1), ActionStartConversation(GetFirstPC(), "serthug2", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}