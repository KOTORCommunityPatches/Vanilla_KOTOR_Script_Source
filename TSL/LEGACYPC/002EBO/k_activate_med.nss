void main() {
	object oT3m4 = GetObjectByTag("t3m4", 0);
	if (((GetCurrentHitPoints(oT3m4) > 15) && (!GetLocalBoolean(oT3m4, 60)))) {
		AurPostString("Repair Kit used on PC. Turning off spark effects.", 5, 5, 5.0);
		SetLocalBoolean(oT3m4, 60, 1);
		AssignCommand(GetObjectByTag("t3m4", 0), ClearAllEffects());
		AssignCommand(GetObjectByTag("t3m4", 0), ClearAllActions());
	}
}

