void main() {
	object oG0T0Temp = GetObjectByTag("G0T0Temp", 0);
	object oWP_G0T0_1 = GetWaypointByTag("WP_G0T0_1");
	object oWP_G0T0HOLO_1 = GetObjectByTag("WP_G0T0HOLO_1", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(oWP_G0T0HOLO_1));
	object oGotoHolo = GetObjectByTag("GotoHolo", 0);
	effect efVisual = EffectVisualEffect(9010, 0);
	ClearAllActions();
	AssignCommand(oG0T0Temp, ActionForceMoveToObject(oWP_G0T0_1, 0, 1.0, 30.0));
	DelayCommand(13.5, AssignCommand(oG0T0Temp, SetFacingPoint(struct2)));
	DelayCommand(14.0, ApplyEffectToObject(2, efVisual, oGotoHolo, 0.0));
	SetLockOrientationInDialog(oG0T0Temp, 1);
	CreateObject(1, "n_calonord002", GetLocation(oWP_G0T0HOLO_1), 0);
	PlaySound("v_imp_stun");
}

