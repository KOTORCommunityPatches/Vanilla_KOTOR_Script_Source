// Byte code does not match

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
void sub1(object objectParam1, int intParam2, int intParam3);

void sub1(object objectParam1, int intParam2, int intParam3) {
	int nLevel = GetHitDice(GetFirstPC());
	if ((intParam3 == 1)) {
		if (((((intParam2 == intGLOB_12) || (intParam2 == intGLOB_17)) || (intParam2 == intGLOB_18)) || (intParam2 == intGLOB_19))) {
			GiveXPToCreature(GetFirstPC(), (nLevel * 15));
		}
		else {
			if ((((intParam2 == intGLOB_13) || (intParam2 == intGLOB_20)) || (intParam2 == intGLOB_16))) {
				GiveXPToCreature(GetFirstPC(), (nLevel * 20));
			}
			else {
				if (((intParam2 == intGLOB_14) || (intParam2 == intGLOB_15))) {
					GiveXPToCreature(GetFirstPC(), (nLevel * 10));
				}
			}
		}
	}
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

void main() {
	if ((GetGlobalBoolean("UNK_REDHOSTILE") == 1)) {
		if ((GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "unk42_key")) == 1)) {
			ActionPlayAnimation(202, 1.0, 1.0);
			DestroyObject(GetObjectByTag("cage2f", 0), 0.0, 1, 0.0);
			sub1(GetObjectByTag("unk42_breed02", 0), 3, 1);
			if ((GetGlobalBoolean("UNK_TEMP8") == 1)) {
				ChangeToStandardFaction(GetObjectByTag("unk42_breed02", 0), 3);
			}
			else {
				if ((GetGlobalBoolean("UNK_TEMP7") == 1)) {
					AssignCommand(GetObjectByTag("unk42_breed02", 0), ActionStartConversation(GetPartyMemberByIndex(0), "", 0, 0, 0, "", "", "", "", "", ""));
				}
				else {
					SetGlobalBoolean("UNK_TEMP7", 1);
					AssignCommand(GetObjectByTag("unk42_breed02", 0), ActionStartConversation(GetPartyMemberByIndex(0), "unk42_breedx", 0, 0, 0, "", "", "", "", "", ""));
				}
			}
		}
		else {
			BarkString(OBJECT_INVALID, 42423);
		}
	}
	else {
		BarkString(OBJECT_INVALID, 42423);
	}
}