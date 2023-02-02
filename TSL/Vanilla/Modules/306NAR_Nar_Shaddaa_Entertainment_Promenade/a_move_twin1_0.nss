void main() {
	object oTwinSun1 = GetObjectByTag("TwinSun1", 0);
	object oTwinSun2 = GetObjectByTag("TwinSun2", 0);
	object oWP_TWIN1_0b = GetObjectByTag("WP_TWIN1_0b", 0);
	AssignCommand(oTwinSun2, ClearAllActions());
	AssignCommand(oTwinSun1, ClearAllActions());
	DelayCommand(0.5, AssignCommand(oTwinSun1, ActionForceMoveToObject(oWP_TWIN1_0b, 0, 1.0, 30.0)));
}
