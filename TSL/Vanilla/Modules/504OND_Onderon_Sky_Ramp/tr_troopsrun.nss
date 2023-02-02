void main() {
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 50)) {
		return;
	}
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 50, 1);
	object oVaklu_GunnerCS = GetObjectByTag("Vaklu_GunnerCS", 0);
	object object5 = GetObjectByTag("Vaklu_GunnerCS", 1);
	AssignCommand(oVaklu_GunnerCS, ActionMoveToObject(GetObjectByTag("wp_guard1", 0), 1, 1.0));
	AssignCommand(object5, ActionMoveToObject(GetObjectByTag("wp_guard2", 0), 1, 1.0));
}
