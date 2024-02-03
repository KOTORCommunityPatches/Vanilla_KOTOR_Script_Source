struct structtype1 {
	float float1;
	float float3;
};

void main() {
	ActionPauseConversation();
	object oG0t0 = GetObjectByTag("g0t0", 0);
	object oHK47 = GetObjectByTag("HK47", 0);
	object oHK511 = GetObjectByTag("HK511", 0);
	object oHK512 = GetObjectByTag("HK512", 0);
	effect efBeam = EffectBeam(2027, oHK47, 4, 0);
	effect effect3 = EffectBeam(2027, oHK511, 4, 0);
	effect effect5 = EffectBeam(2027, oHK512, 4, 0);
	AssignCommand(oHK47, ClearAllActions());
	AssignCommand(oHK511, ClearAllActions());
	AssignCommand(oHK512, ClearAllActions());
	AssignCommand(oHK511, ActionDoCommand(AssignCommand(oHK511, SetFacingPoint(GetPosition(oG0t0)))));
	AssignCommand(oHK512, ActionDoCommand(AssignCommand(oHK512, SetFacingPoint(GetPosition(oG0t0)))));
	ApplyEffectToObject(1, efBeam, oG0t0, 4.0);
	ApplyEffectToObject(1, effect3, oG0t0, 4.0);
	ApplyEffectToObject(1, effect5, oG0t0, 4.0);
	AssignCommand(oHK47, ActionPlayAnimation(10538, 1.0, 4.0));
	AssignCommand(oHK511, ActionPlayAnimation(10538, 1.0, 4.0));
	AssignCommand(oHK512, ActionPlayAnimation(10538, 1.0, 4.0));
	DelayCommand(0.5, AssignCommand(oG0t0, ActionPlayAnimation(21, 1.0, 3.5)));
	DelayCommand(4.1, AssignCommand(oG0t0, ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(6.0, ActionResumeConversation());
}

