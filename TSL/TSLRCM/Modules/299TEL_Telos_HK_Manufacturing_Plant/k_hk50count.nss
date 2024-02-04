void main() {
	object oHK50cut2 = GetObjectByTag("HK50cut2", 0);
	object oHK501 = GetObjectByTag("HK501", 0);
	object oHK502 = GetObjectByTag("HK502", 0);
	if ((GetLocalNumber(OBJECT_SELF, 28) == 19)) {
		if ((GetGlobalNumber("299TEL_HK50") == 2)) {
			SetGlobalNumber("299TEL_HK50", 3);
		}
		else {
			if ((GetGlobalNumber("299TEL_HK50") == 0)) {
				SetGlobalNumber("299TEL_HK50", 1);
			}
		}
	}
}