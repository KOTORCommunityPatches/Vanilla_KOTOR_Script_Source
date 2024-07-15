void main() {
	object oEntering = GetEnteringObject();
	object oFakepc = GetObjectByTag("fakepc", 0);
	object oFakechamp = GetObjectByTag("fakechamp", 0);
	object oPC = GetFirstPC();
	if ((oEntering != oPC)) {
		return;
	}
	if (GetIsObjectValid(GetObjectByTag("champ", 0))) {
		return;
	}
	else {
		object oDahnis = GetObjectByTag("Dahnis", 0);
		if (GetIsObjectValid(oDahnis)) {
			if (((GetLocalBoolean(oDahnis, 45) && GetLocalBoolean(oDahnis, 46)) && GetLocalBoolean(oDahnis, 47))) {
				AssignCommand(oFakechamp, ActionStartConversation(oFakepc, "champent", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
		}
	}
}

