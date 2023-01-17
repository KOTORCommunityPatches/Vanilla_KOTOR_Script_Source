void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oC6E3 = GetObjectByTag("C6E3", 0);
		ChangeToStandardFaction(oC6E3, 2);
		DelayCommand(3.0, AssignCommand(GetObjectByTag("HK50", 1), CutsceneAttack(oC6E3, 239, 1, 50)));
	}
	else {
		if ((nParam1 == 2)) {
			AssignCommand(GetObjectByTag("HK50", 0), ActionMoveToObject(GetObjectByTag("wp_hk501_1", 0), 0, 1.0));
			AssignCommand(GetObjectByTag("HK50", 1), ActionMoveToObject(GetObjectByTag("wp_hk502_1", 0), 0, 1.0));
			AssignCommand(GetObjectByTag("HK50", 2), ActionMoveToObject(GetObjectByTag("wp_hk503_1", 0), 0, 1.0));
		}
		else {
			if ((nParam1 == 3)) {
				ChangeToStandardFaction(GetObjectByTag("HK50", 0), 1);
				ChangeToStandardFaction(GetObjectByTag("HK50", 1), 1);
				ChangeToStandardFaction(GetObjectByTag("HK50", 2), 1);
				CreateItemOnObject("hkpart02", GetObjectByTag("HK50", Random(3)), 1, 0);
			}
		}
	}
}

