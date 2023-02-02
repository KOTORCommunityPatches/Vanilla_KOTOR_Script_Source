void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	if (GetIsObjectValid(GetObjectByTag("champ", 0))) {
		AurPostString("The Champ has already spawned.", 5, 15, 10.0);
	}
	else {
		object oDahnis = GetObjectByTag("Dahnis", 0);
		if (GetIsObjectValid(oDahnis)) {
			if (((GetLocalBoolean(oDahnis, 45) && GetLocalBoolean(oDahnis, 46)) && GetLocalBoolean(oDahnis, 47))) {
				AssignCommand(oDahnis, ActionStartConversation(oEntering, "champent", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			else {
				AurPostString("Numbers not set yet, no champ.", 5, 15, 10.0);
			}
		}
		else {
			AurPostString("Error: No Dhannis.", 5, 15, 10.0);
		}
	}
}
