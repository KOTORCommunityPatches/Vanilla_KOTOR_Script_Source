struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			CreateObject(1, "p_hk048", Location(Vector((-54.2826), (-200.86032), 20.75755), 180.0), 0);
			break;
		case 1:
			AssignCommand(GetObjectByTag("g0t0", 0), ActionMoveToLocation(Location(Vector((-59.19919), (-204.16751), 20.4719), 180.0), 0));
			vector struct4 = GetPositionFromLocation(GetLocation(GetObjectByTag("sp_goto", 0)));
								;
;
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
	}
}

