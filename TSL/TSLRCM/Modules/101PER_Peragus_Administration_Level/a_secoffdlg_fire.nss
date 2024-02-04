void main() {
	object oN_commf003 = GetObjectByTag("SecOff", 0);
	if ((GetIsObjectValid(oN_commf003) == 0)) {
		object oWP_MEDOFF = GetObjectByTag("WP_MEDOFF", 0);
		oN_commf003 = CreateObject(1, "n_commf003", GetLocation(oWP_MEDOFF), 0);
	}
	if (GetIsObjectValid(oN_commf003)) {
		object oMainof = GetObjectByTag("mainof", 0);
		if (GetIsObjectValid(oMainof)) {
			AssignCommand(oN_commf003, ClearAllActions());
			AssignCommand(oN_commf003, ActionStartConversation(GetFirstPC(), "secoff", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			AurPostString("No Maint Officer", 5, 15, 10.0);
		}
	}
	else {
		AurPostString("No Sec Officer", 5, 14, 10.0);
	}
}