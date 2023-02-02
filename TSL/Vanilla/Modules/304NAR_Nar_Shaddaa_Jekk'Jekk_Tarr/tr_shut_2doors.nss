void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() == oPC)) {
		object oNearestNarShaddaaDoor01 = GetNearestObjectByTag("NarShaddaaDoor01", OBJECT_SELF, 1);
		AssignCommand(oNearestNarShaddaaDoor01, ActionCloseDoor(oNearestNarShaddaaDoor01));
		oNearestNarShaddaaDoor01 = GetNearestObjectByTag("NarShaddaaDoor01", OBJECT_SELF, 2);
		AssignCommand(oNearestNarShaddaaDoor01, ActionCloseDoor(oNearestNarShaddaaDoor01));
	}
}
