// Globals
	int intGLOB_1 = 1001;
	int intGLOB_2 = 1002;
	int intGLOB_3 = 1003;
	int intGLOB_4 = 1004;
	int intGLOB_5 = 1005;
	int intGLOB_6 = 1006;
	int intGLOB_7 = 1007;
	int intGLOB_8 = 1008;
	int intGLOB_9 = 1009;
	int intGLOB_10 = 1010;
	int intGLOB_11 = 1011;
	int intGLOB_12 = 1012;
	int intGLOB_13 = 2001;
	int intGLOB_14 = 2002;
	int intGLOB_15 = 2003;
	int intGLOB_16 = 2004;
	int intGLOB_17 = 2005;
	int intGLOB_18 = 2006;
	int intGLOB_19 = 2007;
	int intGLOB_20 = 2008;
	int intGLOB_21 = 2009;
	int intGLOB_22 = 2010;
	int intGLOB_23 = 2011;
	int intGLOB_24 = 2012;
	int intGLOB_25 = 2013;
	int intGLOB_26 = 2014;
	int intGLOB_27 = 3001;
	int intGLOB_28 = 3002;
	int intGLOB_29 = 3003;
	int intGLOB_30 = 4001;
	int intGLOB_31 = 0;
	int intGLOB_32 = 1;
	int intGLOB_33 = 2;
	int intGLOB_34 = 3;
	int intGLOB_35 = 4;
	int intGLOB_36 = 5;
	int intGLOB_37 = 6;
	int intGLOB_38 = 7;
	int intGLOB_39 = 8;
	int intGLOB_40 = 9;
	int intGLOB_41 = 10;
	int intGLOB_42 = 11;
	int intGLOB_43 = 12;
	int intGLOB_44 = 13;
	int intGLOB_45 = 14;
	int intGLOB_46 = 15;
	int intGLOB_47 = 16;
	int intGLOB_48 = 17;
	int intGLOB_49 = 18;
	int intGLOB_50 = 19;
	int intGLOB_51 = 1100;
	int intGLOB_52 = (-6);
	int intGLOB_53 = (-5);
	int intGLOB_54 = (-4);
	int intGLOB_55 = (-2);
	int intGLOB_56 = (-1);
	int intGLOB_57 = 0;

// Prototypes
void sub2(object objectParam1, int intParam2);
void sub1(object objectParam1);

void sub2(object objectParam1, int intParam2) {
	int nAlign = GetGoodEvilValue(objectParam1);
	int int3;
	if ((((intParam2 == intGLOB_52) || (intParam2 == intGLOB_53)) || (intParam2 == intGLOB_54))) {
		int3 = 3;
	}
	else {
		int3 = 2;
	}
	int int4;
	int int5;
	if ((nAlign >= 85)) {
		int5 = 1;
	}
	else {
		if (((nAlign < 85) && (nAlign > 60))) {
			int5 = 2;
		}
		else {
			if (((nAlign <= 60) && (nAlign >= 40))) {
				int5 = 3;
			}
			else {
				if (((nAlign < 40) && (nAlign >= 15))) {
					int5 = 4;
				}
				else {
					int5 = 5;
				}
			}
		}
	}
	int4 = ((int5 + intParam2) * 2);
	if ((int4 < 0)) {
		int4 = (int4 * (-1));
	}
	if ((int4 == 0)) {
		int4 = 1;
	}
	if (((int5 == 1) && (intParam2 == intGLOB_55))) {
		int4 = 1;
	}
	else {
		if (((int5 == 5) && (intParam2 == intGLOB_54))) {
			int4 = 1;
		}
	}
	AurPostString(("Hit = " + IntToString(int4)), 5, 5, 4.0);
	AdjustAlignment(objectParam1, int3, int4, 0);
}

void sub1(object objectParam1) {
	sub2(objectParam1, intGLOB_54);
}

void main() {
	ExecuteScript("k_ai_master", OBJECT_SELF, intGLOB_7);
	if ((GetGlobalNumber("202TEL_Batono") == 9)) {
		AddJournalQuestEntry("batono", 66, 0);
		SetGlobalNumber("202TEL_Batono", 10);
	}
	if ((GetGlobalNumber("202TEL_Batono") == 8)) {
		SetGlobalNumber("202TEL_Batono", 11);
		if (GetIsObjectValid(GetObjectByTag("merc1_batono", 0))) {
			SetLocalBoolean(GetObjectByTag("merc1_batono", 0), 37, 1);
			AssignCommand(GetObjectByTag("merc1_batono", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("merc1_batono", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			if (GetIsObjectValid(GetObjectByTag("merc2_batono", 0))) {
				SetLocalBoolean(GetObjectByTag("merc2_batono", 0), 37, 1);
				AssignCommand(GetObjectByTag("merc2_batono", 0), ClearAllActions());
				AssignCommand(GetObjectByTag("merc2_batono", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			else {
				AddJournalQuestEntry("batono", 63, 0);
			}
		}
	}
	sub1(GetPartyLeader());
}

