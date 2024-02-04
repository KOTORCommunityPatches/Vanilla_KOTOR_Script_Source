void main() {
	SetLocked(GetObjectByTag("SealedDoor", 0), 1);
	DelayCommand(1.5, DestroyObject(GetObjectByTag("UBH305ALARM1", 0), 0.0, 0, 0.0, 0));
	DelayCommand(1.5, DestroyObject(GetObjectByTag("UBH305ALARM2", 0), 0.0, 0, 0.0, 0));
	DelayCommand(1.5, DestroyObject(GetObjectByTag("UBH305ALARM3", 0), 0.0, 0, 0.0, 0));
	DelayCommand(1.5, DestroyObject(GetObjectByTag("UBH305ALARM4", 0), 0.0, 0, 0.0, 0));
	DelayCommand(1.5, DestroyObject(GetObjectByTag("UBH305ALARM5", 0), 0.0, 0, 0.0, 0));
	CreateObject(1, "g_darkjedi002", GetLocation(GetWaypointByTag("WP_UBH_ALARM_3_1")), 0);
	CreateObject(1, "g_darkjedi002", GetLocation(GetWaypointByTag("WP_UBH_ALARM_4_1")), 0);
	CreateObject(1, "g_darkjedi002", GetLocation(GetWaypointByTag("WP_UBH_ALARM_5_1")), 0);
	DelayCommand(1.0, AssignCommand(OBJECT_SELF, ClearAllActions()));
	DelayCommand(1.0, AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "mapon", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}