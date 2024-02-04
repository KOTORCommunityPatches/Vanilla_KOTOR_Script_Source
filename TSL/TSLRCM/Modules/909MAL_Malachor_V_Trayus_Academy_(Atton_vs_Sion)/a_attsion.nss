void main() {
	int nParam1 = GetScriptParameter(1);
	object oAtton = GetObjectByTag("Atton", 0);
	object o909sion = GetObjectByTag("909sion", 0);
	int int3 = (GetMaxHitPoints(o909sion) - GetCurrentHitPoints(o909sion));
	switch (nParam1) {
		case 0:
			SetLockOrientationInDialog(oAtton, 1);
			AssignCommand(oAtton, ActionMoveToLocation(Location(Vector((-0.27188), 65.46544, 3.0), 180.0), 1));
			DelayCommand(0.6, AssignCommand(o909sion, ActionMoveToLocation(Location(Vector((-1.8054), 60.99373, 3.0), 90.0), 0)));
			DelayCommand(1.9, SetLightsaberPowered(o909sion, 1, 1, 1));
			DelayCommand(2.0, SetLightsaberPowered(oAtton, 1, 1, 1));
			break;
		case 1:
			AssignCommand(o909sion, SetFacingPoint(GetPosition(oAtton)));
			break;
		case 2:
			ChangeToStandardFaction(o909sion, 1);
			ExecuteScript("a_force_combat", o909sion, 0xFFFFFFFF);
			break;
		case 3:
			ActionPauseConversation();
			SetGlobalFadeOut(0.0, 4.0, 0.0, 0.0, 0.0);
			SetLockOrientationInDialog(oAtton, 1);
			DelayCommand(1.0, AssignCommand(o909sion, ActionPlayAnimation(41, 1.0, 4.5)));
			AssignCommand(oAtton, ActionMoveToLocation(Location(Vector(11.66956, 74.62974, 3.0), 89.24869), 1));
			DelayCommand(6.0, ActionResumeConversation());
			break;
		case 4:
			DelayCommand(0.8, ApplyEffectToObject(0, EffectResurrection(1), o909sion, 0.0));
			DelayCommand(1.0, ApplyEffectToObject(0, EffectHeal(int3), o909sion, 0.0));
			break;
		case 5:
			SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(0.8, SetFadeUntilScript());
			DelayCommand(2.1, StartNewModule("903MAL", "", "", "", "", "", "", ""));
			break;
		case 6:
			ApplyEffectToObject(0, EffectHeal(int3), o909sion, 0.0);
			break;
		case 7:
			AssignCommand(o909sion, SetFacingPoint(GetPosition(oAtton)));
			AssignCommand(oAtton, SetFacingPoint(GetPosition(o909sion)));
			break;
		case 8:
			break;
		case 9:
			break;
	}
}