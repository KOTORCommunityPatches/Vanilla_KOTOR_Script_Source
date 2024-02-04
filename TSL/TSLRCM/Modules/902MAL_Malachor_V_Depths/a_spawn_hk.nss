void main() {
	if ((GetGlobalNumber("299TEL_HK51_Core") == 1)) {
		CreateObject(1, "p_hk048", Location(Vector((-54.2826), (-200.86032), 20.75755), 180.0), 0);
		CreateObject(1, "n_hk51_001", Location(Vector((-49.14608), (-198.71793), 21.07016), 180.0), 0);
		CreateObject(1, "n_hk51_002", Location(Vector((-48.83872), (-200.15726), 21.12725), 180.0), 0);
	}
	else {
		if ((GetGlobalNumber("299TEL_HK50") == 3)) {
			CreateObject(1, "p_hk048", Location(Vector((-54.2826), (-200.86032), 20.75755), 180.0), 0);
		}
		else {
			CreateObject(1, "p_hk048", Location(Vector((-54.2826), (-200.86032), 20.75755), 180.0), 0);
			CreateObject(1, "n_hk50_001", Location(Vector((-49.14608), (-198.71793), 21.07016), 180.0), 0);
			CreateObject(1, "n_hk50_002", Location(Vector((-48.83872), (-200.15726), 21.12725), 180.0), 0);
		}
	}
}