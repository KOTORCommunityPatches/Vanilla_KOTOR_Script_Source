void main() {
	object oPC = GetFirstPC();
	object object3 = GetNextPC();
	object object5 = GetNextPC();
	object oEntering = GetEnteringObject();
	if ((((oEntering == oPC) || (oEntering == object3)) || (oEntering == object5))) {
		int int1;
		object oVoggaThug1 = GetObjectByTag("VoggaThug1", 0);
		object oVoggaThug2 = GetObjectByTag("VoggaThug2", 0);
		int1 = IsStealthed(oEntering);
		if ((int1 == 1)) {
			AssignCommand(oVoggaThug1, ClearAllActions());
			AssignCommand(oVoggaThug2, ClearAllActions());
			SetLocalBoolean(oVoggaThug1, 30, 1);
			SetLocalBoolean(oVoggaThug2, 30, 1);
			SetKeepStealthInDialog(1);
			AssignCommand(oVoggaThug1, ActionStartConversation(oPC, "Vogthugs", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			AssignCommand(oVoggaThug1, ClearAllActions());
			AssignCommand(oVoggaThug2, ClearAllActions());
			SetLocalBoolean(oVoggaThug1, 30, 0);
			SetLocalBoolean(oVoggaThug2, 30, 0);
			AssignCommand(oVoggaThug1, ActionStartConversation(oPC, "Vogthugs", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

