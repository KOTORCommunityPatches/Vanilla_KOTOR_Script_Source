void main() {
	object oHK50 = GetObjectByTag("HK50", 0);
	if (GetIsPC(GetEnteringObject())) {
		if (GetIsObjectValid(oHK50)) {
			DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
			AssignCommand(oHK50, ClearAllActions());
			AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "hk50rea", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}