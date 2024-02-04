void main() {
	object object1 = OBJECT_SELF;
	AssignCommand(object1, ActionUnlockObject(object1));
	AssignCommand(object1, ActionOpenDoor(object1));
}