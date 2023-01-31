#include "k_inc_utility"
#include "k_inc_generic"
#include "k_inc_debug"

void ToggleAI(int nIndex, int nState) {
	SetLocalBoolean(OBJECT_SELF, nIndex, nState);
}

void SetFlag(int nIndex) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nIndex);
}

int GetFlag() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void PlaceObject(int nType, string sResRef, location sLocation) {
	object oObject = CreateObject(nType, sResRef, sLocation, FALSE);
}

void SpawnDustil() {
	
	object oWP_Locker = GetObjectByTag("k35_way_locker", 0);
	object oWP_Dustil = GetObjectByTag("k35_way_dustil", 0);
	location lDustil = GetLocation(oWP_Dustil);
	location lLocker = GetLocation(oWP_Locker);
	
	SetGlobalBoolean("KOR_DUSTIL_SPAWN", 1);
	
	PlaceObject(OBJECT_TYPE_CREATURE, "kor35_dustil", lDustil);
	PlaceObject(OBJECT_TYPE_PLACEABLE, "k35_uthar_ftlckr", lLocker);
}

int DustilFlag() {
	return GetGlobalBoolean("KOR_DUSTIL_SPAWN");
}

int ShaardanFlag() {
	return GetGlobalNumber("KOR33_SHAARDAN");
}

