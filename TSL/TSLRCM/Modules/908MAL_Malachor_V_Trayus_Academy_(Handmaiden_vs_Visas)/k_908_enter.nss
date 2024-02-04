void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	object object4 = SpawnAvailableNPC(9, Location(Vector(2.31878, 72.36436, 3.0), 117.16985));
	SpawnAvailableNPC(4, Location(Vector((-5.66932), 81.17487, 3.0), 168.74237));
	AssignCommand(object4, ActionStartConversation(oEntering, "903hand", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}