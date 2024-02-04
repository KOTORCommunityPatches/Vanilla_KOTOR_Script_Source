void main() {
	object oDarthSion = GetObjectByTag("DarthSion", 0);
	AdjustCreatureAttributes(oDarthSion, 2, (-6));
	AdjustCreatureAttributes(oDarthSion, 4, (-1));
	ModifyWillSavingThrowBase(oDarthSion, (-3));
}