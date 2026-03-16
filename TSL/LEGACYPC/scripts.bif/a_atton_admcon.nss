struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oWP_ADMCON_ATTON = GetWaypointByTag("WP_ADMCON_ATTON");
	DelayCommand(1.0, AssignCommand(OBJECT_SELF, ActionMoveToObject(oWP_ADMCON_ATTON, 1, 1.0)));
	vector vPosition = GetPosition(GetObjectByTag("Adm_Console", 0));
	;
}

