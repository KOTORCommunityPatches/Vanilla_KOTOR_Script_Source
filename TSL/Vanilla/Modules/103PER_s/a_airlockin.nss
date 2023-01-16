void main() {
	object oNearestAirlockOuterDoor_103PER = GetNearestObjectByTag("AirlockOuterDoor_103PER", OBJECT_SELF, 1);
	if (GetIsOpen(oNearestAirlockOuterDoor_103PER)) {
		AssignCommand(oNearestAirlockOuterDoor_103PER, ActionCloseDoor(oNearestAirlockOuterDoor_103PER));
	}
	ActionOpenDoor(OBJECT_SELF);
}

