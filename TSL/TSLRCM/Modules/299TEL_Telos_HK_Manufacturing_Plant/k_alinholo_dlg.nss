void main() {
	object oHK50T1 = GetObjectByTag("HK50T1", 0);
	object oHK50T2 = GetObjectByTag("HK50T2", 0);
	object oHK50T3 = GetObjectByTag("HK50T3", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_ALINHOLO", 0)));
	AssignCommand(oHK50T1, ClearAllActions());
	AssignCommand(oHK50T2, ClearAllActions());
	AssignCommand(oHK50T3, ClearAllActions());
	AssignCommand(oHK50T1, ActionDoCommand(SetFacingPoint(struct2)));
	AssignCommand(oHK50T2, ActionDoCommand(SetFacingPoint(struct2)));
	AssignCommand(oHK50T3, ActionDoCommand(SetFacingPoint(struct2)));
	SetLockOrientationInDialog(oHK50T1, 1);
	SetLockOrientationInDialog(oHK50T2, 1);
	SetLockOrientationInDialog(oHK50T3, 1);
	DelayCommand(1.0, AssignCommand(oHK50T3, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}