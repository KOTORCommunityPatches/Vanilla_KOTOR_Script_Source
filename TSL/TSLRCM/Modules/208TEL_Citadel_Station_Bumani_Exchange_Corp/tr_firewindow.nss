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
					AssignCommand(GetFirstPC(), ClearAllActions());
					AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_playerwindow", 0), 1));
					AssignCommand(GetObjectByTag("atton", 0), ActionStartConversation(GetFirstPC(), "203atton", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
			}
		}
	}
}