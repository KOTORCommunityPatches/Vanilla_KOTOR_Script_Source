void main() {
	if ((GetGlobalNumber("299TEL_HK51_Active") == 1)) {
		CreateObject(1, "n_hk51_007", GetLocation(GetObjectByTag("WP_hk51_END1_0", 0)), 0);
	}
	else {
		CreateObject(1, "n_hk51_002", Location(Vector((-67.26254), (-40.81023), (-3.34369)), 90.0), 0);
		CreateObject(1, "n_hk51_002", Location(Vector((-71.50845), (-40.81023), (-3.34369)), 90.0), 0);
		CreateObject(1, "n_hk51_002", Location(Vector((-69.26254), (-40.81023), (-3.34369)), 90.0), 0);
	}
}