void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	object oAreaObject = GetFirstObjectInArea(GetArea(OBJECT_SELF), 1);
	while ((oAreaObject != OBJECT_INVALID)) {
		if ((GetTag(oAreaObject) == "Azanti")) {
			AssignCommand(oAreaObject, ActionAttack(oEntering, 0));
		}
		oAreaObject = GetNextObjectInArea(GetArea(OBJECT_SELF), 1);
	}
}

