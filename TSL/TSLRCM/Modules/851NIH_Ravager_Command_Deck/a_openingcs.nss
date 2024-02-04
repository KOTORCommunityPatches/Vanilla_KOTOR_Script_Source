// Globals
	int intGLOB_1 = 1;
	int intGLOB_2 = 2;
	int intGLOB_3 = 3;
	int intGLOB_4 = 4;
	int intGLOB_5 = 5;
	int intGLOB_6 = 6;
	int intGLOB_7 = 3;
	int intGLOB_8 = 4;
	int intGLOB_9 = 5;
	int intGLOB_10 = 6;
	int intGLOB_11 = 7;
	int intGLOB_12 = 8;
	int intGLOB_13 = 9;
	int intGLOB_14 = 10;
	int intGLOB_15 = 11;
	int intGLOB_16 = 1;
	int intGLOB_17 = 2;
	int intGLOB_18 = 3;
	int intGLOB_19 = 4;
	int intGLOB_20 = 5;
	int intGLOB_21 = 6;
	int intGLOB_22 = 7;
	int intGLOB_23 = 8;
	int intGLOB_24 = 9;
	int intGLOB_25 = 10;
	int intGLOB_26 = 11;
	int intGLOB_27 = 12;
	int intGLOB_28 = 13;
	int intGLOB_29 = 14;
	int intGLOB_30 = 15;
	int intGLOB_31 = 16;
	int intGLOB_32 = 17;
	int intGLOB_33 = 18;
	int intGLOB_34 = 19;
	int intGLOB_35 = 20;
	int intGLOB_36 = 21;
	int intGLOB_37 = 22;
	int intGLOB_38 = 23;
	int intGLOB_39 = 24;
	int intGLOB_40 = 25;
	int intGLOB_41 = 26;
	int intGLOB_42 = 27;
	int intGLOB_43 = 28;
	int intGLOB_44 = 29;
	int intGLOB_45 = 30;
	int intGLOB_46 = 31;
	int intGLOB_47 = 32;
	int intGLOB_48 = 84;
	int intGLOB_49 = 0;
	int intGLOB_50 = 1;
	int intGLOB_51 = 2;
	int intGLOB_52 = 29;
	int intGLOB_53 = 65;
	int intGLOB_54 = 98;
	int intGLOB_55 = 99;
	int intGLOB_56 = 100;
	int intGLOB_57 = 101;
	int intGLOB_58 = 103;
	int intGLOB_59 = 104;
	int intGLOB_60 = 105;
	int intGLOB_61 = 106;
	int intGLOB_62 = 102;
	int intGLOB_63 = 107;
	int intGLOB_64 = 108;
	int intGLOB_65 = 102;
	int intGLOB_66 = 107;
	int intGLOB_67 = 108;
	int intGLOB_68 = 109;
	int intGLOB_69 = 15;
	int intGLOB_70 = 10;
	int intGLOB_71 = 5;
	int intGLOB_72 = 2;
	int intGLOB_73;
	int intGLOB_74;
	int intGLOB_75;
	object objectGLOB_1;
	int intGLOB_76;
	int intGLOB_77;
	int intGLOB_78;
	int intGLOB_79;
	int intGLOB_80;
	int intGLOB_81;
	int intGLOB_82 = 1;
	int intGLOB_83 = 2;
	int intGLOB_84 = 3;
	int intGLOB_85 = 20;
	int intGLOB_86 = 21;
	int intGLOB_87 = 22;
	int intGLOB_88 = 23;
	int intGLOB_89 = 24;
	int intGLOB_90 = 25;
	int intGLOB_91 = 26;
	int intGLOB_92 = 27;
	int intGLOB_93 = 28;
	int intGLOB_94 = 66;
	int intGLOB_95 = 67;
	int intGLOB_96 = 68;
	int intGLOB_97 = 69;
	int intGLOB_98 = 70;
	int intGLOB_99 = 71;
	int intGLOB_100 = 72;
	int intGLOB_101 = 73;
	int intGLOB_102 = 74;
	int intGLOB_103 = 75;
	int intGLOB_104 = 76;
	int intGLOB_105 = 77;
	int intGLOB_106 = 78;
	int intGLOB_107 = 79;
	int intGLOB_108 = 80;
	int intGLOB_109 = 81;
	int intGLOB_110 = 82;
	int intGLOB_111 = 83;
	int intGLOB_112 = 85;
	int intGLOB_113 = 86;
	int intGLOB_114 = 87;
	int intGLOB_115 = 88;
	int intGLOB_116 = 89;
	int intGLOB_117 = 90;
	int intGLOB_118 = 91;
	int intGLOB_119 = 92;
	int intGLOB_120 = 94;
	int intGLOB_121 = 95;
	int intGLOB_122 = 96;
	int intGLOB_123 = 97;
	int intGLOB_124 = 1;
	int intGLOB_125 = 2;
	int intGLOB_126 = 3;
	int intGLOB_127 = 4;
	int intGLOB_128 = 5;

