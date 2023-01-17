void main() {
	int nParam1 = GetScriptParameter(1);
	SetGlobalNumber("301NAR_Droid_Quest", nParam1);
	object oIT31 = GetObjectByTag("IT31", 0);
	SetOrientOnClick(oIT31, 0);
	DelayCommand(0.1, AssignCommand(oIT31, ClearAllActions()));
	DelayCommand(0.2, AssignCommand(oIT31, PlayAnimation(20, 1.0, (-1.0))));
}

