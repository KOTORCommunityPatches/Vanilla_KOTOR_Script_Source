// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	CreateObject(1, "g_sithass002", GetLocation(objectParam1), 0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oKreiaEvil = GetObjectByTag("KreiaEvil", 0);
	object oDarthSion = GetObjectByTag("DarthSion", 0);
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(0.8, 2.0, 0.0, 0.0, 0.0);
			SetLockOrientationInDialog(oKreiaEvil, 1);
			AssignCommand(oKreiaEvil, ActionMoveToLocation(GetLocation(GetWaypointByTag("wp_kreia2")), 0));
			SetLockOrientationInDialog(oDarthSion, 1);
			AssignCommand(oDarthSion, SetFacing(90.0));
			AssignCommand(oDarthSion, ActionPlayAnimation(35, 1.0, 100.0));
			break;
		case 1:
			{
				int int3 = 0;
				int3 = 0;
				while ((int3 < 7)) {
				{
					object oWP = GetWaypointByTag(("sp_sith" + IntToString((int3 + 3))));
					DelayCommand(((IntToFloat(int3) / 2.5) + 1.5), sub1(oWP));
				}
					(int3++);
				}
			}
			break;
		case 2:
			DelayCommand(3.0, SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0));
			break;
		case 3:
			{
				int int4 = 0;
				int4 = 0;
				while ((int4 < 7)) {
					DelayCommand((IntToFloat(int4) / 2.4), ApplyEffectToObject(2, EffectDeath(1, 0, 1), GetObjectByTag("SithAssassin", int4), 0.0));
					(int4++);
				}
			}
			break;
		case 4:
			DelayCommand(3.0, AssignCommand(oKreiaEvil, ActionMoveToObject(GetWaypointByTag("wp_kreia3"), 0, 1.0)));
			SetGlobalFadeIn(0.1, 0.1, 0.0, 0.0, 0.0);
			DelayCommand(5.0, SetDialogPlaceableCamera(32));
			DelayCommand(8.0, SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0));
			DelayCommand(11.0, SetGlobalFadeIn(0.3, 2.0, 0.0, 0.0, 0.0));
			break;
		case 5:
			{
				object oSp_kreia = GetObjectByTag("sp_kreia", 0);
				AssignCommand(oKreiaEvil, ClearAllActions());
				AssignCommand(oKreiaEvil, ActionJumpToLocation(GetLocation(oSp_kreia)));
				AssignCommand(oKreiaEvil, ActionMoveToLocation(GetLocation(GetWaypointByTag("wp_kreia_start")), 0));
			}
			break;
		case 6:
			AssignCommand(oDarthSion, ClearAllActions());
			AssignCommand(oDarthSion, ActionPlayAnimation(19, 1.0, 1.0));
			DelayCommand(1.0, AssignCommand(oDarthSion, ActionDoCommand(SetFacing(270.0))));
			break;
		case 7:
			SetGlobalFadeOut(1.0, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(3.0, ExecuteScript("a_cleanup", OBJECT_SELF, 0xFFFFFFFF));
			DelayCommand(3.0, StartNewModule("901MAL", "", "", "", "", "", "", ""));
			break;
	}
}

