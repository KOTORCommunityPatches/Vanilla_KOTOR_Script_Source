void main() {
	object oHK50cut2 = GetObjectByTag("HK50cut2", 0);
	object oHK501 = GetObjectByTag("HK501", 0);
	object oHK502 = GetObjectByTag("HK502", 0);
	ChangeToStandardFaction(oHK50cut2, 1);
	ChangeToStandardFaction(oHK501, 1);
	ChangeToStandardFaction(oHK502, 1);
	ExecuteScript("k_ai_master", oHK50cut2, 1003);
	ExecuteScript("k_ai_master", oHK501, 1003);
	ExecuteScript("k_ai_master", oHK502, 1003);
}

