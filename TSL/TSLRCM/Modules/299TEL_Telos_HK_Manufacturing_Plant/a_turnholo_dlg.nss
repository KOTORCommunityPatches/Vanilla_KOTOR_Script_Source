void main() {
	object oHK50T3 = GetObjectByTag("HK50T3", 0);
	AssignCommand(oHK50T3, ClearAllActions());
	SetLockOrientationInDialog(oHK50T3, 0);
	DelayCommand(1.5, AssignCommand(oHK50T3, SetFacingPoint(GetPosition(GetFirstPC()))));
}