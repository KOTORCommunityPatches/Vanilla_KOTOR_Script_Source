void main() {
	object oHK50 = GetObjectByTag("HK50", 0);
	if (GetIsPC(GetEnteringObject())) {
		if (GetIsObjectValid(oHK50)) {
			vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("Shelf03", 0)));
			AssignCommand(oHK50, SetFacingPoint(struct2));
			SetLockOrientationInDialog(oHK50, 1);
			DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
			AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "hk50", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}