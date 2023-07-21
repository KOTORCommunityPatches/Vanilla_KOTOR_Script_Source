// Globals
	float floatGLOB_1 = 1.0;
	int intGLOB_1;
	int intGLOB_2;
	int intGLOB_3;
	int intGLOB_4;
	int intGLOB_5;
	int intGLOB_6;
	int intGLOB_7;

// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
	int int1 = GetHasFeat(56, objectParam1);
	int int3 = GetHasFeat(57, objectParam1);
	int int5 = 0;
	if ((int1 == 1)) {
		int5 = (int5 + 2);
		if ((int3 == 1)) {
			int5 = (int5 + 2);
		}
	}
	return int5;
}

void main() {
	int int1 = GetSpellId();
	int int3;
	int int4;
	int int5;
	object oShapeObject;
	int int6;
	int int7 = GetHasFeat(48, OBJECT_SELF);
	int int9 = GetHasFeat(56, OBJECT_SELF);
	int int11 = GetHasFeat(57, OBJECT_SELF);
	if ((int7 == 1)) {
		int7 = 6;
	}
	if ((int1 == 87)) {
		ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetSpellTargetLocation(), 0.0);
		int6 = 3003;
		int3 = (20 + int7);
		int4 = 15;
		oShapeObject = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
				SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
				int5 = int4;
				int5 = (int5 - sub1(oShapeObject));
				if ((!ReflexSave(oShapeObject, int5, 0, OBJECT_SELF))) {
					ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oShapeObject, 0.0);
				}
				else {
					ApplyEffectToObject(0, EffectDamage((int3 / 2), 2, 0), oShapeObject, 0.0);
				}
			}
			oShapeObject = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
		}
	}
	else {
		if ((int1 == 88)) {
			int6 = 3004;
			int4 = 15;
			effect efStun = EffectStunned();
			effect effect6 = EffectDroidStun();
			efStun = SetEffectIcon(efStun, 41);
			efStun = EffectLinkEffects(efStun, EffectVisualEffect(1040, 0));
			oShapeObject = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
			while (GetIsObjectValid(oShapeObject)) {
				if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
					SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
					int5 = int4;
					int5 = (int5 - sub1(oShapeObject));
					if ((!WillSave(oShapeObject, int5, 13, OBJECT_SELF))) {
						if ((GetRacialType(oShapeObject) == 5)) {
							ApplyEffectToObject(1, effect6, oShapeObject, 9.0);
						}
						else {
							if ((!GetIsLinkImmune(oShapeObject, efStun))) {
								ApplyEffectToObject(1, efStun, oShapeObject, 9.0);
							}
						}
					}
				}
				oShapeObject = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
			}
		}
		else {
			if ((int1 == 89)) {
				ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetSpellTargetLocation(), 0.0);
				int6 = 3005;
				int3 = (60 + int7);
				int4 = 15;
				effect efPush = EffectForcePushTargeted(GetSpellTargetLocation(), 0);
				oShapeObject = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
				while (GetIsObjectValid(oShapeObject)) {
					if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
						SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
						int5 = int4;
						int5 = (int5 - sub1(oShapeObject));
						if ((!ReflexSave(oShapeObject, int5, 17, OBJECT_SELF))) {
							DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage(int3, 4096, 0), oShapeObject, 0.0));
						}
						else {
							DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage((int3 / 2), 4096, 0), oShapeObject, 0.0));
						}
						ApplyEffectToObject(1, efPush, oShapeObject, 0.1);
					}
					oShapeObject = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
				}
			}
			else {
				if ((int1 == 90)) {
					int6 = 3006;
					effect efPoison = EffectPoison(4);
					oShapeObject = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
					while ((GetIsObjectValid(oShapeObject) && (GetRacialType(oShapeObject) != 5))) {
						if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
							SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
							if ((!GetIsPoisoned(oShapeObject))) {
								ApplyEffectToObject(2, efPoison, oShapeObject, 0.0);
							}
						}
						oShapeObject = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
					}
				}
				else {
					if ((int1 == 91)) {
						int6 = 3007;
						int3 = (20 + int7);
						int4 = 15;
						effect effect18 = EffectAbilityDecrease(1, 6);
						effect18 = SetEffectIcon(effect18, 41);
						oShapeObject = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
						while (GetIsObjectValid(oShapeObject)) {
							if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
								SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
								int5 = int4;
								int5 = (int5 - sub1(oShapeObject));
								if ((!WillSave(oShapeObject, int5, 13, OBJECT_SELF))) {
									ApplyEffectToObject(0, EffectDamage(int3, 1024, 0), oShapeObject, 0.0);
									ApplyEffectToObject(1, effect18, oShapeObject, 30.0);
								}
								else {
									ApplyEffectToObject(0, EffectDamage((int3 / 2), 1024, 0), oShapeObject, 0.0);
								}
							}
							oShapeObject = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
						}
					}
					else {
						if ((int1 == 92)) {
							int6 = 3008;
							effect efEntangle = EffectEntangle();
							efEntangle = SetEffectIcon(efEntangle, 43);
							effect efVisual = EffectVisualEffect(1038, 0);
							oShapeObject = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
							while (GetIsObjectValid(oShapeObject)) {
								if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
									SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
									if (((!GetIsLinkImmune(oShapeObject, efEntangle)) || (GetRacialType(oShapeObject) == 5))) {
										ApplyEffectToObject(1, efEntangle, oShapeObject, 15.0);
										DelayCommand(0.8, ApplyEffectAtLocation(0, efVisual, GetLocation(oShapeObject), 0.0));
									}
								}
								oShapeObject = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
							}
						}
						else {
							if ((int1 == 93)) {
								int6 = 3009;
								int3 = (20 + int7);
								int4 = 15;
								effect efParalyze = EffectParalyze();
								oShapeObject = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
								while (GetIsObjectValid(oShapeObject)) {
									if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
										SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
										int5 = int4;
										int5 = (int5 - sub1(oShapeObject));
										if ((!ReflexSave(oShapeObject, int5, 3, OBJECT_SELF))) {
											if (((!GetIsLinkImmune(oShapeObject, efParalyze)) || (GetRacialType(oShapeObject) == 5))) {
												efParalyze = SetEffectIcon(efParalyze, 44);
												ApplyEffectToObject(1, efParalyze, oShapeObject, 6.0);
											}
											ApplyEffectToObject(0, EffectDamage(int3, 32, 0), oShapeObject, 0.0);
										}
										else {
											ApplyEffectToObject(0, EffectDamage((int3 / 2), 32, 0), oShapeObject, 0.0);
										}
									}
									oShapeObject = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
								}
							}
							else {
								if ((int1 == 94)) {
									ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetSpellTargetLocation(), 0.0);
									int6 = 3010;
									int3 = (36 + int7);
									int4 = 15;
									effect effect34 = EffectHorrified();
									effect effect36 = EffectVisualEffect(1039, 0);
									oShapeObject = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
									while (GetIsObjectValid(oShapeObject)) {
										if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
											SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
											int5 = int4;
											int5 = (int5 - sub1(oShapeObject));
											if ((!ReflexSave(oShapeObject, int5, 9, OBJECT_SELF))) {
												ApplyEffectToObject(0, EffectDamage(int3, 256, 0), oShapeObject, 0.0);
												ApplyEffectToObject(0, effect36, oShapeObject, 0.0);
												ApplyEffectToObject(1, effect34, oShapeObject, 2.0);
											}
											else {
												ApplyEffectToObject(0, EffectDamage((int3 / 2), 256, 0), oShapeObject, 0.0);
											}
										}
										oShapeObject = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
									}
								}
								else {
									if ((int1 == 95)) {
										int6 = 3011;
										int3 = (15 + int7);
										int int57;
										int4 = 15;
										oShapeObject = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
										while (GetIsObjectValid(oShapeObject)) {
											int3 = (15 + int7);
											if ((!GetIsNeutral(oShapeObject, OBJECT_SELF))) {
												SignalEvent(oShapeObject, EventSpellCastAt(OBJECT_SELF, GetSpellId(), 1));
												int5 = int4;
												int5 = (int5 - sub1(oShapeObject));
												if ((GetRacialType(oShapeObject) == 5)) {
													int3 = (int3 + 30);
												}
												if ((!ReflexSave(oShapeObject, int5, 16, OBJECT_SELF))) {
													ApplyEffectToObject(0, EffectDamage(int3, 2048, 0), oShapeObject, 0.0);
												}
												else {
													ApplyEffectToObject(0, EffectDamage((int3 / 2), 2048, 0), oShapeObject, 0.0);
												}
											}
											int57 = int3;
											oShapeObject = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	ApplyEffectAtLocation(0, EffectVisualEffect(int6, 0), GetSpellTargetLocation(), 0.0);
}

