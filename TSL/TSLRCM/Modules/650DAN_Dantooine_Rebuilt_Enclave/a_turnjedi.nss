void main() {
	AssignCommand(GetObjectByTag("Vrook", 0), SetFacingPoint(GetPosition(GetObjectByTag("Council", 0))));
	AssignCommand(GetObjectByTag("Kavar", 0), SetFacingPoint(GetPosition(GetObjectByTag("Council", 0))));
	AssignCommand(GetObjectByTag("ZezKaiEll", 0), SetFacingPoint(GetPosition(GetObjectByTag("Council", 0))));
}