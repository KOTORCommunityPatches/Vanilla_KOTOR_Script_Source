void main() {
	object oTwinSun1 = GetObjectByTag("TwinSun1", 0);
	object oTwinSun2 = GetObjectByTag("TwinSun2", 0);
	object oWP_TWIN1_CANTINA_2 = GetObjectByTag("WP_TWIN1_CANTINA_2", 0);
	object oWP_TWIN2_CANTINA_2 = GetObjectByTag("WP_TWIN2_CANTINA_2", 0);
	AssignCommand(oTwinSun1, ClearAllActions());
	AssignCommand(oTwinSun2, ClearAllActions());
	AssignCommand(oTwinSun1, ActionForceMoveToObject(oWP_TWIN1_CANTINA_2, 0, 1.0, 30.0));
	AssignCommand(oTwinSun2, ActionForceMoveToObject(oWP_TWIN2_CANTINA_2, 0, 1.0, 30.0));
}