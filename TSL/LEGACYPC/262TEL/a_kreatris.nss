// Prototypes
void sub3();
void sub2();
void sub1();

void sub3() {
	CreateObject(1, "n_darthtraya001", GetLocation(GetWaypointByTag("sp_traya")), 0);
}

void sub2() {
	CreateObject(1, "p_handmaiden012", GetLocation(GetWaypointByTag("sp_sis_sisend1")), 0);
	CreateObject(1, "p_handmaiden013", GetLocation(GetWaypointByTag("sp_sis_sisend2")), 0);
	CreateObject(1, "p_handmaiden014", GetLocation(GetWaypointByTag("sp_sis_sisend3")), 0);
	CreateObject(1, "p_handmaiden014", GetLocation(GetWaypointByTag("sp_sis_sisend4")), 0);
	CreateObject(1, "p_handmaiden014", GetLocation(GetWaypointByTag("sp_sis_sisend5")), 0);
	DelayCommand(0.2, AssignCommand(GetPartyLeader(), ActionJumpToObject(GetWaypointByTag("sp_hand_sisend"), 1)));
	SetMinOneHP(GetPartyLeader(), 1);
	AssignCommand(GetPartyLeader(), ClearAllActions());
	AssignCommand(GetPartyLeader(), ActionStartConversation(GetPartyLeader(), "sisend", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void sub1() {
	SwitchPlayerCharacter(4);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oAtris = GetObjectByTag("Atris", 0);
	object oKreiaEvil = GetObjectByTag("KreiaEvil", 0);
	object oSister1 = GetObjectByTag("Sister1", 0);
	object oSister2 = GetObjectByTag("Sister2", 0);
	switch (nParam1) {
		case 0:
			AssignCommand(oKreiaEvil, ActionMoveToObject(GetWaypointByTag("wp_kreia_end2"), 0, 1.0));
			break;
		case 1:
			AssignCommand(oKreiaEvil, ActionMoveToLocation(GetLocation(GetWaypointByTag("wp_kreia_ending")), 0));
			AssignCommand(oKreiaEvil, ActionDoCommand(SetFacing(GetFacing(GetWaypointByTag("wp_kreia_ending")))));
			break;
		case 2:
			AssignCommand(oKreiaEvil, SetFacing(90.0));
			break;
		case 3:
			AssignCommand(oKreiaEvil, ActionMoveToObject(GetWaypointByTag("wp_kreia_end"), 0, 1.0));
			break;
		case 4:
			SetLockOrientationInDialog(oAtris, 1);
			SetLockOrientationInDialog(oKreiaEvil, 1);
			AssignCommand(oKreiaEvil, SetFacing(270.0));
			break;
		case 5:
			SetGlobalFadeOut(1.0, 2.0, 0.0, 0.0, 0.0);
			break;
		case 6:
			AssignCommand(oKreiaEvil, ActionJumpToObject(GetObjectByTag("wp_pc_end", 0), 1));
			CreateObject(1, "p_handmaiden003", GetLocation(GetObjectByTag("sp_hand_kreia1", 0)), 0);
			CreateObject(1, "p_handmaiden004", GetLocation(GetObjectByTag("sp_hand_kreia2", 0)), 0);
			DestroyObject(oAtris, 0.0, 0, 0.0, 0);
			break;
		case 7:
			AssignCommand(oKreiaEvil, ActionMoveToObject(GetObjectByTag("wp_atris_2", 0), 0, 1.0));
			SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
			break;
		case 8:
			AssignCommand(oSister1, ActionMoveToObject(GetObjectByTag("wp_hand_kreia1", 0), 1, 1.0));
			AssignCommand(oSister2, ActionMoveToObject(GetObjectByTag("wp_hand_kreia2", 0), 1, 1.0));
			AssignCommand(oKreiaEvil, ActionMoveToObject(GetObjectByTag("wp_atris_3", 0), 0, 1.0));
			SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(4.0, DestroyObject(oSister1, 0.0, 0, 0.0, 0));
			DelayCommand(4.0, DestroyObject(oSister2, 0.0, 0, 0.0, 0));
			if (GetGlobalBoolean("000_PLAYER_GENDER")) {
				SetNPCSelectability(4, 1);
				DelayCommand(4.0, sub1());
				DelayCommand(5.0, sub2());
				DelayCommand(5.5, SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0));
				DelayCommand(8.0, DestroyObject(oKreiaEvil, 0.0, 0, 0.0, 0));
			}
			else {
				DelayCommand(5.0, sub3());
				DelayCommand(6.0, SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0));
				DelayCommand(10.0, DestroyObject(oKreiaEvil, 0.0, 0, 0.0, 0));
			}
			break;
	}
}

