// Byte code does not match

void main() {
	object object1 = GetItemPossessedBy(GetFirstPC(), "spacesuit");
	if ((!GetIsObjectValid(object1))) {
		BarkString(OBJECT_SELF, 48577);
		return;
	}
	object oNearestAirlockInnerDoor_103PER = GetNearestObjectByTag("AirlockInnerDoor_103PER", OBJECT_SELF, 1);
	ActionOpenDoor(OBJECT_SELF);
	AssignCommand(oNearestAirlockInnerDoor_103PER, ActionCloseDoor(oNearestAirlockInnerDoor_103PER));
}

