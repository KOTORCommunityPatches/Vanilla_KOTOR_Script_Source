struct structtype1 {
	float float1;
	float float3;
};

void main() {
	location location1 = GetLocation(GetObjectByTag("WP_grenn_spawn", 0));
	object oN_repoff001 = CreateObject(1, "n_repoff001", location1, 0);
	location location3 = GetLocation(GetObjectByTag("WP_grenn_face", 0));
	vector struct2 = GetPositionFromLocation(location3);
	;
}

