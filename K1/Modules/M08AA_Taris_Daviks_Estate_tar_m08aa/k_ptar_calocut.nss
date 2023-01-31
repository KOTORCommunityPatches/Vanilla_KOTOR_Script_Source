#include "k_inc_debug"

void SpawnRubble(object oObject) {
	SignalEvent(oObject, EventUserDefined(2000));
	CreateObject(OBJECT_TYPE_PLACEABLE, "tar08_rubblebar", GetLocation(oObject), 0);
}

void main() {
	
	object oRubble = GetNearestObjectByTag("tar08_ceilingfall", OBJECT_SELF, 1);
	object oCalo = OBJECT_SELF;
	
	Db_PostString("DO CAND DIALOGUE", 5, 5, 5.0);
	SetGlobalBoolean("TAR_ESTATEEXPLOSIONS", TRUE);
	SpawnRubble(oRubble);
	SetPlotFlag(oCalo, FALSE);
	SetMinOneHP(oCalo, FALSE);
	DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oCalo));
}