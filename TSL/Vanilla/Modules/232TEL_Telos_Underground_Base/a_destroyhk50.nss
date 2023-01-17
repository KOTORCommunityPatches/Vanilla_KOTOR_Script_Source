void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((GetTag(oEntering) == "drd_hk50")) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		SetLocalBoolean(oEntering, 32, 1);
		object oPC = GetFirstPC();
		AssignCommand(oEntering, ClearAllActions());
		AssignCommand(oPC, ClearAllActions());
		DelayCommand(1.0, AssignCommand(oEntering, ActionStartConversation(oPC, "hk50die", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}

