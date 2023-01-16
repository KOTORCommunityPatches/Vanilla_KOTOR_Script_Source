void main() {
	object oEntering = GetEnteringObject();
	object oTalia;
	if ((oEntering == GetFirstPC())) {
		if (GetLocalBoolean(OBJECT_SELF, 40)) {
			return;
		}
		oTalia = GetObjectByTag("talia", 0);
		if ((!GetIsObjectValid(oTalia))) {
			AurPostString("Talia does not exist.", 5, 6, 5.0);
		}
		else {
			AurPostString("Playing Talia Cutscene", 5, 6, 5.0);
		}
		SetForceAlwaysUpdate(oTalia, 1);
		SetForceAlwaysUpdate(GetObjectByTag("kavar", 0), 1);
		SetForceAlwaysUpdate(GetObjectByTag("talia_look", 0), 1);
		SetLocalBoolean(OBJECT_SELF, 40, 1);
		DelayCommand(0.1, AssignCommand(oTalia, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}

