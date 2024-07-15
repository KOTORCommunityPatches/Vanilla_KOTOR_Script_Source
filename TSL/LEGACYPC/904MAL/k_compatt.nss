void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		object oKreia = GetObjectByTag("Kreia", 0);
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		DelayCommand(0.4, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_kreia_player", 0), 0, 1.0)));
		AssignCommand(oKreia, ClearAllActions());
		AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "904Kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

