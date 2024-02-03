void main() {
	string string1 = "g_assassindrd01";
	int int1 = 0;
	object object1 = GetObjectByTag(string1, int1);
	while (GetIsObjectValid(object1)) {
		ApplyEffectToObject(2, EffectBlind(), object1, 0.0);
		ApplyEffectToObject(2, EffectStunned(), object1, 0.0);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
		{
			string string2 = "droidopendoor";
			int int3 = 0;
			object object4 = GetObjectByTag(string2, int3);
			while (GetIsObjectValid(object4)) {
				ApplyEffectToObject(2, EffectBlind(), object4, 0.0);
				ApplyEffectToObject(2, EffectStunned(), object4, 0.0);
				(int3++);
			object4 = GetObjectByTag(string2, int3);
			}
		}
	}
}

