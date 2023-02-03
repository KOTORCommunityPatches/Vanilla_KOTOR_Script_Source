// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_utility"

void PillarFlag(int nState) {
	SetGlobalBoolean("KOR_PILLAR_START", nState);
}

void main() {
	
	object oPillar1 = GetObjectByTag("k39_plc_pillar1", 0);
	object oPillar2 = GetObjectByTag("k39_plc_pillar2", 0);
	object oPillar = GetObjectByTag("k39_plc_pillar", 0);
	
	PillarFlag(FALSE);
	
	ActionPauseConversation();
	
	SetGlobalFadeOut(0.5, 6.0);
	
	DestroyObject(oPillar1);
	DestroyObject(oPillar2);
	DestroyObject(oPillar);
	
	event eUser = EventUserDefined(139);
	object oWall = GetObjectByTag("kor39_wallclose1", 0);
	
	SignalEvent(oWall, eUser);
	
	ActionWait(3.0);
	ActionResumeConversation();
}
