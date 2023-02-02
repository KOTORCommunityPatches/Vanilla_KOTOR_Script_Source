void main() {
	object oNearestAirlockOuterDoor_105PER = GetNearestObjectByTag("AirlockOuterDoor_105PER", OBJECT_SELF, 1);
	if (GetIsOpen(oNearestAirlockOuterDoor_105PER)) {
		AssignCommand(oNearestAirlockOuterDoor_105PER, ActionCloseDoor(oNearestAirlockOuterDoor_105PER));
	}
	ActionOpenDoor(OBJECT_SELF);
}
