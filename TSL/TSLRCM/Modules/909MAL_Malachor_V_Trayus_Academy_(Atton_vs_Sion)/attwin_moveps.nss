void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	object oAtton = GetObjectByTag("Atton", 0);
	AssignCommand(oAtton, ActionJumpToLocation(Location(Vector(9.13631, 40.05455, 3.0), 90.14269)));
}