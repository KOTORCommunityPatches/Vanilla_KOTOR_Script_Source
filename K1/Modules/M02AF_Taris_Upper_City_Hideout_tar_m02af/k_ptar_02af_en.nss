void main() {
	object oTar02_aptdoor = GetObjectByTag("tar02_aptdoor", 0);
	AssignCommand(oTar02_aptdoor, ActionCloseDoor(oTar02_aptdoor));
	RevealMap(GetPosition(GetFirstPC()), 0xFFFFFFFF);
}
