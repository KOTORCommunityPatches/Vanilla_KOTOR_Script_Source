void main() {
	
	object oWookiee01 = GetObjectByTag("kas22_wookcap_02", 0);
	object oWookiee02 = GetObjectByTag("kas22_wookcap_03", 0);
	object oGuard01 = GetObjectByTag("kas22_capczer_01", 0);
	object oGuard02 = GetObjectByTag("kas22_capczer_02", 0);
	
	DestroyObject(oWookiee01, 0.0, TRUE);
	DestroyObject(oWookiee02, 0.0, TRUE);
	DestroyObject(oGuard01, 0.0, TRUE);
	DestroyObject(oGuard02, 0.0, TRUE);
}
