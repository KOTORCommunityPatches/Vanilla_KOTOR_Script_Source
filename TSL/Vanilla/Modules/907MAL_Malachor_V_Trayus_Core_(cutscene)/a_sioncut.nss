void main() {
	int nParam1 = GetScriptParameter(1);
	object oDarthSion = GetObjectByTag("DarthSion", 0);
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(2.0, 2.0, 0.0, 0.0, 0.0);
			SetLockOrientationInDialog(oDarthSion, 1);
			AssignCommand(oDarthSion, SetFacing(90.0));
			AssignCommand(oDarthSion, ActionPlayAnimation(35, 1.0, 100.0));
			DelayCommand(8.0, SetDialogPlaceableCamera(25));
			break;
		case 1:
			{
				object oSithAssassin = GetObjectByTag("SithAssassin", 0);
				object oSithAssassin2 = GetObjectByTag("SithAssassin2", 0);
				DelayCommand(7.0, AssignCommand(oSithAssassin, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_nihilus_start", 0)), 0)));
				DelayCommand(7.0, AssignCommand(oSithAssassin2, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sion_start", 0)), 0)));
				DelayCommand(5.0, DestroyObject(GetObjectByTag("hologram", 0), 0.0, 0, 0.0, 0));
				DelayCommand(4.0, SetDialogPlaceableCamera(30));
			}
			break;
		case 2:
			AssignCommand(oDarthSion, ClearAllActions());
			AssignCommand(oDarthSion, ActionPlayAnimation(19, 1.0, 1.0));
			DelayCommand(2.0, AssignCommand(oDarthSion, ActionMoveToObject(GetObjectByTag("wp_sion_move2", 0), 0, 1.0)));
			DelayCommand(3.0, SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0));
			DelayCommand(1.0, SetDialogPlaceableCamera(29));
			break;
		case 3:
			ExecuteScript("a_cleanup", OBJECT_SELF, 0xFFFFFFFF);
			StartNewModule("000test", "", "", "", "", "", "", "");
			break;
	}
}
