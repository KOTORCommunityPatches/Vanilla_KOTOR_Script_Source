void main() {
	object oEntering = GetEnteringObject();
	object oDoorGuard = GetObjectByTag("DoorGuard", 0);
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	{
		object object6 = GetObjectByTag("DoorGuard", 0);
		if (GetLocalBoolean(object6, 40)) {
		if (GetLocalBoolean(object6, 48)) {
			AssignCommand(object6, BarkString(object6, 133976));
		}
		}
	}
	SetLocalBoolean(oDoorGuard, 49, 1);
}

