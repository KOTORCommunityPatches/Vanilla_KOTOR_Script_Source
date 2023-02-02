void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 55)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 55, 1);
	object oWp_3rd_pc = GetObjectByTag("wp_3rd_pc", 0);
	AssignCommand(oEntering, ClearAllActions());
	DelayCommand(0.2, AssignCommand(oEntering, ActionForceMoveToObject(oWp_3rd_pc, 0, 1.0, 30.0)));
	SetMinOneHP(oEntering, 1);
	AssignCommand(GetObjectByTag("KreiaEvil", 0), ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	int int3 = 0;
	object o711_last_door = GetObjectByTag("711_last_door", int3);
	while (GetIsObjectValid(o711_last_door)) {
		AssignCommand(o711_last_door, ActionCloseDoor(o711_last_door));
		SetLocked(o711_last_door, 1);
		(int3++);
		o711_last_door = GetObjectByTag("711_last_door", int3);
	}
	int int5 = 0;
	int3 = 0;
	while ((int3 < 12)) {
		if ((GetNPCSelectability(int3) >= 0)) {
			(int5++);
		}
		(int3++);
	}
	SetGlobalNumber("711KOR_Party_Count", (int5 - 1));
	SetGlobalNumber("711KOR_Vision_Track", 5);
	AurPostString(IntToString((int5 - 1)), 5, 5, 10.0);
}
