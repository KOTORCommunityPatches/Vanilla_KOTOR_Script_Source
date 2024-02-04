void main() {
	SetGlobalFadeOut(0.1, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.1, SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0));
	DelayCommand(1.1, SetDialogPlaceableCamera(9));
	object oPC = GetFirstPC();
	object object3 = GetNextPC();
	object object5 = GetNextPC();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(object3, ClearAllActions());
	AssignCommand(object5, ClearAllActions());
	DelayCommand(1.1, AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("From_403DXN", 0), 1)));
	DelayCommand(1.1, AssignCommand(object3, ActionJumpToObject(GetObjectByTag("sp_cnpc2", 0), 1)));
	DelayCommand(1.1, AssignCommand(object5, ActionJumpToObject(GetObjectByTag("sp_cnpc3", 0), 1)));
}