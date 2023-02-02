void main() {
	object oFROM_302NAR = GetWaypointByTag("FROM_302NAR");
	object oRatrin = GetObjectByTag("Ratrin", 0);
	AssignCommand(oRatrin, ActionMoveToObject(oFROM_302NAR, 0, 1.0));
}
