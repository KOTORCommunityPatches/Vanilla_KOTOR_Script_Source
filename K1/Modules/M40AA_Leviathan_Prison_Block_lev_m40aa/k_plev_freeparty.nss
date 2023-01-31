// DeNCS failed to decompile. Manual reconstruction. Partial binary match. Original script omits a variable for ActionStartConversation.

#include "k_inc_lev"

void Start_Scene() {
	
	location lPC = GetLocation(GetFirstPC());
	object oCand;
	int nJailBreaker = GetGlobalNumber("Lev_Escape");
	object oHead = GetObjectByTag("lev40_headslot", 0);
	object oBody = GetObjectByTag("lev40_bodyslot", 0);
	object oHandR = GetObjectByTag("lev40_rhandslot", 0);
	object oHandL = GetObjectByTag("lev40_lhandslot", 0);
	object oUnknown;
	object oInvis = GetObjectByTag("lev40_freetalker", 0);
	
	SetGlobalFadeOut();
	
	SwitchPlayerCharacter(-1);
	
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("lev40_wppcesc", 0), FALSE));
	
	switch (nJailBreaker)
		{
			case 4:
				{
					oCand = CreateObject(OBJECT_TYPE_CREATURE, "p_cand", lPC, FALSE);
				}
			break;
		}
	
	NoClicksFor(0.3);
	
	DelayCommand(0.1, AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE, "", "", "", "", "", "")));
}

void main() {
	
	object oCellDoor = GetObjectByTag("lev40_celldoor", 0);
	object oPtyDoor = GetObjectByTag("lev40_partycelldoor", 0);
	int nCnt;
	object oCage;
	string sPC = GetTag(GetFirstPC());
	object oInvis = GetObjectByTag("lev40_groundzero", 0);
	
	SignalEvent(oInvis, EventUserDefined(2000));
	
	AssignCommand(oCellDoor, ActionOpenDoor(oCellDoor));
	AssignCommand(oCellDoor, ActionOpenDoor(oPtyDoor));
	
	nCnt = 0;
	
	while (GetIsObjectValid(oCage = GetObjectByTag("lev40_tortcage", nCnt)))
		{
			AssignCommand(oCage, ActionPlayAnimation(ANIMATION_PLACEABLE_OPEN));
			
			nCnt++;
		}
	
	Db_PostString("ELEVATOR = 1", 5, 5 , 1.0);
	
	SetGlobalNumber("LEV_ELEVATOR", 1);
	SetGlobalBoolean("LEV_RESCUE", TRUE);
	
	DelayCommand(0.1, Start_Scene());
}