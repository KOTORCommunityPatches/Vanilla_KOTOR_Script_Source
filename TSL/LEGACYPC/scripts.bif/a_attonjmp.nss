struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oWP_ATTONCAGE = GetObjectByTag("WP_ATTONCAGE", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oWP_ATTONCAGE)));
	vector vPosition = GetPosition(OBJECT_SELF);
	;
}

