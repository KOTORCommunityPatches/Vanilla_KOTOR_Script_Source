void main() {
	object oKreiaEvil = GetObjectByTag("KreiaEvil", 0);
	object oDisciple = GetObjectByTag("Disciple", 0);
	SetMinOneHP(oDisciple, 1);
	SetMinOneHP(oKreiaEvil, 1);
	AssignCommand(oDisciple, ActionAttack(oKreiaEvil, 0));
	DelayCommand(3.0, AssignCommand(oDisciple, ActionAttack(oKreiaEvil, 0)));
	DelayCommand(6.0, AssignCommand(oDisciple, ActionAttack(oKreiaEvil, 0)));
	DelayCommand(8.0, AssignCommand(oDisciple, ActionAttack(oKreiaEvil, 0)));
	DelayCommand(10.0, SetMinOneHP(oKreiaEvil, 0));
	DelayCommand(10.0, SetMinOneHP(oDisciple, 0));
	DelayCommand(10.0, AssignCommand(oKreiaEvil, ActionPlayAnimation(10063, 1.0, 3.5)));
	DelayCommand(10.1, AssignCommand(oDisciple, ClearAllActions()));
	DelayCommand(10.2, ApplyEffectToObject(1, EffectChoke(), oDisciple, 3.0));
	DelayCommand(13.3, AssignCommand(oDisciple, ClearAllActions()));
	DelayCommand(13.5, AssignCommand(oDisciple, SetIsDestroyable(0, 1, 0)));
	effect efDeath = EffectDeath(0, 0, 1);
	DelayCommand(13.5, ApplyEffectToObject(2, efDeath, oDisciple, 0.0));
}

