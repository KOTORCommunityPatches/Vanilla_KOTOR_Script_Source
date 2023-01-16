void main() {
	object oCenterCylinder = GetObjectByTag("CenterCylinder", 0);
	vector vPosition = GetPosition(oCenterCylinder);
	SetLocked(oCenterCylinder, 0);
	DelayCommand(0.5, ApplyEffectToObject(1, EffectVisualEffect(2008, 0), oCenterCylinder, 2.0));
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

