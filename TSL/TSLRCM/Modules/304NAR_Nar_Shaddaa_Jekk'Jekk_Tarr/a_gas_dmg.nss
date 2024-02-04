void main() {
	if ((GetGlobalBoolean("G_PER_In_Space_Suit") == 0)) {
		effect efPoison = EffectPoison(6);
		object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
		while (GetIsObjectValid(object1)) {
			if ((IsObjectPartyMember(object1) && (GetRacialType(object1) != 5))) {
				if ((GetHasSpellEffect(270, object1) == 0)) {
					ApplyEffectToObject(2, efPoison, object1, 0.0);
				}
			}
			object1 = GetNextInPersistentObject(OBJECT_SELF, 1, 0);
		}
	}
}