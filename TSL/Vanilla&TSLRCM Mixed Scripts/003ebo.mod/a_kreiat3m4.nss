struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	object oT3m4 = GetObjectByTag("t3m4", 0);
	object oKreia = GetObjectByTag("kreia", 0);
	switch (nParam1) {
		case 1:
			ActionPauseConversation();
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oKreia, DelayCommand(0.3, SetFacingPoint(GetPosition(oT3m4))));
			AssignCommand(oKreia, ActionMoveToLocation(Location(Vector(43.32065, 42.74143, 1.8), 90.0), 0));
			AssignCommand(oT3m4, ActionMoveToLocation(Location(Vector(46.64738, 43.83421, 1.8), 0.0), 0));
			DelayCommand(2.5, ActionResumeConversation());
			break;
		case 2:
			AssignCommand(oKreia, PlayAnimation(121, 1.0, 3.5));
			{
				effect efBeam = EffectBeam(2037, oKreia, 3, 0);
				DelayCommand(1.0, AssignCommand(oT3m4, ApplyEffectToObject(1, efBeam, oT3m4, 2.9)));
				DelayCommand(1.0, AssignCommand(oT3m4, ActionPlayAnimation(26, 1.0, (-1.0))));
			}
	}
}

