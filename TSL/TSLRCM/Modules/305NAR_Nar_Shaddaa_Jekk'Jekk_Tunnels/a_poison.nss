void main() {
	object oEntering = GetEnteringObject();
	effect efPoison = EffectPoison(6);
	if (((IsObjectPartyMember(oEntering) && (GetRacialType(oEntering) != 5)) && (GetGlobalBoolean("G_PER_In_Space_Suit") == 0))) {
		if ((GetHasSpellEffect(270, oEntering) == 0)) {
			ApplyEffectToObject(2, efPoison, oEntering, 0.0);
		}
	}
}