void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 55)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 55, 1);
	int int3 = 0;
	int3 = 0;
	while ((int3 < 3)) {
		{
			object oSionDoor = GetObjectByTag("SionDoor", int3);
			AssignCommand(oSionDoor, ActionCloseDoor(oSionDoor));
			SetLocked(oSionDoor, 1);
		}
		(int3++);
	}
	object oN_darthsion002 = CreateObject(1, "n_darthsion002", GetLocation(GetObjectByTag("sp_sion", 0)), 0);
	AssignCommand(oN_darthsion002, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}