void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			{
				object oMineFor = GetObjectByTag("MineFor", 0);
				object oWP_COORTA_MOVE = GetObjectByTag("WP_COORTA_MOVE", 0);
				object oN_minecoorta001 = CreateObject(1, "n_minecoorta001", GetLocation(GetObjectByTag("WP_COORTA_SPAWN", 0)), 0);
				CreateObject(1, "n_minefirst001", GetLocation(GetObjectByTag("WP_COORTA_THUG2_CS", 0)), 0);
				CreateObject(1, "n_minefirst002", GetLocation(GetObjectByTag("WP_COORTA_THUG1_CS", 0)), 0);
				AssignCommand(oN_minecoorta001, ActionMoveToObject(oWP_COORTA_MOVE, 0, 1.0));
				DelayCommand(1.8, AssignCommand(oN_minecoorta001, ActionPlayAnimation(117, 1.0, 1.0)));
				DelayCommand(2.5, SoundObjectPlay(GetObjectByTag("SienHitByCoorta", 0)));
				DelayCommand(2.5, AssignCommand(oMineFor, ActionPlayAnimation(26, 1.0, 1.0)));
				DelayCommand(5.0, AssignCommand(oMineFor, ActionJumpToObject(GetObjectByTag("WP_SIEN_SPAWN2", 0), 1)));
				DelayCommand(5.1, ActionResumeConversation());
			}
			break;
		case 1:
			{
				object oCoortaCS = GetObjectByTag("CoortaCS", 0);
				DelayCommand(3.0, AssignCommand(oCoortaCS, ActionDoCommand(SetFacingPoint(GetPosition(GetNearestObjectByTag("CoortaThug1", OBJECT_SELF, 1))))));
			}
			break;
		case 2:
			break;
	}
}
