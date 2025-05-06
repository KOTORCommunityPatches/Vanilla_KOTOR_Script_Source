struct structtype1 {
	float float1;
	float float3;
};

void main() {
	vector struct1;
	struct1.z = (-30.0);
	SWMG_PlayerApplyForce(struct1);
}

