void main() {
	object oHint_Cache = GetObjectByTag("Hint_Cache", 0);
	object object3 = GetObjectByTag("Hint_Cache", 1);
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetEnteringObject() == GetPartyLeader())) {
		if ((((IsNPCPartyMember(0) == 1) && (!GetLocalBoolean(oHint_Cache, 30))) && (!GetLocalBoolean(object3, 30)))) {
			SetLocalBoolean(OBJECT_SELF, 30, 1);
			SetGlobalNumber("231TEL_Atton", 1);
			object oAtton = GetObjectByTag("Atton", 0);
			AssignCommand(oAtton, ClearAllActions());
			AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "231atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			return;
		}
		if ((IsNPCPartyMember(1) == 1)) {
			SetLocalBoolean(OBJECT_SELF, 30, 1);
			SetGlobalNumber("231TEL_Atton", 1);
			object oBaoDur = GetObjectByTag("BaoDur", 0);
			AssignCommand(oBaoDur, ClearAllActions());
			AssignCommand(oBaoDur, ActionStartConversation(GetFirstPC(), "231bdur", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

