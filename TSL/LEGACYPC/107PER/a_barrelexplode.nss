void main() {
	location location1 = GetLocation(OBJECT_SELF);
	int int1;
	int int2;
	object oShapeObject;
	int nRandom = d4(1);
	switch (nRandom) {
		case 1:
			ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), location1, 0.0);
			int1 = 3005;
			int2 = 200;
			oShapeObject = GetFirstObjectInShape(4, 4.0, location1, 0, 1, [0.0,0.0,0.0]);
			while (GetIsObjectValid(oShapeObject)) {
				if (GetIsEnemy(oShapeObject, GetFirstPC())) {
					ApplyEffectToObject(0, EffectDamage(int2, 4096, 0), oShapeObject, 0.0);
					oShapeObject = GetNextObjectInShape(4, 4.0, location1, 0, 1, [0.0,0.0,0.0]);
				}
			}
			ApplyEffectAtLocation(0, EffectVisualEffect(int1, 0), location1, 0.0);
			DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0, 0));
			break;
		case 2:
			{
				effect efPoison = EffectPoison(12);
				int1 = 3006;
				object object5 = GetFirstObjectInShape(4, 5.0, location1, 0, 1, [0.0,0.0,0.0]);
				while (GetIsObjectValid(object5)) {
				if (GetIsEnemy(object5, GetFirstPC())) {
					ApplyEffectToObject(2, efPoison, object5, 0.0);
					object5 = GetNextObjectInShape(4, 5.0, location1, 0, 1, [0.0,0.0,0.0]);
				}
				}
				ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), location1, 0.0);
				ApplyEffectAtLocation(0, EffectVisualEffect(int1, 0), location1, 0.0);
				DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0, 0));
			}
			break;
		case 3:
			int1 = 3004;
			{
				effect efStun = EffectStunned();
				efStun = EffectLinkEffects(efStun, EffectVisualEffect(1040, 0));
				ApplyEffectAtLocation(0, EffectVisualEffect(int1, 0), location1, 0.0);
				oShapeObject = GetFirstObjectInShape(4, 4.0, location1, 0, 1, [0.0,0.0,0.0]);
				while (GetIsObjectValid(oShapeObject)) {
				if (GetIsEnemy(oShapeObject, GetFirstPC())) {
					ApplyEffectToObject(1, efStun, oShapeObject, 9.0);
				}
				oShapeObject = GetNextObjectInShape(4, 4.0, location1, 0, 1, [0.0,0.0,0.0]);
				}
				DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0, 0));
			}
			break;
		case 4:
			int1 = 3010;
			int2 = 40;
			{
				effect effect13 = EffectHorrified();
				effect efVisual = EffectVisualEffect(1039, 0);
				ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), location1, 0.0);
				ApplyEffectAtLocation(0, EffectVisualEffect(int1, 0), location1, 0.0);
				oShapeObject = GetFirstObjectInShape(4, 4.0, location1, 0, 1, [0.0,0.0,0.0]);
				while (GetIsObjectValid(oShapeObject)) {
				if (GetIsEnemy(oShapeObject, GetFirstPC())) {
					ApplyEffectToObject(0, EffectDamage(int2, 256, 0), oShapeObject, 0.0);
					ApplyEffectToObject(0, efVisual, oShapeObject, 0.0);
					ApplyEffectToObject(1, effect13, oShapeObject, 2.0);
				}
				oShapeObject = GetNextObjectInShape(4, 4.0, location1, 0, 1, [0.0,0.0,0.0]);
				}
				DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0, 0));
			}
			break;
	}
}

