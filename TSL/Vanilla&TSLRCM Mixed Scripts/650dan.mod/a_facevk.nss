struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oPC = GetFirstPC();
	ActionPauseConversation();
	object oVrook = GetObjectByTag("Vrook", 0);
	SetLockOrientationInDialog(oPC, 1);
	AssignCommand(oPC, DelayCommand(0.3, SetFacingPoint(GetPosition(oVrook))));
	DelayCommand(2.6, ActionResumeConversation());
}

