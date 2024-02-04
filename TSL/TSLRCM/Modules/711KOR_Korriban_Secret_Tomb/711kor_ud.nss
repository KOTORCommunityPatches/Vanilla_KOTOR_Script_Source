// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub2();
void sub1();

void sub2() {
	AurPostString("k_inc_korriban: QuestFail() entered", 10, 13, 10.0);
	object object1;
	int int1;
	object oDeath_invis = GetObjectByTag("death_invis", 0);
	if (GetIsObjectValid(oDeath_invis)) {
		AssignCommand(oDeath_invis, DelayCommand(0.5, ClearAllActions()));
		AssignCommand(oDeath_invis, DelayCommand(0.5, ActionStartConversation(GetFirstPC(), "pc_death", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	switch (GetGlobalNumber("711KOR_Vision_Track")) {
		case 1:
			sub1();
			break;
		case 3:
			sub1();
			break;
		case 5:
			sub1();
			break;
		case 7:
			sub1();
			break;
		case 9:
			sub1();
			break;
	}
}

void sub1() {
	AurPostString("k_inc_korriban: QuestSuccess() entered", 10, 14, 10.0);
	object oAreaObject;
	object oPC = GetFirstPC();
	int nLen;
	string string1;
	effect effect1 = EffectHealForcePoints(400);
	ApplyEffectToObject(2, effect1, oPC, 0.0);
	switch (GetGlobalNumber("711KOR_Vision_Track")) {
		case 1:
			IncrementGlobalNumber("711KOR_Vision_Track", 1);
			AurPostString(("Vision Track - " + IntToString(GetGlobalNumber("711KOR_Vision_Track"))), 5, 5, 2.0);
			nLen = 1;
			while ((nLen <= 5)) {
				DestroyObject(GetObjectByTag(("g_jedi" + IntToString(nLen)), 0), 0.0, 0, 0.0, 0);
				(nLen++);
			}
			SetMinOneHP(GetFirstPC(), 0);
			AssignCommand(GetFirstPC(), ClearAllEffects());
			{
				int int4 = 0;
				object o711_norm_door = GetObjectByTag("711_norm_door", int4);
				while (GetIsObjectValid(o711_norm_door)) {
					SetLocked(o711_norm_door, 0);
					SetPlotFlag(o711_norm_door, 0);
					(int4++);
				o711_norm_door = GetObjectByTag("711_norm_door", int4);
				}
			}
			break;
		case 3:
			IncrementGlobalNumber("711KOR_Vision_Track", 1);
			AurPostString(("Vision Track - " + IntToString(GetGlobalNumber("711KOR_Vision_Track"))), 5, 5, 2.0);
			oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
			nLen = GetStringLength("g_reps");
			while (GetIsObjectValid(oAreaObject)) {
				string1 = GetStringLeft(GetTag(oAreaObject), nLen);
				if (((string1 == "g_reps") || (string1 == "g_mand"))) {
					AssignCommand(oAreaObject, SurrenderToEnemies());
					AssignCommand(oAreaObject, CancelCombat(GetFirstPC()));
					DestroyObject(oAreaObject, 0.0, 0, 0.0, 0);
				}
				oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
			}
			SetMinOneHP(GetFirstPC(), 0);
			{
				int int9 = 0;
				object o711_2nd_door = GetObjectByTag("711_2nd_door", int9);
				while (GetIsObjectValid(o711_2nd_door)) {
					SetLocked(o711_2nd_door, 0);
					SetPlotFlag(o711_2nd_door, 0);
					(int9++);
				o711_2nd_door = GetObjectByTag("711_2nd_door", int9);
				}
			}
			break;
		case 5:
			AurPostString("k_inc_korriban case 5: Fight with Kreia is done - destroy everyone!", 5, 9, 15.0);
			IncrementGlobalNumber("711KOR_Vision_Track", 1);
			{
				object oVisasMarr = GetObjectByTag("KreiaEvil", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("Atton", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("Disciple", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("Hanharr", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("HK47", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("T3M4", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("G0T0", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("Mira", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("Handmaiden", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("Mand", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("BaoDur", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				oVisasMarr = GetObjectByTag("VisasMarr", 0);
				AssignCommand(oVisasMarr, ClearAllActions());
				AssignCommand(oVisasMarr, DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0));
				SetMinOneHP(GetFirstPC(), 0);
				int int11 = 0;
				object o711_last_door = GetObjectByTag("711_last_door", int11);
				while (GetIsObjectValid(o711_last_door)) {
					SetLocked(o711_last_door, 0);
					SetPlotFlag(o711_last_door, 0);
					(int11++);
				o711_last_door = GetObjectByTag("711_last_door", int11);
				}
			}
			break;
		case 9:
			IncrementGlobalNumber("711KOR_Vision_Track", 1);
			SetMinOneHP(GetFirstPC(), 0);
			{
				int int13 = 0;
				object oCrypt_door = GetObjectByTag("crypt_door", 0);
				while (GetIsObjectValid(oCrypt_door)) {
					SetLocked(oCrypt_door, 0);
					SetPlotFlag(oCrypt_door, 0);
					(int13++);
				oCrypt_door = GetObjectByTag("crypt_door", int13);
				}
				object oRev_end = GetObjectByTag("rev_end", 0);
				if ((!GetIsObjectValid(oRev_end))) {
					AurPostString("k_inc_korriban: rev_end DOES NOT EXIST", 8, 8, 8.0);
				return;
				}
				AurPostString("k_inc_korriban: Play Kreia's congratulations", 8, 9, 8.0);
				AssignCommand(oRev_end, ClearAllActions());
				AssignCommand(oRev_end, ActionWait(2.0));
				AssignCommand(oRev_end, ActionStartConversation(GetFirstPC(), "kreia_tm", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
	}
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 1:
			AurPostString("711kor_ud: 3RD VISION QUEST SUCCESS!", 5, 15, 5.0);
			sub1();
			break;
		case 2:
			AurPostString("711kor_ud: 3RD VISION QUEST FAILURE!", 5, 16, 5.0);
			sub2();
			break;
	}
}