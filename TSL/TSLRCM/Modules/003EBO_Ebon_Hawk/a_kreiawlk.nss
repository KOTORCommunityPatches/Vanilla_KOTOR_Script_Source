void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	if (GetIsObjectValid(oKreia)) {
		AssignCommand(oKreia, ClearAllActions());
		object oSW_KREIA_WLK_1 = GetObjectByTag("SW_KREIA_WLK_1", 0);
		if (GetIsObjectValid(oSW_KREIA_WLK_1)) {
			AssignCommand(oKreia, ActionForceMoveToObject(oSW_KREIA_WLK_1, 0, 1.0, 30.0));
		}
	}
}