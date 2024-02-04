void main() {
	object oG0T0Temp = GetObjectByTag("G0T0Temp", 0);
	object oWP_G0T0_3 = GetObjectByTag("WP_G0T0_3", 0);
	object oWP_G0T0HOLO_1 = GetObjectByTag("WP_G0T0HOLO_1", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(oWP_G0T0HOLO_1));
	object oGotoHolo = GetObjectByTag("GotoHolo", 0);
	effect efVisual = EffectVisualEffect(9010, 0);
	object oHoloeffect = GetObjectByTag("Holoeffect", 0);
	ClearAllActions();
	AssignCommand(oG0T0Temp, ActionForceMoveToObject(oWP_G0T0_3, 0, 1.0, 11.0));
	DelayCommand(14.0, AssignCommand(oG0T0Temp, SetFacingPoint(struct2)));
	DelayCommand(15.5, ApplyEffectToObject(1, efVisual, oG0T0Temp, 45.0));
	DelayCommand(6.0, SetDialogPlaceableCamera(4));
	DelayCommand(8.0, SetDialogPlaceableCamera(5));
	DelayCommand(10.0, SetDialogPlaceableCamera(3));
	DelayCommand(12.0, SetDialogPlaceableCamera(1));
}