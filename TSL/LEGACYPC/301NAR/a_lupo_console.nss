struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oLupo = GetObjectByTag("lupo", 0);
	if (GetIsObjectValid(oLupo)) {
		object oLupo_com = GetObjectByTag("lupo_com", 0);
		location location1;
		if (GetIsObjectValid(oLupo_com)) {
			ClearAllActions();
			location1 = GetLocation(oLupo_com);
			AssignCommand(oLupo, ActionForceMoveToLocation(location1, 1, 30.0));
			object oComputerpanel = GetObjectByTag("computerpanel", 0);
			vector vPosition = GetPosition(oComputerpanel);
								;
;
		}
	}
}

