// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	location location1 = GetLocation(objectParam1);
	location location3 = GetLocation(GetObjectByTag("wp_locker_boom", 0));
	effect efVisual = EffectVisualEffect(3007, 0);
	effect effect3 = EffectVisualEffect(3002, 0);
	effect effect5 = EffectVisualEffect(1044, 0);
	effect efPush = EffectForcePushTargeted(location3, 0);
	effect effect9 = EffectVisualEffect(6002, 0);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	ApplyEffectAtLocation(0, effect3, location1, 0.0);
	ApplyEffectAtLocation(0, effect5, location1, 0.0);
	effect efDamage = EffectDamage(50, 2, 0);
	object oShapeObject = GetFirstObjectInShape(4, 4.0, location1, 1, 1, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
			ApplyEffectToObject(0, efPush, oShapeObject, 0.0);
			ApplyEffectToObject(1, effect9, oShapeObject, 1.0);
			ApplyEffectToObject(0, efDamage, oShapeObject, 0.0);
		}
		oShapeObject = GetNextObjectInShape(4, 4.0, location1, 1, 1, [0.0,0.0,0.0]);
	}
	DestroyObject(objectParam1, 0.0, 1, 0.0, 0);
}

void main() {
	object oMil_locker = GetObjectByTag("mil_locker", 0);
	AurPostString("Boom!", 5, 5, 5.0);
	object oBag_datapad = GetObjectByTag("Bag_datapad", 0);
	if (GetIsObjectValid(oBag_datapad)) {
		object oInvItem = GetFirstItemInInventory(oBag_datapad);
		if (GetIsObjectValid(oInvItem)) {
			DestroyObject(oInvItem, 0.0, 0, 0.0, 0);
		}
		DestroyObject(oBag_datapad, 0.0, 1, 0.0, 0);
	}
	DestroyObject(GetItemPossessedBy(oMil_locker, "pl_thorium"), 0.0, 0, 0.0, 0);
	ActionDoCommand(sub1(oMil_locker));
}

