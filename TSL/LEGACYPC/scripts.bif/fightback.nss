void main() {
	if ((GetAttemptedAttackTarget() == OBJECT_INVALID)) {
		ActionAttack(GetLastAttacker(OBJECT_SELF), 0);
	}
}

