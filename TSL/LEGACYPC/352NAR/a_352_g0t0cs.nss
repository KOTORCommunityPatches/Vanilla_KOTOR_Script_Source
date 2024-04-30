struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oG0T0Temp = GetObjectByTag("G0T0Temp", 0);
	object oWP_G0T0_3 = GetObjectByTag("WP_G0T0_3", 0);
	object oWP_G0T0HOLO_1 = GetObjectByTag("WP_G0T0HOLO_1", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(oWP_G0T0HOLO_1));
	object oGotoHolo = GetObjectByTag("GotoHolo", 0);
	effect efVisual = EffectVisualEffect(9010, 0);
	object oHoloeffect = GetObjectByTag("Holoeffect", 0);
	ClearAllActions();
	AssignCommand(oG0T0Temp, ActionForceMoveToObject(oWP_G0T0_3, 0, 1.0, 30.0));
				;
;
}

