void main() {
	object oCzerkaM = GetObjectByTag("CzerkaM", 0);
	SetLocked(oCzerkaM, 0);
	AssignCommand(oCzerkaM, ActionOpenDoor(oCzerkaM));
}
