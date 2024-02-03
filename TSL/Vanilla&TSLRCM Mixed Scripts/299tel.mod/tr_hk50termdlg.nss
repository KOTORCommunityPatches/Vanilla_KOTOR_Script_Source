void main() {
	object oSec_terminal50 = GetObjectByTag("sec_terminal50", 0);
	AssignCommand(oSec_terminal50, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

