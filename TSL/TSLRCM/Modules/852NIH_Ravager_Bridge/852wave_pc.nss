// Prototypes
void sub1(object objectParam1, location locationParam2);

void sub1(object objectParam1, location locationParam2) {
	effect efPush = EffectForcePushTargeted(locationParam2, 0);
	efPush = EffectLinkEffects(efPush, EffectVisualEffect(1014, 0));
	effect efKnockdown = EffectKnockdown();
	if ((GetIsObjectValid(objectParam1) && (!GetIsDead(objectParam1)))) {
		ApplyEffectToObject(1, efPush, objectParam1, 0.5);
		DelayCommand(1.0, ApplyEffectToObject(1, efKnockdown, objectParam1, 2.2));
	}
}

void main() {
	object oDarthNihilus = GetObjectByTag("DarthNihilus", 0);
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oMand = GetObjectByTag("Mand", 0);
	ApplyEffectAtLocation(0, EffectVisualEffect(3001, 0), GetLocation(oDarthNihilus), 0.0);
	ApplyEffectToObject(0, EffectVisualEffect(6002, 0), oDarthNihilus, 0.0);
	ApplyEffectToObject(0, EffectVisualEffect(3018, 0), oDarthNihilus, 0.0);
	location location2 = GetLocation(oDarthNihilus);
	sub1(oPC, location2);
	sub1(oVisasMarr, location2);
	sub1(oMand, location2);
}