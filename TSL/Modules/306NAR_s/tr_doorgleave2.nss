void main() {
	object oExiting = GetExitingObject();
	if ((oExiting != GetPartyLeader())) {
		return;
	}
	{
		object oDoorGuard = GetObjectByTag("DoorGuard", 0);
		SetLocalBoolean(oDoorGuard, 49, 0);
	}
}

