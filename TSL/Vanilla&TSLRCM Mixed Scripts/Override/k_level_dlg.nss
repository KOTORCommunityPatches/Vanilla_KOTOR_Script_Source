void main() {
	if ((GetModuleName() == "101PER")) {
		AurPostString("k_level_dlg: Teach PC to Level...", 5, 5, 6.0);
		object oKreia = GetObjectByTag("kreia", 0);
		if (GetIsObjectValid(oKreia)) {
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "000level", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

