void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if (GetLocalBoolean(OBJECT_SELF, 36)) {
			SetLocalBoolean(GetObjectByTag("203_batono", 0), 30, 0);
			SetLocalBoolean(OBJECT_SELF, 36, 0);
			AssignCommand(GetObjectByTag("merc1_batono", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("merc1_batono", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
