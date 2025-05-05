// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	object oKreia = GetObjectByTag("KreiaEvil", 0);
	object oSion = GetObjectByTag("DarthSion", 0);
	int nParam = GetScriptParameter(1);
	
	switch(nParam)
		{
			case 0:
				{
					SetGlobalFadeIn(1.0, 2.0);
					
					object oWP_Kreia = GetWaypointByTag("wp_kreia_start");
					location lKreia = Location(Vector(-0.000700, -1.515020, 2.257900), GetFacingFromLocation(GetLocation(oWP_Kreia)));
					
					AssignCommand(oSion, ClearAllActions());
					SetLightsaberPowered(oSion, TRUE, FALSE, TRUE);
					AssignCommand(oSion, ActionMoveToLocation(lKreia));
					SetLockOrientationInDialog(oKreia, TRUE);
					SetLockOrientationInDialog(oSion, TRUE);
				}
				break;
			case 1:
				{
					SetLockOrientationInDialog(oKreia, FALSE);
					AssignCommand(oKreia, SetFacingPoint(GetPosition(oSion)));
				}
				break;
			case 2:
				{
					DelayCommand(2.0, AssignCommand(oKreia, ClearAllActions()));
					DelayCommand(2.0, AssignCommand(oKreia, ActionPlayAnimation(10563))); // Anim #10563 = Raise_Arm_To_Point
					DelayCommand(2.3, AssignCommand(oKreia, ActionDoCommand(ActionPlayAnimation(10469, 1.0, 4.0)))); // Anim #10469 = Point_Forward
					DelayCommand(5.0, AssignCommand(oKreia, ActionPlayAnimation(10470, 0.5))); // Anim #10470 = Raise_Arm_Point_Down_Lower_Arm
				}
				break;
			case 3:
				{
					DelayCommand(1.0, AssignCommand(oKreia, ClearAllActions()));
					DelayCommand(1.0, AssignCommand(oKreia, ActionDoCommand(SetFacing(180.0))));
				}
				break;
			case 4:
				{
					SetGlobalFadeOut(0.1, 2.0);
					DestroyObject(GetObjectByTag("KreiaEvil", 0));
					DelayCommand(2.1, StartNewModule("901MAL"));
				}
				break;
		}
}