// Prototypes
void sub10();
void sub9();
void sub8();
void sub7(object objectParam1, int intParam2);
void sub6(object objectParam1, object objectParam2, int intParam3);
void sub5(object objectParam1);
void sub4(object objectParam1);
void sub3(object objectParam1, int intParam2);
void sub2();
void sub1();

void sub10() {
	object oP_mand = SpawnAvailableNPC(2, GetLocation(GetObjectByTag("sp_mandalore_intro", 0)));
	if ((!GetIsObjectValid(oP_mand))) {
		oP_mand = CreateObject(1, "p_mand", GetLocation(GetObjectByTag("sp_mandalore_intro", 0)), 0);
	}
	sub3(oP_mand, 2);
}

void sub9() {
	int int1 = 0;
	while ((int1 < 2)) {
		{
			object oMandalorianEliteCS = GetObjectByTag("MandalorianEliteCS", int1);
			AssignCommand(oMandalorianEliteCS, ActionDoCommand(sub6(oMandalorianEliteCS, GetObjectByTag("SithCommandoCS", Random(5)), 1)));
		}
		(int1++);
	}
}

void sub8() {
	int int1 = 0;
	while ((int1 < 3)) {
		{
			object oMandalorianCS = GetObjectByTag("MandalorianCS", int1);
			AssignCommand(oMandalorianCS, ActionDoCommand(sub6(oMandalorianCS, GetObjectByTag("SithCommandoCS", 0), 1)));
		}
		(int1++);
	}
}

void sub7(object objectParam1, int intParam2) {
	if (intParam2) {
		SetMinOneHP(objectParam1, 0);
		ApplyEffectToObject(0, EffectDamage((GetCurrentHitPoints(objectParam1) - 1), 8, 0), objectParam1, 0.0);
	}
	ApplyEffectToObject(1, EffectAssuredHit(), OBJECT_SELF, 3.0);
	ActionAttack(objectParam1, 0);
}

void sub6(object objectParam1, object objectParam2, int intParam3) {
	if (((!GetIsObjectValid(objectParam1)) || (!GetIsObjectValid(objectParam2)))) {
		return;
	}
	AssignCommand(objectParam1, ActionDoCommand(sub7(objectParam2, intParam3)));
}

void sub5(object objectParam1) {
	effect efVisual = EffectVisualEffect(3019, 0);
	ApplyEffectAtLocation(0, efVisual, GetLocation(objectParam1), 0.0);
}

void sub4(object objectParam1) {
	effect efVisual = EffectVisualEffect(3003, 0);
	ApplyEffectAtLocation(0, efVisual, GetLocation(objectParam1), 0.0);
}

void sub3(object objectParam1, int intParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	SetLocalBoolean(objectParam1, intGLOB_114, 1);
	AurPostString(("TURNING AI OFF - " + GetTag(objectParam1)), 5, 5, 5.0);
	ChangeToStandardFaction(objectParam1, intParam2);
	SetMinOneHP(objectParam1, 1);
}

