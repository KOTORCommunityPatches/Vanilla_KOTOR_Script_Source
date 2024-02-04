void main() {
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	SetGlobalFadeIn(0.0, 0.0, 0.0, 0.0, 0.0);
	if ((GetGlobalNumber("202TEL_Batono") == 12)) {
		if ((GetGlobalNumber("202TEL_Batono") != 13)) {
			CreateObject(1, "203_batono", GetLocation(GetObjectByTag("wp_batono_sp", 0)), 0);
		}
	}
	if ((GetGlobalNumber("203TEL_Habat") > 6)) {
		if (GetIsObjectValid(GetObjectByTag("g_gam_luxa", 0))) {
			DestroyObject(GetObjectByTag("g_gam_luxa", 1), 0.0, 1, 0.0, 0);
		}
		if (GetIsObjectValid(GetObjectByTag("g_gam_luxa", 1))) {
			DestroyObject(GetObjectByTag("g_gam_luxa", 0), 0.0, 1, 0.0, 0);
		}
		if (GetIsObjectValid(GetObjectByTag("g_gam_luxa", 0))) {
			DestroyObject(GetObjectByTag("202_Luxa", 0), 0.0, 1, 0.0, 0);
		}
	}
	if ((GetGlobalNumber("202TEL_Falt") > 4)) {
		if (GetIsObjectValid(GetObjectByTag("202_Falt", 0))) {
			DestroyObject(GetObjectByTag("202_Falt", 0), 0.0, 1, 0.0, 0);
		}
	}
}