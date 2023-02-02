void main() {
	object oAtton = GetObjectByTag("Atton", 0);
	object oWP_ATTONCAGE = GetWaypointByTag("WP_ATTONCAGE");
	location location1 = GetLocation(oWP_ATTONCAGE);
	int int1;
	if ((GetGlobalNumber("101PER_Know_Adm_Code") == 0)) {
		ClearAllActions();
		DelayCommand(0.2, AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "101Atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	else {
		0;
	}
}
