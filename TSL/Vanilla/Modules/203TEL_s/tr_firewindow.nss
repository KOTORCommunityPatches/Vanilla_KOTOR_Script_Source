void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		object oTr_window = GetObjectByTag("tr_window", 0);
		if (GetIsObjectValid(oTr_window)) {
			if ((GetGender(GetFirstPC()) == 0)) {
				return;
			}
			else {
				if (GetLocalBoolean(oTr_window, 30)) {
					return;
				}
				else {
					SetLocalBoolean(oTr_window, 30, 1);
					object oPC = GetFirstPC();
					object oAtton = GetObjectByTag("Atton", 0);
					AssignCommand(oPC, ClearAllActions());
					AssignCommand(oAtton, ClearAllActions());
					AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_playerwindow", 0), 1));
					AssignCommand(oAtton, ActionStartConversation(oPC, "203atton", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
			}
		}
	}
}

