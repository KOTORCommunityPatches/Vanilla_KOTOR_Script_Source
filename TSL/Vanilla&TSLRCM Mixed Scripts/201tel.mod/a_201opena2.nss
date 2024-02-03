void main() {
	object oAirlock2 = GetObjectByTag("Airlock2", 0);
	AssignCommand(oAirlock2, ActionOpenDoor(oAirlock2));
	SetLocalBoolean(GetObjectByTag("TermAirlock2", 0), 30, 0);
}