void main() {
	
	object oPC = GetFirstPC();
	
	if ((GetEnteringObject() == oPC))
	{
		if (((GetGlobalNumber("KOR_SHAARDAN_SWORD") == 2) && (GetGlobalNumber("KOR33_SHAARDAN") != 5)))
			{
				object oShaardanA = GetObjectByTag("kor35_shaardan", 0);
				
				if (GetIsObjectValid(oShaardanA))
					{
						object oWP_Shaardan = GetObjectByTag("k35_way_shaaswrd", 0);
						
						AssignCommand(oShaardanA, ClearAllActions());
						AssignCommand(oShaardanA, ActionJumpToObject(oWP_Shaardan, 1));
					}
			}
		
		if ((ShaardanFlag() >= 4))
			{
				object oShaardanB = GetObjectByTag("kor35_shaardan", 0);
				
				if (GetIsObjectValid(oShaardanB))
				{
					DestroyObject(oShaardanB);
				}
			}
		
		object oLashowe = GetObjectByTag("kor35_lashowe", 0);
		
		if ((GetGlobalNumber("KOR_LASHOWE_PLOT") >= 5))
			{
				if (GetIsObjectValid(oLashowe))
					{
						DestroyObject(oLashowe);
					}
			}
		
		if (((GetGlobalNumber("KOR_MEKEL_KILLED") >= 1) || (GetGlobalBoolean("KOR_MEKEL_LIGHT") == 1)))
			{
				object oMekel = GetObjectByTag("kor35_mekel", 0);
				
				if (GetIsObjectValid(oMekel))
					{
						DestroyObject(oMekel);
					}
			}
		
		if (((GetGlobalNumber("KOR_DANEL") == 2) && (DustilFlag() == FALSE)))
			{
				SpawnDustil();
				
				if (GetIsObjectValid(GetObjectByTag("kor35_dustil", 0)))
					{
						Db_PostString("Dustil created", 10, 10, 5.0);
					}
				if (GetIsObjectValid(GetObjectByTag("k35_uthar_ftlckr", 0)))
					{
						Db_PostString("Locker created", 5, 5, 5.0);
					}
			}
		
		int nGlobal = GetGlobalNumber("KOR_FINAL_TEST");
		
		if (((nGlobal > 3) && (!GetFlag())))
		{
			SetGlobalBoolean("KOR_ADD_PARTY", TRUE);
			SetFlag(TRUE);
			
			int nCount;
			int nNPCID;
			string sNPC;
			nCount = 0;
			
			while ((nCount < GetGlobalNumber("KOR_REMOVE_PCS")))
				{
					nNPCID = GetGlobalNumber(("KOR_REMOVE_PC" + IntToString(nCount)));
					Db_PostString(((("KOR_REMOVE_PC" + IntToString((nCount - 1))) + ":") + IntToString(nNPCID)), (6 + nCount), (6 + nCount), 5.0);
					
					switch (nNPCID)
						{
							case 0:
								sNPC = "Bastila";
								break;
							case 1:
								sNPC = "Cand";
								break;
							case 2:
								sNPC = "Carth";
								break;
							case 3:
								sNPC = "HK47";
								break;
							case 4:
								sNPC = "Jolee";
								break;
							case 5:
								sNPC = "Juhani";
								break;
							case 6:
								sNPC = "Mission";
								break;
							case 7:
								sNPC = "T3M4";
								break;
							case 8:
								sNPC = "Zaalbar";
								break;
						}
					
					AddPartyMember(nNPCID, GetObjectByTag(sNPC, 0));
					(nCount++);
				}
			
			object oPM1 = GetPartyMemberByIndex(1);
			object oPM2 = GetPartyMemberByIndex(2);
			object oWP_PM1 = GetObjectByTag("k35_way_npc1end", 0);
			object oWP_PM2 = GetObjectByTag("k35_way_npc2end", 0);
			location lPM1 = GetLocation(oWP_PM1);
			location lPM2 = GetLocation(oWP_PM2);
			
			AssignCommand(oPM1, ToggleAI(SW_FLAG_AI_OFF, TRUE));
			AssignCommand(oPM2, ToggleAI(SW_FLAG_AI_OFF, TRUE));
			
			UT_TeleportPartyMember(oPM1, lPM1);
			UT_TeleportPartyMember(oPM2, lPM2);
			
			AssignCommand(oPM1, ToggleAI(SW_FLAG_AI_OFF, FALSE));
			AssignCommand(oPM2, ToggleAI(SW_FLAG_AI_OFF, FALSE));
		}
		
		if (((nGlobal == 4) || (nGlobal == 7)))
			{
				object oUtharA = GetObjectByTag("kor35_utharwynn", 0);
				object oAdrenasA = GetObjectByTag("kor35_adrenas", 0);
				
				if (GetIsObjectValid(oUtharA))
					{
						DestroyObject(oUtharA);
					}
				object oYuthuraA = GetObjectByTag("kor35_yuthura", 0);
				
				if (GetIsObjectValid(oYuthuraA))
					{
						DestroyObject(oYuthuraA);
					}
				
				if (GetIsObjectValid(oAdrenasA))
					{
						DestroyObject(oAdrenasA);
					}
			}
		
		else
			{
				if ((nGlobal == 5))
					{
						object oAdrenasB = GetObjectByTag("kor35_adrenas", 0);
						
						if (GetIsObjectValid(oAdrenasB))
							{
								DestroyObject(oAdrenasB);
							}
						object oUtharB = GetObjectByTag("kor35_utharwynn", 0);
						
						if (GetIsObjectValid(oUtharB))
							{
								DestroyObject(oUtharB);
							}
					}
				else {
					if ((nGlobal == 6))
						{
							object oYuthuraB = GetObjectByTag("kor35_yuthura", 0);
							object oAdrenasC = GetObjectByTag("kor35_adrenas", 0);
							object oUtharC = GetObjectByTag("kor35_utharwynn", 0);
							object oWP_Uthar = GetObjectByTag("k35_way_utharstt", 0);
							
							if (GetIsObjectValid(oYuthuraB))
								{
									DestroyObject(oYuthuraB);
								}
							
							if (GetIsObjectValid(oAdrenasC))
								{
									DestroyObject(oAdrenasC);
								}
							
							AssignCommand(oUtharC, ActionJumpToObject(oWP_Uthar));
						}
				}
			}
		
		if (GetGlobalBoolean("KOR_END_HOSTILE"))
			{
				SetGlobalFadeOut(0.0, 2.0);
				
				object oCaptive9 = GetNearestObjectByTag("kor35_captive9", OBJECT_SELF, 1);
				
				if (GetIsObjectValid(oCaptive9))
					{
						DestroyObject(oCaptive9);
					}
				
				object oVictim = GetObjectByTag("kor35_victim", 0);
				
				if (GetIsObjectValid(oVictim))
					{
						DestroyObject(oVictim);
					}
				
				object oDuelist = GetObjectByTag("kor35_sithduel", 0);
				
				if (GetIsObjectValid(oDuelist))
					{
						DestroyObject(oDuelist);
					}
				
				object oDroid = GetObjectByTag("kor35_deaddroid", 0);
				
				if ((!GetIsDead(oDroid)))
					{
						ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oDroid);
					}
				
				object oComp = GetObjectByTag("kor35_duelcomp", 0);
				
				if (GetIsObjectValid(oComp))
					{
						DestroyObject(oComp);
					}
				
				object oTorturer = GetObjectByTag("kor35_torturer", 0);
				
				if (GetIsObjectValid(oTorturer))
					{
						DestroyObject(oTorturer);
					}
				
				DelayCommand(1.0, ChangeFactionByFaction(STANDARD_FACTION_NEUTRAL, STANDARD_FACTION_HOSTILE_1));
				
				SetGlobalFadeIn(2.0, 1.0);
				
				SetGlobalBoolean("KOR_PRISONERS_FREE", TRUE);
			}
	}
}