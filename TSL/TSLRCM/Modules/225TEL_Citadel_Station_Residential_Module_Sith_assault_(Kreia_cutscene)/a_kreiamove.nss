void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
	vector struct2 = Vector((-57.26134), (-28.56334), (-0.0));
	location location1 = Location(struct2, 295.04584);
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oKreia, ActionMoveToLocation(location1, 0));
}