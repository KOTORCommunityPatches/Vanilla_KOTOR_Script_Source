void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (IsStealthed(oEntering)) {
		AurPostString("Camp hostile, but they haven't seen you", 5, 5, 5.0);
		object oSith_captain;
		object object4;
		int int3 = 0;
		while ((int3 <= 5)) {
			oSith_captain = GetObjectByTag("sgren_run", int3);
			if (GetIsObjectValid(oSith_captain)) {
				DelayCommand(0.2, ChangeToStandardFaction(oSith_captain, 1));
			}
			(int3++);
		}
		oSith_captain = GetObjectByTag("selite_run", 0);
		DelayCommand(0.2, ChangeToStandardFaction(oSith_captain, 1));
		oSith_captain = GetObjectByTag("selite_run", 1);
		DelayCommand(0.2, ChangeToStandardFaction(oSith_captain, 1));
		oSith_captain = GetObjectByTag("sith_captain", 0);
		DelayCommand(0.2, ChangeToStandardFaction(oSith_captain, 1));
		return;
	}
	object object9;
	location location1 = GetLocation(GetFirstPC());
	if ((!GetLocalBoolean(OBJECT_SELF, 40))) {
		int int6 = 0;
		while ((int6 <= 5)) {
			object9 = GetObjectByTag("sgren_run", int6);
			if (GetIsObjectValid(object9)) {
				DelayCommand(IntToFloat(int6), AssignCommand(object9, ActionMoveToLocation(location1, 1)));
			}
			DelayCommand(2.0, AssignCommand(GetObjectByTag("selite_run", 0), ActionMoveToLocation(location1, 1)));
			DelayCommand(2.5, AssignCommand(GetObjectByTag("selite_run", 1), ActionMoveToLocation(location1, 1)));
			(int6++);
		}
		object9 = GetObjectByTag("sith_captain", 0);
		AurPostString("Sith Captain warning", 5, 5, 5.0);
		AssignCommand(object9, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(OBJECT_SELF, 40, 1);
	}
}
