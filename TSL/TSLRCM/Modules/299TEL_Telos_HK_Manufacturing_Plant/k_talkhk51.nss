void main() {
	object oHk51cs = GetObjectByTag("hk51cs", 0);
	object oHk51_1 = GetObjectByTag("hk51_1", 10);
	if (((GetGlobalNumber("299TEL_HK51_Active") == 3) && (GetGlobalNumber("299TEL_HK51_Core") == 0))) {
		if (GetIsObjectValid(oHk51cs)) {
			AssignCommand(oHk51cs, ActionStartConversation(GetFirstPC(), "hk51", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}