void main() {
	object oSalvage = GetObjectByTag("Salvage", 0);
	if ((GetEnteringObject() == oSalvage)) {
		if ((GetLocalBoolean(OBJECT_SELF, 34) == 0)) {
			SetLocalBoolean(OBJECT_SELF, 34, 1);
			ExecuteScript("a_local_resetall", oSalvage, 0xFFFFFFFF);
			SetLocalBoolean(oSalvage, 40, 1);
			AssignCommand(oSalvage, ClearAllActions());
			AssignCommand(oSalvage, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}