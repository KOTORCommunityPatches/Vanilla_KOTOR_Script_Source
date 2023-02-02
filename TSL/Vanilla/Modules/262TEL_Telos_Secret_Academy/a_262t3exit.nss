void main() {
	AurPostString("a_262t3exit: t3 wheels out", 5, 6, 5.0);
	object oT3M4 = GetObjectByTag("T3M4", 0);
	AssignCommand(oT3M4, ActionMoveToObject(GetObjectByTag("T3_JUMP", 0), 0, 1.0));
}
