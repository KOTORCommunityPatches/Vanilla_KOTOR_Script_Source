struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oDarthsion = GetObjectByTag("darthsion", 0);
		if (GetIsObjectValid(oDarthsion)) {
			object oWP_sion_facing = GetObjectByTag("WP_sion_facing", 0);
			if (GetIsObjectValid(oWP_sion_facing)) {
				vector struct2 = GetPositionFromLocation(GetLocation(oWP_sion_facing));
				;
			}
		}
	}
}

