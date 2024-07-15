void main() {
	object oKHoundA1 = GetObjectByTag("KHoundA1", 0);
	object oKHoundA2 = GetObjectByTag("KHoundA2", 0);
	object oKHoundA3 = GetObjectByTag("KHoundA3", 0);
	AssignCommand(oKHoundA1, ClearAllActions());
	AssignCommand(oKHoundA2, ClearAllActions());
	AssignCommand(oKHoundA3, ClearAllActions());
	AssignCommand(oKHoundA1, ActionMoveToObject(GetObjectByTag("WP_KATH_1_0", 0), 0, 1.0));
	DelayCommand(0.5, AssignCommand(oKHoundA2, ActionMoveToObject(GetObjectByTag("WP_KATH_2_0", 0), 0, 1.0)));
	DelayCommand(0.7, AssignCommand(oKHoundA3, ActionMoveToObject(GetObjectByTag("WP_KATH_3_0", 0), 0, 1.0)));
}

