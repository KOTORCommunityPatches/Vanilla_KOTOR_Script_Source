void main() {
	string string1 = "g_assassindrd01";
	int int1 = 0;
	object object1 = GetObjectByTag(string1, int1);
	while (GetIsObjectValid(object1)) {
		ApplyEffectToObject(2, EffectBlind(), object1, 0.0);
		ApplyEffectToObject(2, EffectStunned(), object1, 0.0);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}
