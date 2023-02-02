void main() {
	object oPrologue = GetObjectByTag("Prologue", 0);
	if ((!GetLocalBoolean(oPrologue, 60))) {
		SetLocalBoolean(oPrologue, 60, 1);
		AurPostString("Controls barkstring", 5, 10, 5.0);
		DelayCommand(0.5, AssignCommand(oPrologue, ActionStartConversation(GetFirstPC(), "controls", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
