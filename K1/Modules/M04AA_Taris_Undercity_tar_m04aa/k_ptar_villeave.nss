#include "k_inc_tar"

void NPC_Move(object oWP, float fDelay) {
	object oSelf = OBJECT_SELF;
	DelayCommand(fDelay, DestroyObject(oSelf, 0.0, TRUE));
	ActionJumpToObject(oWP);
	TAR_PlotMoveObject(GetObjectByTag("tar04_swcanext", 0), 0);
}

void NPC_Exit(object oNPC, float fDelay) {
	TAR_MarkForCleanup(oNPC);
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(oNPC, ActionDoCommand(NPC_Move(GetObjectByTag("tar04_wpexodus0", 0), fDelay)));
}

void main() {
	
	object oSelf = OBJECT_SELF;
	object oGendar = GetObjectByTag("gendar041", 0);
	object oAreaObject;
	int nCount;
	float fDelay = 1.5;
	
	DestroyObject(GetObjectByTag("rakghoulvic00", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("rakghoulvic01", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("rakghoulvic02", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("infectedoutcastf", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("infectedoutcastm", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("outcastwoman043", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("outcastman045", 0), 0.0, 1, 0.0);
	DestroyObject(GetObjectByTag("outcastman046", 0), 0.0, 1, 0.0);
	
	SignalEvent(GetObjectByTag("tar04_maingate", 0), EventUserDefined(2000));
	
	ActionJumpToObject(GetObjectByTag("tar04_wprukil", 0), 1);
	AssignCommand(oGendar, ActionJumpToObject(GetObjectByTag("tar04_wpgendar", 0), 1));
	
	SetGlobalFadeIn(0.0, 1.0);
	
	oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
	nCount = 0;
	
	while (GetIsObjectValid(oAreaObject))
		{
			if (FindSubString(GetTag(oAreaObject), "outcast") >= 0 || GetTag(oAreaObject) == "Igear")
				{
					DelayCommand(nCount * fDelay, NPC_Exit(oAreaObject, 30.0 - (nCount * fDelay)));
					nCount++;
				}
			
			oAreaObject = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
		}
	
	ActionPauseConversation();
	ActionWait(30.0);
	
	DelayCommand(27.0, SetGlobalFadeOut(0.0, 1.0));
	
	ActionResumeConversation();
}