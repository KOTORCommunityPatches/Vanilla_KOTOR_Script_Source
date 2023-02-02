// Globals
	int intGLOB_1 = 25;

void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	if ((GetEnteringObject() == GetFirstPC())) {
		object oAtton = GetObjectByTag("Atton", 0);
		if ((!GetIsObjectValid(oAtton))) {
			return;
		}
		else {
			object oConsole = GetObjectByTag("console", 0);
			vector struct2 = GetPositionFromLocation(GetLocation(oConsole));
			AssignCommand(oAtton, SetFacingPoint(struct2));
			SetLockOrientationInDialog(oAtton, 1);
		}
		if ((GetGlobalNumber("107PER_MG_FINISHED") == 0)) {
			AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "106PERcut", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			SetGlobalNumber("107PER_MG_LEFT", intGLOB_1);
			SetGlobalNumber("107PER_MG_DEAD", 0);
			SetGlobalNumber("107PER_MG_EBON", 0);
		}
		else {
			if ((GetGlobalNumber("107PER_MG_FINISHED") == 1)) {
				SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
				SetFadeUntilScript();
				SetInputClass(0);
				object object8 = SpawnAvailableNPC(6, GetLocation(GetObjectByTag("WP_gspawn_kreia", 0)));
				if ((!GetIsObjectValid(object8))) {
					AurPostString("107PER: AWD-OEI: Kreia didn't spawn.", 5, 9, 30.0);
					return;
				}
				object oPC = GetFirstPC();
				AssignCommand(oAtton, ClearAllActions());
				AssignCommand(object8, ClearAllActions());
				AssignCommand(oPC, ClearAllActions());
				DelayCommand(1.0, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
				DelayCommand(1.0, AssignCommand(oAtton, ActionStartConversation(oPC, "turend", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
		}
	}
}
