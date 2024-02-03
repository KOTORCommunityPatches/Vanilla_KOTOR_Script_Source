struct structtype1 {
	float float1;
	float float3;
};

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
	int intGLOB_28 = 1001;
	int intGLOB_29 = 1002;
	int intGLOB_30 = 1003;
	int intGLOB_31 = 1004;
	int intGLOB_32 = 1005;
	int intGLOB_33 = 1006;
	int intGLOB_34 = 1007;
	int intGLOB_35 = 1008;
	int intGLOB_36 = 1009;
	int intGLOB_37 = 1010;
	int intGLOB_38 = 1011;
	int intGLOB_39 = 1012;
	int intGLOB_40 = 2001;
	int intGLOB_41 = 2002;
	int intGLOB_42 = 2003;
	int intGLOB_43 = 2004;
	int intGLOB_44 = 2005;
	int intGLOB_45 = 2006;
	int intGLOB_46 = 2007;
	int intGLOB_47 = 2008;
	int intGLOB_48 = 2009;
	int intGLOB_49 = 2010;
	int intGLOB_50 = 2011;
	int intGLOB_51 = 2012;
	int intGLOB_52 = 2013;
	int intGLOB_53 = 2014;
	int intGLOB_54 = 3001;
	int intGLOB_55 = 3002;
	int intGLOB_56 = 3003;
	int intGLOB_57 = 4001;

// Prototypes
void sub4();
void sub3();
void sub2();
void sub1();

void sub4() {
	object oNPC;
	int int1 = 0;
	int1;
	while ((int1 < 3)) {
		oNPC = GetPartyMemberByIndex(int1);
		if (GetIsObjectValid(oNPC)) {
			ApplyEffectToObject(0, EffectHeal(500), oNPC, 0.0);
			ApplyEffectToObject(0, EffectHealForcePoints(500), oNPC, 0.0);
		}
		(int1++);
	}
}

void sub3() {
	int int1;
	int int2 = 25;
	int1 = 0;
	while ((int1 <= int2)) {
		{
			object oG_merc_west = GetObjectByTag("g_merc_west", int1);
			object object3 = GetObjectByTag("g_merc_west", int1);
			object oG_merc_east = GetObjectByTag("g_merc_east", int1);
			if ((GetGlobalNumber("601DAN_Side") == 1)) {
				ChangeToStandardFaction(oG_merc_west, 1);
				ChangeToStandardFaction(object3, 1);
				ChangeToStandardFaction(oG_merc_east, 1);
			}
			if ((GetGlobalNumber("601DAN_Side") == 2)) {
				ChangeToStandardFaction(oG_merc_west, 2);
				ChangeToStandardFaction(object3, 2);
				ChangeToStandardFaction(oG_merc_east, 2);
			}
		}
		(int1++);
	}
}

void sub2() {
	if (GetGlobalBoolean("601DAN_PC_DOOR_DEFEND")) {
		location location1 = Location(Vector(286.2346, 119.61914, 7.9642), 0.0);
		location location3 = Location(Vector(291.2346, 120.61914, 7.4942), 0.0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az1")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az3")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az5")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az7")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_e_merc_az9")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az1")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az2")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az3")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az4")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az5")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az6")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az7")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az8")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az9")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az10")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_w_merc_az11")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_w_merc_az12")), 0);
		CreateObject(1, "g_merc_az003", location1, 0);
		CreateObject(1, "g_merc_az001", location3, 0);
	}
	else {
		location location22 = Location(Vector(390.14062, 113.19557, 7.04693), 180.0);
		location location24 = Location(Vector(402.91034, 105.89362, 9.10341), 180.0);
		location location26 = Location(Vector(391.03177, 119.61914, 6.8742), 180.0);
		location location28 = Location(Vector(395.03177, 124.61914, 6.8742), 180.0);
		location location30 = Location(Vector(394.2346, 124.61914, 6.8742), 180.0);
		location location32 = Location(Vector(393.2346, 125.61914, 6.8742), 180.0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az1")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az2")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az3")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az4")), 0);
		CreateObject(1, "g_merc_az002", GetLocation(GetWaypointByTag("sp_w_merc_az5")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_e_merc_az1")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_e_merc_az2")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_e_merc_az3")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_e_merc_az4")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_e_merc_az5")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_e_merc_az6")), 0);
		CreateObject(1, "g_merc_az001", GetLocation(GetWaypointByTag("sp_e_merc_az7")), 0);
		CreateObject(1, "g_merc_az003", GetLocation(GetWaypointByTag("sp_e_merc_az8")), 0);
		CreateObject(1, "g_merc_az001", location22, 0);
		CreateObject(1, "g_merc_az003", location24, 0);
		CreateObject(1, "g_merc_az003", location26, 0);
		CreateObject(1, "g_merc_az003", location28, 0);
		CreateObject(1, "g_merc_az001", location30, 0);
		CreateObject(1, "g_merc_az003", location32, 0);
	}
}

void sub1() {
	int int1 = 0;
	object oNPC = GetPartyMemberByIndex(int1);
	while (GetIsObjectValid(oNPC)) {
		if ((GetCurrentHitPoints(oNPC) < 1)) {
			ApplyEffectToObject(0, EffectResurrection(0), oNPC, 0.0);
			ApplyEffectToObject(0, EffectHeal(1), oNPC, 0.0);
		}
		(int1++);
		oNPC = GetPartyMemberByIndex(int1);
	}
}

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	sub1();
	sub2();
	sub3();
	sub4();
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(object5, ClearAllActions());
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}

