void main() {
	SetLocalBoolean(OBJECT_SELF, 50, 1);
	AssignCommand(OBJECT_SELF, ClearAllEffects());
	AssignCommand(OBJECT_SELF, ClearAllActions());
}
