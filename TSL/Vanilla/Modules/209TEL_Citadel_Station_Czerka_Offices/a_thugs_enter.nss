void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalNumber("201TEL_Thugs", 1);
		string string1 = "g_201thug";
		CreateObject(1, string1, GetLocation(GetWaypointByTag("WP_THUG1")), 0);
		string1 = "g_201thug2";
		CreateObject(1, string1, GetLocation(GetWaypointByTag("WP_THUG2")), 0);
		string1 = "g_201thug";
		CreateObject(1, string1, GetLocation(GetWaypointByTag("WP_THUG3")), 0);
		string1 = "g_201thug2";
		CreateObject(1, string1, GetLocation(GetWaypointByTag("WP_THUG4")), 0);
		string1 = "g_201thug";
		CreateObject(1, string1, GetLocation(GetWaypointByTag("WP_THUG5")), 0);
	}
	if ((nParam1 == 2)) {
		SetGlobalNumber("201TEL_Thugs", 8);
		SetGlobalNumber("203TEL_Habat", 3);
		AssignCommand(GetPCSpeaker(), ActionForceMoveToObject(GetObjectByTag("WP_THUG3", 0), 0, 1.0, 30.0));
		AssignCommand(GetObjectByTag("DrdIth", 0), ActionForceMoveToObject(GetObjectByTag("WP_THUG3", 0), 0, 1.0, 30.0));
		DelayCommand(2.0, StartNewModule("203TEL", "FROM_201TEL_ITHM1", "", "", "", "", "", ""));
	}
}
