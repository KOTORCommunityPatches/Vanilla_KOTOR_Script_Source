void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		AurPostString("Creating ZTHUGS", 5, 17, 10.0);
		object oWP_AZHUG1 = GetObjectByTag("WP_AZHUG1", 0);
		object oWP_ZHUG1 = GetObjectByTag("WP_ZHUG1", 0);
		object oWP_ZHUG2 = GetObjectByTag("WP_ZHUG2", 0);
		CreateObject(1, "n_azanti001", GetLocation(oWP_AZHUG1), 0);
		CreateObject(1, "n_zhug002", GetLocation(oWP_ZHUG1), 0);
		CreateObject(1, "n_zhug003", GetLocation(oWP_ZHUG2), 0);
	}
	else {
		if ((nParam1 == 1)) {
			object oAzanti = GetObjectByTag("azanti", 0);
			object oZthug1 = GetObjectByTag("zthug1", 0);
			object oZthug2 = GetObjectByTag("zthug2", 0);
			object oWP_AZHUG1_2 = GetObjectByTag("WP_AZHUG1_2", 0);
			object oWP_ZHUG1_2 = GetObjectByTag("WP_ZHUG1_2", 0);
			object oWP_ZHUG2_2 = GetObjectByTag("WP_ZHUG2_2", 0);
			AurPostString("Moving ZHUGS", 5, 18, 10.0);
			AssignCommand(oAzanti, ClearAllActions());
			AssignCommand(oZthug1, ClearAllActions());
			AssignCommand(oZthug2, ClearAllActions());
			AssignCommand(oAzanti, ActionMoveToObject(oWP_AZHUG1_2, 0, 1.0));
			AssignCommand(oZthug1, ActionMoveToObject(oWP_ZHUG1_2, 0, 1.0));
			AssignCommand(oZthug2, ActionMoveToObject(oWP_ZHUG2_2, 0, 1.0));
		}
	}
}

