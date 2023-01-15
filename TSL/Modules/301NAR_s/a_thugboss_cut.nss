// Byte code does not match

void main() {
	object oSquik = GetObjectByTag("squik", 0);
	object oThugboss = GetObjectByTag("thugboss", 0);
	object oTranthug = GetObjectByTag("tranthug", 0);
	object object7 = GetObjectByTag("tranthug", 1);
	object oGranthug = GetObjectByTag("granthug", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			vector struct2 = GetPositionFromLocation(GetLocation(GetFirstPC()));
			AssignCommand(oGranthug, SetFacingPoint(struct2));
			SetLockOrientationInDialog(oGranthug, 1);
			struct2 = GetPositionFromLocation(GetLocation(oThugboss));
			AssignCommand(oSquik, SetFacingPoint(struct2));
			SetLockOrientationInDialog(oSquik, 1);
			struct2 = GetPositionFromLocation(GetLocation(oSquik));
			AssignCommand(oTranthug, SetFacingPoint(struct2));
			SetLockOrientationInDialog(oTranthug, 1);
			AssignCommand(object7, SetFacingPoint(struct2));
			SetLockOrientationInDialog(object7, 1);
			AssignCommand(oThugboss, SetFacingPoint(struct2));
			SetLockOrientationInDialog(oThugboss, 1);
			break;
		case 1:
			vector struct6 = GetPositionFromLocation(GetLocation(oThugboss));
			AssignCommand(oGranthug, SetFacingPoint(struct6));
			SetLockOrientationInDialog(oGranthug, 1);
			break;
		case 2:
			{
				object oDoor_thug_1 = GetObjectByTag("door_thug_1", 0);
				object oDoor_thug_2 = GetObjectByTag("door_thug_2", 0);
				AssignCommand(oDoor_thug_1, ActionCloseDoor(oDoor_thug_1));
				AssignCommand(oDoor_thug_1, ActionLockObject(oDoor_thug_1));
				AssignCommand(oDoor_thug_2, ActionCloseDoor(oDoor_thug_2));
				AssignCommand(oDoor_thug_2, ActionLockObject(oDoor_thug_2));
			}
			break;
		case 3:
			ChangeToStandardFaction(oThugboss, 2);
			ChangeToStandardFaction(oSquik, 4);
			DelayCommand(1.0, AssignCommand(oThugboss, CutsceneAttack(oSquik, 176, 2, 1000)));
			break;
		case 4:
			ChangeToStandardFaction(oThugboss, 1);
			ChangeToStandardFaction(oTranthug, 1);
			ChangeToStandardFaction(object7, 1);
			ChangeToStandardFaction(oGranthug, 1);
			ExecuteScript("a_force_combat", oThugboss, 0xFFFFFFFF);
			ExecuteScript("a_force_combat", oTranthug, 0xFFFFFFFF);
			ExecuteScript("a_force_combat", object7, 0xFFFFFFFF);
			ExecuteScript("a_force_combat", oGranthug, 0xFFFFFFFF);
			break;
		case 5:
			break;
	}
}

