void main() {
	object oHK50 = GetObjectByTag("HK50", 0);
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetIsObjectValid(oHK50)) {
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
		SetLockOrientationInDialog(oHK50, 1);
		vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("Shelf03", 0)));
		AssignCommand(oHK50, SetFacingPoint(struct2));
		AssignCommand(oHK50, ClearAllActions());
		AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "hk50", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}