void sub2() {
	int int1 = 0;
	int1 = 0;
	while ((int1 < 9)) {
		{
			object oSithCommandoCS = GetObjectByTag("SithCommandoCS", int1);
			float float1 = (IntToFloat(Random(100)) / 50.0);
			if ((Random(2) == 0)) {
				DelayCommand(float1, AssignCommand(oSithCommandoCS, ActionPlayAnimation(100, 1.0, 1.0)));
			}
			else {
				DelayCommand(float1, AssignCommand(oSithCommandoCS, ActionPlayAnimation(101, 1.0, 1.0)));
			}
		}
		(int1++);
	}
	int1 = 0;
	while ((int1 < 3)) {
		{
			object oSithExplosion = GetObjectByTag("SithExplosion", int1);
			float float3 = (IntToFloat(Random(100)) / 50.0);
			if ((Random(2) == 0)) {
				DelayCommand(float3, AssignCommand(oSithExplosion, ActionPlayAnimation(100, 1.0, 1.0)));
			}
			else {
				DelayCommand(float3, AssignCommand(oSithExplosion, ActionPlayAnimation(101, 1.0, 1.0)));
			}
		}
		(int1++);
	}
}

void sub1() {
	int int1 = 0;
	int1 = 0;
	while ((int1 < 9)) {
		{
			object oSithExplosion = GetObjectByTag("SithCommandoCS", int1);
			float float1 = (IntToFloat(Random(100)) / 100.0);
			DelayCommand(float1, CreatureFlourishWeapon(oSithExplosion));
			oSithExplosion = GetObjectByTag("SithExplosion", int1);
			DelayCommand(float1, CreatureFlourishWeapon(oSithExplosion));
		}
		(int1++);
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			{
				int int3 = 0;
				float float1 = 0.0;
				int3 = 0;
				while ((int3 < 5)) {
				{
					object oN_sithcmndo001 = CreateObject(1, "n_sithcmndo001", GetLocation(GetObjectByTag(("sp_intro_sith" + IntToString((int3 + 1))), 0)), 0);
					object object4 = GetObjectByTag(("wp_sith" + IntToString((int3 + 1))), 0);
					DelayCommand(float1, AssignCommand(oN_sithcmndo001, ActionForceMoveToObject(object4, 1, 1.0, 30.0)));
					DelayCommand((float1 + 0.1), AssignCommand(oN_sithcmndo001, ActionDoCommand(SetFacing(GetFacing(object4)))));
					float1 = (float1 + 0.5);
				}
					(int3++);
				}
				DelayCommand(6.0, SetDialogPlaceableCamera(3));
				DelayCommand(7.5, sub1());
				DelayCommand(8.3, SoundObjectPlay(GetObjectByTag("ShipHit1", 0)));
				DelayCommand(8.5, ApplyEffectToObject(1, EffectVisualEffect(6002, 0), GetFirstPC(), 2.0));
				DelayCommand(9.1, sub2());
				DelayCommand(10.5, SetDialogPlaceableCamera(1));
				DelayCommand(13.0, ActionResumeConversation());
			}
			break;
		case 1:
			{
				int int4;
				ClearAllActions();
				ActionPauseConversation();
				int4 = 0;
				while ((int4 < 9)) {
				{
					object oSithCommandoCS = GetObjectByTag("SithCommandoCS", int4);
					sub3(oSithCommandoCS, 4);
				}
					(int4++);
				}
				int4 = 0;
				while ((int4 < 3)) {
				{
					object oMandalorianCS = GetObjectByTag("MandalorianCS", int4);
					sub3(oMandalorianCS, 2);
				}
					(int4++);
				}
				ApplyEffectToObject(1, EffectVisualEffect(6002, 0), GetFirstPC(), 2.0);
				sub4(GetObjectByTag("wp_boom", 0));
				int4 = 1;
				while ((int4 < 8)) {
				{
					object oWp_boom = GetObjectByTag("wp_boom", int4);
					sub5(oWp_boom);
				}
					(int4++);
				}
				AurPostString("START FIRE!! BURN BRUN BURN!", 5, 20, 10.0);
				PlayRoomAnimation("851nih02", 8);
				SoundObjectPlay(GetObjectByTag("Fire_Crackle", 0));
				SoundObjectPlay(GetObjectByTag("Fire_Crackle", 1));
				SoundObjectPlay(GetObjectByTag("Fire_Steam_01", 0));
				SoundObjectPlay(GetObjectByTag("Fire_Steam_02", 0));
				object oWp_explosion = GetWaypointByTag("wp_explosion");
				int4 = 0;
				while ((int4 < 3)) {
				{
					object oSithExplosion = GetObjectByTag("SithExplosion", int4);
					effect efPush = EffectForcePushTargeted(GetLocation(oWp_explosion), 0);
					DelayCommand(0.2, ApplyEffectToObject(0, efPush, oSithExplosion, 0.0));
					DelayCommand(1.1, ApplyEffectToObject(2, EffectDeath(0, 1, 0), oSithExplosion, 0.0));
				}
					(int4++);
				}
				int4 = 0;
				while ((int4 < 9)) {
				{
					object object24 = GetObjectByTag("SithCommandoCS", int4);
					float float3 = (IntToFloat(Random(100)) / 100.0);
					DelayCommand((1.0 + float3), AssignCommand(object24, ActionDoCommand(SetFacing(180.0))));
					DelayCommand((1.0 + float3), AssignCommand(object24, ActionDoCommand(sub6(object24, GetObjectByTag("MandalorianCS", Random(3)), 0))));
				}
					(int4++);
				}
				int4 = 0;
				while ((int4 < 3)) {
				{
					object object27 = GetObjectByTag("MandalorianCS", int4);
					DelayCommand(1.5, AssignCommand(object27, ActionDoCommand(sub6(object27, GetObjectByTag("SithCommandoCS", 5), 1))));
				}
					(int4++);
				}
				DelayCommand(3.0, ClearAllActions());
				DelayCommand(3.0, ActionResumeConversation());
			}
			break;
		case 2:
			ActionPauseConversation();
			{
				int int7 = 0;
				while ((int7 < 9)) {
				{
					object object30 = GetObjectByTag("SithCommandoCS", int7);
					AssignCommand(object30, ActionDoCommand(sub6(object30, GetObjectByTag("MandalorianCS", Random(3)), 0)));
					AssignCommand(object30, ActionDoCommand(sub6(object30, GetObjectByTag("MandalorianCS", Random(3)), 0)));
					AssignCommand(object30, ActionDoCommand(sub6(object30, GetObjectByTag("MandalorianCS", Random(3)), 0)));
				}
					(int7++);
				}
				int7 = 0;
				while ((int7 < 3)) {
				{
					object object35 = GetObjectByTag("MandalorianCS", int7);
					AssignCommand(object35, ActionDoCommand(sub6(object35, GetObjectByTag("SithCommandoCS", Random(8)), 0)));
				}
					(int7++);
				}
				object object38 = GetObjectByTag("MandalorianCS", 0);
				SetMinOneHP(object38, 0);
				AssignCommand(object38, ClearAllActions());
				DelayCommand(1.0, AssignCommand(object38, ActionForceMoveToObject(GetObjectByTag("wp_mandalorian_death", 0), 1, 1.0, 30.0)));
				DelayCommand(1.0, AssignCommand(object38, ActionDoCommand(ApplyEffectToObject(2, EffectDeath(0, 1, 0), object38, 0.0))));
				object object41 = GetObjectByTag("MandalorianCS", 1);
				object object43 = GetObjectByTag("MandalorianCS", 2);
				DelayCommand(2.0, AssignCommand(object41, ActionForceMoveToObject(GetObjectByTag("wp_mandalorian_move1", 0), 1, 1.0, 30.0)));
				DelayCommand(2.0, AssignCommand(object43, ActionForceMoveToObject(GetObjectByTag("wp_mandalorian_move2", 0), 1, 1.0, 30.0)));
				DelayCommand(3.0, sub8());
				DelayCommand(6.0, ActionResumeConversation());
			}
			break;
		case 3:
			ClearAllActions();
			ActionPauseConversation();
			{
				object object47 = GetObjectByTag("MandalorianCS", 0);
				object object49 = GetObjectByTag("MandalorianCS", 1);
				DelayCommand(1.0, AssignCommand(object47, ClearAllActions()));
				DelayCommand(0.5, AssignCommand(object49, ClearAllActions()));
				DelayCommand(1.0, AssignCommand(object47, ActionForceMoveToObject(GetObjectByTag("wp_mandalorian_move1a", 0), 1, 1.0, 30.0)));
				DelayCommand(0.5, AssignCommand(object49, ActionForceMoveToObject(GetObjectByTag("wp_mandalorian_move2a", 0), 1, 1.0, 30.0)));
				object oN_mandalorian002 = CreateObject(1, "n_mandalorian002", GetLocation(GetObjectByTag("sp_mandalorian1", 0)), 0);
				object object56 = CreateObject(1, "n_mandalorian002", GetLocation(GetObjectByTag("sp_mandalorian2", 0)), 0);
				sub3(oN_mandalorian002, 2);
				sub3(object56, 2);
				DelayCommand(2.5, AssignCommand(oN_mandalorian002, ActionForceMoveToObject(GetWaypointByTag("wp_mandalorian_move3"), 1, 1.0, 30.0)));
				DelayCommand(2.5, AssignCommand(object56, ActionForceMoveToObject(GetWaypointByTag("wp_mandalorian_move4"), 1, 1.0, 30.0)));
				int int12 = 0;
				int12 = 0;
				while ((int12 < 5)) {
				{
					object object61 = GetObjectByTag("SithCommandoCS", int12);
					DelayCommand(2.5, AssignCommand(object61, ActionDoCommand(sub6(object61, GetObjectByTag("MandalorianEliteCS", Random(2)), 0))));
				}
					(int12++);
				}
				DelayCommand(4.0, sub9());
				DelayCommand(5.0, sub10());
				int12 = 0;
				while ((int12 < 9)) {
				{
					object object64 = GetObjectByTag("SithCommandoCS", int12);
					SetMinOneHP(object64, 0);
					DelayCommand(7.8, ApplyEffectToObject(2, EffectDeath(0, 1, 0), object64, 0.0));
				}
					(int12++);
				}
				DelayCommand(8.0, ActionResumeConversation());
			}
			break;
		case 4:
			ClearAllActions();
			ActionPauseConversation();
			{
				int int14 = 0;
				int14 = 0;
				while ((int14 < 3)) {
					DestroyObject(GetObjectByTag("MandalorianCS", int14), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("MandalorianEliteCS", int14), 0.0, 0, 0.0, 0);
					(int14++);
				}
				effect effect8 = EffectMovementSpeedDecrease(30);
				object oMand = GetObjectByTag("Mand", 0);
				ApplyEffectToObject(2, effect8, oMand, 0.0);
				DelayCommand(1.0, AssignCommand(oMand, ActionForceMoveToObject(GetObjectByTag("wp_mandalore_intro", 0), 0, 1.0, 30.0)));
				DelayCommand(10.0, AssignCommand(oMand, ActionPlayAnimation(100, 1.0, 0.0)));
				DelayCommand(12.0, AssignCommand(oMand, ActionPlayAnimation(101, 1.0, 0.0)));
				DelayCommand(15.0, SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0));
				DelayCommand(16.0, ActionResumeConversation());
			}
			break;
	}
}