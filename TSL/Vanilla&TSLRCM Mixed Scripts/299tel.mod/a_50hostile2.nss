void main() {
	if ((GetGlobalNumber("000_HK_Memory") == 2)) {
		object oHK50cs = GetObjectByTag("HK50cs", 0);
		object oHK50cs1 = GetObjectByTag("HK50cs1", 0);
		object oHK50cs2 = GetObjectByTag("HK50cs2", 0);
		ChangeToStandardFaction(oHK50cs, 1);
		ChangeToStandardFaction(oHK50cs1, 1);
		ChangeToStandardFaction(oHK50cs2, 1);
	}
}

