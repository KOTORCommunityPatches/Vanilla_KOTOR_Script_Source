void main() {
	int nParam1 = GetScriptParameter(1);
	string string1;
	if ((nParam1 == 1)) {
		AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("WP_PC"), 0, 1.0));
	}
	else {
		if ((nParam1 == 2)) {
			object o231_D_SentryCut = GetObjectByTag("231_D_SentryCut", 0);
			DelayCommand(1.0, AssignCommand(o231_D_SentryCut, ActionMoveToObject(GetWaypointByTag("WP_Sentry"), 1, 1.0)));
		}
		else {
			if ((nParam1 == 3)) {
				AssignCommand(GetObjectByTag("BaoDur", 0), ActionMoveToObject(GetWaypointByTag("WP_PC"), 1, 1.0));
			}
		}
	}
}

