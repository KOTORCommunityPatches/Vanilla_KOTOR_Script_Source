void main() {
	effect efDeath = EffectDeath(0, 0, 1);
	DelayCommand(0.5, ApplyEffectToObject(2, efDeath, GetObjectByTag("Visquis", 0), 0.0));
	CreateObject(1, "g_darkjedi011", GetLocation(GetWaypointByTag("WP_UBH_END_1_0")), 0);
	CreateObject(1, "g_darkjedi011", GetLocation(GetWaypointByTag("WP_UBH_END_2_0")), 0);
	CreateObject(1, "g_darkjedi011", GetLocation(GetWaypointByTag("WP_UBH_END_3_0")), 0);
	CreateObject(1, "g_darkjedi011", GetLocation(GetWaypointByTag("WP_UBH_END_4_0")), 0);
	CreateObject(1, "g_darkjedi011", GetLocation(GetWaypointByTag("WP_UBH_END_5_0")), 0);
	object oUBH305Alarm1 = GetObjectByTag("UBH305Alarm1", 0);
	object oUBH305Alarm2 = GetObjectByTag("UBH305Alarm2", 0);
	object oUBH305Alarm3 = GetObjectByTag("UBH305Alarm3", 0);
	object oUBH305Alarm4 = GetObjectByTag("UBH305Alarm4", 0);
	object oUBH305Alarm5 = GetObjectByTag("UBH305Alarm5", 0);
	object oUBH305Alarm6 = GetObjectByTag("UBH305Alarm6", 0);
	DestroyObject(oUBH305Alarm1, 0.0, 0, 0.0, 0);
	DestroyObject(oUBH305Alarm2, 0.0, 0, 0.0, 0);
	DestroyObject(oUBH305Alarm3, 0.0, 0, 0.0, 0);
	DestroyObject(oUBH305Alarm4, 0.0, 0, 0.0, 0);
	DestroyObject(oUBH305Alarm5, 0.0, 0, 0.0, 0);
	DestroyObject(oUBH305Alarm6, 0.0, 0, 0.0, 0);
	object oKHoundA1 = GetObjectByTag("KHoundA1", 0);
	object oKHoundA2 = GetObjectByTag("KHoundA2", 0);
	object oKHoundA3 = GetObjectByTag("KHoundA3", 0);
	DestroyObject(oKHoundA1, 0.0, 0, 0.0, 0);
	DestroyObject(oKHoundA2, 0.0, 0, 0.0, 0);
	DestroyObject(oKHoundA3, 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("KHoundA", 2), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("KHoundA", 1), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("KHoundA", 0), 0.0, 0, 0.0, 0);
	int int1 = 0;
	string string1 = "g_darkjedi002";
	object object33 = GetObjectByTag(string1, int1);
	while ((object33 != OBJECT_INVALID)) {
		DestroyObject(object33, 0.1, 0, 0.0, 0);
		(int1++);
		object33 = GetObjectByTag(string1, int1);
	}
}
