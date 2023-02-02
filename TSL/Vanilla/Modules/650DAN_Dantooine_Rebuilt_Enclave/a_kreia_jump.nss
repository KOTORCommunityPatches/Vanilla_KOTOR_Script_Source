void main() {
	AssignCommand(GetObjectByTag("Kreia", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("Kreia", 0), ActionJumpToObject(GetWaypointByTag("WP_KREIA_JEDI_JUMP"), 0));
}
