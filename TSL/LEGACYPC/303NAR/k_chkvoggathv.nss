void main() {
	object oPC = GetFirstPC();
	object object3 = GetNextPC();
	object object5 = GetNextPC();
	object oEntering = GetEnteringObject();
	if ((((oEntering == oPC) || (oEntering == object3)) || (oEntering == object5))) {
		int int1;
		object oVoggaThief1 = GetObjectByTag("VoggaThief1", 0);
		object oVoggaThief2 = GetObjectByTag("VoggaThief2", 0);
		int1 = IsStealthed(oEntering);
		if ((int1 == 0)) {
			AssignCommand(oVoggaThief1, ClearAllActions());
			AssignCommand(oVoggaThief2, ClearAllActions());
			SetLocalBoolean(oVoggaThief1, 30, 0);
			SetLocalBoolean(oVoggaThief2, 30, 0);
			AssignCommand(oVoggaThief1, ActionStartConversation(oPC, "Vogthfs", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			if ((!GetLocalBoolean(OBJECT_SELF, 30))) {
				AssignCommand(oVoggaThief1, ClearAllActions());
				AssignCommand(oVoggaThief2, ClearAllActions());
				SetLocalBoolean(OBJECT_SELF, 30, 1);
				SetLocalBoolean(oVoggaThief1, 30, 1);
				SetLocalBoolean(oVoggaThief2, 30, 1);
				SetKeepStealthInDialog(1);
				AssignCommand(oVoggaThief1, ActionStartConversation(oPC, "Vogthfs", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
		}
	}
}

