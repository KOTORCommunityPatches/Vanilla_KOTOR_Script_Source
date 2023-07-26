#include "k_inc_tar"
#include "k_inc_generic"

void PlotMove(object oNPC, float fDelay) {
	ClearAllActions();
	ActionWait(fDelay);
	ActionJumpToObject(oNPC, 0);
	ActionDoCommand(SetCommandable(TRUE));
	SetCommandable(FALSE);
}

void DisableAI() {
	GN_SetSpawnInCondition(SW_FLAG_AI_OFF, TRUE);
	ClearAllActions();
}

void main() {
	
	location lLocation1;
	object oDueler;
	int nGlobal;
	int nNPCID;
	object oNPC;
	string sString1;
	
	switch (GetGlobalNumber("tar_duel"))
		{
			case 0:
				oDueler = GetObjectByTag("deadeyedun021", 0);
				break;
			case 1:
				oDueler = GetObjectByTag("gerlontwof021", 0);
				break;
			case 2:
				oDueler = GetObjectByTag("ice021", 0);
				break;
			case 3:
				oDueler = GetObjectByTag("marl021", 0);
				break;
			case 4:
				oDueler = GetObjectByTag("twitch021", 0);
				break;
			case 6:
				SetGlobalBoolean("Tar_DuelOver", FALSE);
				SetGlobalBoolean("Tar_DuelLost", FALSE);
				DestroyObject(GetObjectByTag("Bendakstar021", 0));
				oDueler = CreateObject(OBJECT_TYPE_CREATURE, "tar02_bendak021", GetLocation(GetObjectByTag("tar02_wpopparena2", 0)));
				break;
		}
	
	SetGlobalLocation("TAR_DUELIST_START", GetLocation(oDueler));
	
	Db_PostString("PREP DUELRING", 5, 5, 5.0);
	
	SetGlobalBoolean("TAR_DUELINPROGRESS", TRUE);
	
	if (GetGlobalNumber("tar_duel") < 6)
		{
			SetMinOneHP(GetFirstPC(), TRUE);
			SetMinOneHP(oDueler, TRUE);
			SetPlotFlag(oDueler, FALSE);
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(GetMaxHitPoints(oDueler) - GetCurrentHitPoints(oDueler)), oDueler);
		}
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(GetMaxHitPoints(GetFirstPC()) - GetCurrentHitPoints(GetFirstPC())), GetFirstPC());
	
	SetGlobalNumber("TAR_ARENANPCS", GetPartyMemberCount());
	
	nGlobal = 0;
	
	while (GetPartyMemberCount() > 1)
		{
			nNPCID = 0;
			
			while (nNPCID <= 8)
				{
					if (IsNPCPartyMember(nNPCID))
						{
							if (UT_GetNPCCode(GetPartyMemberByIndex(1)) == nNPCID)
								{
									oNPC = GetPartyMemberByIndex(1);
								}
								else if (UT_GetNPCCode(GetPartyMemberByIndex(2)) == nNPCID)
									{
										oNPC = GetPartyMemberByIndex(2);
									}
									else
										{
											Db_PostString("NPC NOT FOUND", 5, 8, 5.0);
											oNPC = OBJECT_INVALID;
										}
							
							SetGlobalNumber("TAR_ARENANPC" + IntToString(nGlobal), nNPCID);
							
							RemovePartyMember(nNPCID);
							SetCommandable(TRUE, oNPC);
							AssignCommand(oNPC, DisableAI());
							
							nGlobal++;
						}
					
					nNPCID++;
				}
		}
	
	SetGlobalFadeOut(0.0, 1.0);
	
	ActionPauseConversation();
	
	AssignCommand(oDueler, PlotMove(GetObjectByTag("tar02_wpopparena2", 0), 1.0));
	
	DelayCommand(1.0, AssignCommand(GetFirstPC(), ActionJumpToLocation(GetLocation(GetObjectByTag("tar02_wppcarena2", 0)))));
	
	ActionWait(1.0);
	ActionResumeConversation();
}
