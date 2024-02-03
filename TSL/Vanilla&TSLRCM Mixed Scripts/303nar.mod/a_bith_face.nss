struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oComputerPanel = GetObjectByTag("ComputerPanel", 0);
	if (GetIsObjectValid(oComputerPanel)) {
		location location1 = GetLocation(oComputerPanel);
		vector struct2 = GetPositionFromLocation(location1);
		object oBithstst = GetObjectByTag("Bithstst", 0);
		if (GetIsObjectValid(oBithstst)) {
			;
		}
	}
}

