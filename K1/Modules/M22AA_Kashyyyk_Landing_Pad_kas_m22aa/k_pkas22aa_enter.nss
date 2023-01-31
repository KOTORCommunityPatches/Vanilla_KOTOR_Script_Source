#include "k_inc_kas"

void Spawn_Komad() {
	
	object oWP_Komad = GetWaypointByTag("kas22_komadspawn");
	location lKomad = GetLocation(oWP_Komad);
	
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_xkomad_01", lKomad, 0);
}

void Spawn_Cage_Guard() {
	
	object oWP_Guard = GetObjectByTag("kas22_cageguard", 0);
	location lGuard = GetLocation(oWP_Guard);
	
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_xgczerk_01", lGuard, 0);
}

void Spawn_LS_Ending_NPCs() {
	
	object oWP_NPC01 = GetWaypointByTag("kas22_wp_reb_01");
	object oWP_NPC02 = GetWaypointByTag("kas22_wp_reb_02");
	object oWP_NPC03 = GetWaypointByTag("kas22_wp_reb_03");
	object oWP_NPC04 = GetWaypointByTag("kas22_wp_reb_04");
	object oWP_NPC05 = GetWaypointByTag("kas22_wp_reb_05");
	object oWP_NPC06 = GetWaypointByTag("kas22_wp_reb_06");
	object oWP_NPC10 = GetWaypointByTag("kas22_wp_reb_10");
	object oWP_NPC11 = GetWaypointByTag("kas22_wp_reb_11");
	object oWP_NPC12 = GetWaypointByTag("kas22_wp_reb_12");
	object oWP_NPC13 = GetWaypointByTag("kas22_wp_reb_13");
	object oWP_NPC14 = GetWaypointByTag("kas22_wp_reb_14");
	object oWP_NPC15 = GetWaypointByTag("kas22_wp_reb_15");
	object oWP_NPC16 = GetWaypointByTag("kas22_wookguard1");
	object oWP_NPC17 = GetWaypointByTag("kas22_wookguard2");
	location lNPC01 = GetLocation(oWP_NPC01);
	location lNPC02 = GetLocation(oWP_NPC02);
	location lNPC03 = GetLocation(oWP_NPC03);
	location lNPC04 = GetLocation(oWP_NPC04);
	location lNPC05 = GetLocation(oWP_NPC05);
	location lNPC06 = GetLocation(oWP_NPC06);
	location lNPC07 = GetLocation(oWP_NPC10);
	location lNPC08 = GetLocation(oWP_NPC11);
	location lNPC09 = GetLocation(oWP_NPC12);
	location lNPC10 = GetLocation(oWP_NPC13);
	location lNPC11 = GetLocation(oWP_NPC14);
	location lNPC12 = GetLocation(oWP_NPC15);
	location lNPC13 = GetLocation(oWP_NPC16);
	location lNPC14 = GetLocation(oWP_NPC17);
	
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_rebczer_01", lNPC01, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_rebczer_02", lNPC02, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_rebczer_03", lNPC03, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookfht_01", lNPC04, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookfht_02", lNPC05, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookfht_03", lNPC06, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookfht_10", lNPC07, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookfht_11", lNPC08, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookfht_12", lNPC09, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_rebczer_10", lNPC10, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_rebczer_11", lNPC11, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_rebczer_12", lNPC12, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookgrd_01", lNPC13, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas22_wookgrd_01", lNPC14, 0);
}

void main() {
	
	object oJanos = GetObjectByTag("kas22_janos_01", 0);
	object oWP_Janos = GetWaypointByTag("WP_kas22_janos_01_01");
	object oEntering = GetEnteringObject();
	
	if (GetIsObjectValid(oJanos) && GetJanosPaidLocal(oJanos) == TRUE && GetJanosOfficeLocal(oJanos) == FALSE)
		{
			GN_MoveToLastWayPoint(oJanos);
		}
		else if (GetIsObjectValid(oJanos) == TRUE && GetJanosPaidLocal(oJanos) == FALSE && GetJanosOfficeLocal(oJanos) == FALSE && GetIsPC(oEntering) == TRUE)
			{
				AssignCommand(oJanos, ActionJumpToObject(oWP_Janos));
				AssignCommand(oJanos, ActionDoCommand(SetFacing(GetFacing(oWP_Janos))));
			}
	
	if (GetChuundarDeadGlobal() == TRUE && GetWookieRebelsLocal(OBJECT_SELF) == FALSE)
		{
			object oNPC = GetFirstObjectInArea(OBJECT_SELF, OBJECT_TYPE_CREATURE);
			object oCorpse = GetObjectByTag("kas22_wookcorpse", 0);
			
			while (GetIsObjectValid(oNPC) == TRUE)
				{
					if (GetTag(oNPC) == "kas22_janos_01" || GetTag(oNPC) == "kas22_czerkag_01" || GetTag(oNPC) == "kas22_czerkag_02"
					|| GetTag(oNPC) == "kas22_czerkag_03" || GetTag(oNPC) == "kas22_czerkag_04" || GetTag(oNPC) == "kas22_czerkas_01"
					|| GetTag(oNPC) == "kas22_czerka2_01" || GetTag(oNPC) == "kas22_czerkam_01" || GetTag(oNPC) == "kas22_xczerka_01"
					|| GetTag(oNPC) == "kas22_xglobal_01" || GetTag(oNPC) == "kas22_xglobal_02" || GetTag(oNPC) == "kas22_xglobal_03"
					|| GetTag(oNPC) == "kas22_eli_01" || GetTag(oNPC) == "kas22_dasol_01" || GetTag(oNPC) == "kas22_xxpazaa_01")
						{
							DestroyObject(oNPC, 0.0, TRUE);
						}
					
					oNPC = GetNextObjectInArea(OBJECT_SELF, OBJECT_TYPE_CREATURE);
				}
			
			DelayCommand(0.2, Spawn_LS_Ending_NPCs());
			DestroyObject(oCorpse);
			SetWookieRebelsLocal(TRUE, OBJECT_SELF);
		}
	
	object oPC = GetFirstPC();
	object oDroidHead = GetItemPossessedBy(oPC, "kas24_droidhead");
	
	if (GetChuundarDeadGlobal() == TRUE && GetIsObjectValid(oDroidHead) == TRUE)
		{
			DestroyObject(oDroidHead);
		}
	
	if (GetFreyyrDeadGlobal() == TRUE && GetWookieCapturedLocal(OBJECT_SELF) == FALSE)
		{
			DelayCommand(0.2, Spawn_Cage_Guard());
			SetWookieCapturedLocal(TRUE, OBJECT_SELF);
		}
	
	if (GetGlobalBoolean("tat_KomadDead") == FALSE && GetGlobalBoolean("tat_KraytDead") == TRUE && GetGlobalBoolean("kas_FreyyrDead") == FALSE
	&& GetGlobalBoolean("kas_ChuundarDead") == FALSE && GetKomadSpawnLocal(OBJECT_SELF) == FALSE)
		{
			DelayCommand(0.2, Spawn_Komad());
			SetKomadSpawnLocal(TRUE, OBJECT_SELF);
		}
	
	if (GetChuundarDeadGlobal() == TRUE && GetJournalEntry("kas22_EliMatton") > 0 && GetJournalEntry("kas22_EliMatton") < 50)
		{
			AddJournalQuestEntry("kas22_EliMatton", 80);
		}
}