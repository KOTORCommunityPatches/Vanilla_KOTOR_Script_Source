void main() {
	IncrementGlobalNumber("601DAN_Khoonda_Guns", 1);
	if ((GetGlobalNumber("601DAN_Khoonda_Guns") >= 3)) {
		SetGlobalNumber("602DAN_Turret_State", 4);
		AurPostString("All 3 turrets are now disabled.  Journal updated", 5, 20, 5.0);
		AddJournalQuestEntry("khoonda_guns", 92, 0);
	}
}