void main() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetObjectByTag(GetScriptStringParameter(), 0);
	if ((GetIsObjectValid(object3) == 0)) {
		object3 = OBJECT_SELF;
	}
	ChangeToStandardFaction(object3, 1);
	AssignCommand(oSpeaker, ClearAllActions());
	AssignCommand(oSpeaker, ActionAttack(object3, 0));
}

