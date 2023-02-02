void main() {
	object oFieldFuel = GetObjectByTag("FieldFuel", 0);
	AssignCommand(oFieldFuel, ActionOpenDoor(oFieldFuel));
}
