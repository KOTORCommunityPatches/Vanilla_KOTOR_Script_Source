void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SpawnAvailableNPC(9, GetLocation(GetObjectByTag("VisasInvis", 0)));
			if (IsAvailableCreature(4)) {
				SpawnAvailableNPC(4, GetLocation(GetWaypointByTag("WP_PC_WALK_1")));
				SetNPCSelectability(4, 0);
			}
			break;
		case 1:
			SpawnAvailableNPC(11, GetLocation(GetObjectByTag("WP_ebon_disciple", 0)));
			{
				object oDisciple = GetObjectByTag("Disciple", 0);
				DelayCommand(1.0, AssignCommand(oDisciple, ActionMoveToObject(GetObjectByTag("DiscipleInvis", 0), 0, 1.0)));
			}
			break;
		case 2:
			SpawnAvailableNPC(1, GetLocation(GetObjectByTag("BaoInvis", 0)));
			SpawnAvailableNPC(11, GetLocation(GetObjectByTag("WP_ebon_disciple", 0)));
			{
				object object14 = GetObjectByTag("Disciple", 0);
				DelayCommand(0.5, AssignCommand(object14, ActionMoveToObject(GetObjectByTag("DiscipleInvis", 0), 0, 1.0)));
				SpawnAvailableNPC(7, GetLocation(GetObjectByTag("MiraInvis", 0)));
				AssignCommand(GetObjectByTag("hologram", 0), ActionPlayAnimation(204, 1.0, 0.0));
				SpawnAvailableNPC(9, GetLocation(GetObjectByTag("VisasInvis", 0)));
				object oVisasMarr = GetObjectByTag("VisasMarr", 0);
				ApplyEffectToObject(1, EffectResurrection(50), oVisasMarr, 1.0);
				DelayCommand(0.3, AssignCommand(oVisasMarr, ActionJumpToLocation(GetLocation(GetObjectByTag("VisasInvis", 0)))));
				DelayCommand(0.8, AssignCommand(oVisasMarr, ActionPlayAnimation(3, 1.0, (-1.0))));
			}
			break;
	}
}