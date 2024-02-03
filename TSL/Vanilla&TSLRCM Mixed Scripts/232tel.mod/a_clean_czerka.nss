void main() {
	object oSalvage = GetObjectByTag("salvage", 0);
	object oFrom_233TEL = GetWaypointByTag("From_233TEL");
	AssignCommand(GetObjectByTag("salvage", 0), ActionMoveToObject(oFrom_233TEL, 1, 1.5));
	if (GetIsObjectValid(oSalvage)) {
		DelayCommand(2.0, DestroyObject(oSalvage, 0.5, 0, 0.0, 0));
	}
}

