void FireExplosion(object oObject) {
	
	object oArea = GetArea(OBJECT_SELF);
	SignalEvent(oObject, EventUserDefined(2000));
}

void main() {
	
	object oCalo = OBJECT_SELF;
	object oExplode = GetNearestObjectByTag("tar08_wpexplosion", oCalo, 1);
	
	DelayCommand(0.5, FireExplosion(oExplode));
	DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectHorrified(), OBJECT_SELF));
	ActionPauseConversation();
	ActionWait(1.5);
	ActionResumeConversation();
}
