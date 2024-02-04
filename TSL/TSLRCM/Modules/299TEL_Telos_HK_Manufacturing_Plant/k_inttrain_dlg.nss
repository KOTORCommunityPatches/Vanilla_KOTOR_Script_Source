void main() {
	object oHK50int1 = GetObjectByTag("HK50int1", 0);
	object oHK50int2 = GetObjectByTag("HK50int2", 0);
	object oHK50int3 = GetObjectByTag("HK50int3", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("HK50IntV", 0)));
	AssignCommand(oHK50int1, ClearAllActions());
	AssignCommand(oHK50int2, ClearAllActions());
	AssignCommand(oHK50int3, ClearAllActions());
	AssignCommand(oHK50int1, ActionDoCommand(SetFacingPoint(struct2)));
	AssignCommand(oHK50int2, ActionDoCommand(SetFacingPoint(struct2)));
	AssignCommand(oHK50int3, ActionDoCommand(SetFacingPoint(struct2)));
	SetLockOrientationInDialog(oHK50int1, 1);
	SetLockOrientationInDialog(oHK50int2, 1);
	SetLockOrientationInDialog(oHK50int3, 1);
	DelayCommand(1.0, AssignCommand(oHK50int1, ClearAllActions()));
	DelayCommand(1.0, AssignCommand(oHK50int1, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}