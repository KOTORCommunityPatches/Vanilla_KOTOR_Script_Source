struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			object oWP_atton_facing = GetObjectByTag("WP_atton_facing", 0);
			vector struct2 = GetPositionFromLocation(GetLocation(oWP_atton_facing));
			;
		case 2:
		default:
	}
}

