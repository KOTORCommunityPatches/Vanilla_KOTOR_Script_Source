void main() {
	object oHk51cs = GetObjectByTag("hk51cs", 0);
	object oHk51_1 = GetObjectByTag("hk51_1", 10);
	if ((GetEnteringObject() == GetFirstPC())) {
		if ((GetGlobalNumber("299TEL_HK51_Active") == 3)) {
			if (GetIsObjectValid(oHk51cs)) {
				AssignCommand(oHk51cs, ClearAllActions());
				AssignCommand(oHk51cs, ActionStartConversation(GetFirstPC(), "hk51", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
		}
	}
	DelayCommand(1.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
}