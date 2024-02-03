void main() {
	object oSec_term = GetObjectByTag("sec_term", 0);
	object oHk51_1 = GetObjectByTag("hk51_1", 10);
	if ((GetGlobalNumber("299TEL_Mission_Over") >= 1)) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		AssignCommand(oSec_term, ActionStartConversation(oSec_term, "shutdown", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

