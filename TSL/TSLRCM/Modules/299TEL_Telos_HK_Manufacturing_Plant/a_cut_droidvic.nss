void main() {
	int nParam1 = GetScriptParameter(1);
	object oHK50Vic = GetObjectByTag("HK50Vic", 0);
	object oHK50M1 = GetObjectByTag("HK50M1", 0);
	object oHK50M2 = GetObjectByTag("HK50M2", 0);
	object oHK50M3 = GetObjectByTag("HK50M3", 0);
	effect efBeam = EffectBeam(2027, oHK50M1, 4, 0);
	effect effect3 = EffectBeam(2027, oHK50M2, 4, 0);
	effect effect5 = EffectBeam(2027, oHK50M3, 4, 0);
	effect efResurrect = EffectResurrection(50);
	effect efDamage = EffectDamage(100, 8, 0);
	effect efEntangle = EffectEntangle();
	effect efDeath = EffectDeath(0, 0, 1);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			SetMinOneHP(oHK50Vic, 1);
			AssignCommand(oHK50M1, ClearAllActions());
			ApplyEffectToObject(1, efBeam, oHK50Vic, 2.5);
			ApplyEffectToObject(2, efEntangle, oHK50Vic, 0.0);
			AssignCommand(oHK50M1, ActionPlayAnimation(10538, 1.0, 2.7));
			DelayCommand(0.3, AssignCommand(oHK50Vic, ActionPlayAnimation(21, 1.0, 2.2)));
			DelayCommand(2.6, ApplyEffectToObject(2, efDeath, oHK50Vic, 0.0));
			DelayCommand(2.6, ActionResumeConversation());
			break;
		case 1:
			ActionPauseConversation();
			NoClicksFor(9.0);
			SetMinOneHP(oHK50Vic, 0);
			CreateObject(64, "SmokeMertrain1", GetLocation(oHK50Vic), 0);
			CreateObject(64, "SmokeMertrain2", GetLocation(oHK50Vic), 0);
			AssignCommand(oHK50Vic, SetIsDestroyable(0, 1, 0));
			AssignCommand(oHK50M1, ClearAllActions());
			AssignCommand(oHK50M2, ClearAllActions());
			AssignCommand(oHK50M3, ClearAllActions());
			ApplyEffectToObject(1, efBeam, oHK50Vic, 6.5);
			ApplyEffectToObject(1, effect3, oHK50Vic, 6.5);
			ApplyEffectToObject(1, effect5, oHK50Vic, 6.5);
			AssignCommand(oHK50M1, ActionPlayAnimation(10538, 1.0, 6.5));
			AssignCommand(oHK50M2, ActionPlayAnimation(10538, 1.0, 6.5));
			AssignCommand(oHK50M3, ActionPlayAnimation(10538, 1.0, 6.5));
			DelayCommand(0.5, AssignCommand(oHK50Vic, ActionPlayAnimation(21, 1.0, 6.0)));
			DelayCommand(6.5, ApplyEffectToObject(2, efDeath, oHK50Vic, 0.0));
			DelayCommand(9.0, ActionResumeConversation());
			break;
		case 2:
			AssignCommand(oHK50M1, ClearAllActions());
			AssignCommand(oHK50M2, ClearAllActions());
			AssignCommand(oHK50M3, ClearAllActions());
			break;
		case 3:
			ActionPauseConversation();
			ApplyEffectToObject(0, efResurrect, oHK50Vic, 0.0);
			AssignCommand(GetObjectByTag("SmokeMertrain1", 0), SetIsDestroyable(1, 0, 0));
			DestroyObject(GetObjectByTag("SmokeMertrain1", 0), 0.0, 0, 2.3, 0);
			AssignCommand(GetObjectByTag("SmokeMertrain2", 0), SetIsDestroyable(1, 0, 0));
			DestroyObject(GetObjectByTag("SmokeMertrain2", 0), 0.0, 0, 2.3, 0);
			DelayCommand(2.5, ActionResumeConversation());
			break;
		case 4:
			AssignCommand(oHK50M1, ClearAllActions());
			SetLockOrientationInDialog(oHK50M1, 0);
			DelayCommand(4.0, AssignCommand(oHK50M1, SetFacingPoint(GetPosition(GetFirstPC()))));
			break;
		case 5:
			break;
	}
}