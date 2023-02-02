void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	object oLift_to_001 = GetObjectByTag("lift_to_001", 0);
	if ((!GetLocalBoolean(oLift_to_001, 30))) {
		SetLocalBoolean(oLift_to_001, 30, 1);
		RevealMap([0.0,0.0,0.0], 0xFFFFFFFF);
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetGlobalFadeIn(1.5, 0.0, 0.0, 0.0, 0.0);
		object oT3M4 = GetObjectByTag("T3M4", 0);
		object o3CFD = GetObjectByTag("3CFD", 0);
		AssignCommand(oLift_to_001, ActionStartConversation(GetFirstPC(), "enter", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
