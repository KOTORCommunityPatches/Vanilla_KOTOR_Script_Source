void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("B4R5", 0), 0, 2.0));
	}
	else {
		if ((nParam1 == 2)) {
			CreateObject(1, "303_hk50", GetLocation(GetObjectByTag("wp_hk501_sp", 0)), 0);
			CreateObject(1, "303_hk50", GetLocation(GetObjectByTag("wp_hk502_sp", 0)), 0);
			CreateObject(1, "303_hk50", GetLocation(GetObjectByTag("wp_hk503_sp", 0)), 0);
		}
	}
}