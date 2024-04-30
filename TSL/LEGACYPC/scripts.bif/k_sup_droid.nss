// Prototypes
void sub1(int intParam1, int intParam2);

void sub1(int intParam1, int intParam2) {
	int int1;
	object oShapeObject;
	if ((intParam1 == 124)) {
		int1 = 15;
	}
	else {
		if ((intParam1 == 125)) {
			int1 = 20;
		}
	}
	effect efVisual = EffectVisualEffect(3013, 0);
	effect effect3 = EffectVisualEffect(3018, 0);
	effect effect5 = EffectMovementSpeedDecrease(75);
	effect effect7 = EffectACDecrease(4, 0, 8199);
	effect effect9 = EffectLinkEffects(effect5, effect7);
	if ((intParam1 == 124)) {
		effect9 = SetEffectIcon(effect9, 61);
	}
	else {
		if ((intParam1 == 125)) {
			effect9 = SetEffectIcon(effect9, 103);
		}
	}
	ApplyEffectToObject(0, efVisual, OBJECT_SELF, 0.0);
	ApplyEffectToObject(0, effect3, OBJECT_SELF, 0.0);
	oShapeObject = GetFirstObjectInShape(4, 15.0, GetLocation(OBJECT_SELF), 0, 1, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		if (GetIsEnemy(oShapeObject, OBJECT_SELF)) {
			if ((!ReflexSave(oShapeObject, int1, 0, OBJECT_SELF))) {
				if (((!GetHasSpellEffect(124, OBJECT_SELF)) && (!GetHasSpellEffect(125, OBJECT_SELF)))) {
					ApplyEffectToObject(1, effect9, oShapeObject, 9.0);
				}
			}
		}
		oShapeObject = GetNextObjectInShape(4, 15.0, GetLocation(OBJECT_SELF), 0, 1, [0.0,0.0,0.0]);
	}
}

void main() {
	int int1 = GetSpellId();
	int int3;
	int int4;
	float float1;
	object oTarget;
	effect efBeam;
	effect efDamage;
	if (((int1 == 116) || (int1 == 117))) {
		oTarget = GetSpellTargetObject();
		if ((int1 == 116)) {
			int3 = 15;
		}
		else {
			if ((int1 == 117)) {
				int3 = 20;
			}
		}
		effect efStun = EffectStunned();
		if ((int1 == 116)) {
			efStun = SetEffectIcon(efStun, 55);
		}
		else {
			if ((int1 == 117)) {
				efStun = SetEffectIcon(efStun, 56);
			}
		}
		efBeam = EffectBeam(2052, OBJECT_SELF, 0, 0);
		ApplyEffectToObject(1, efBeam, oTarget, 1.0);
		if ((!WillSave(oTarget, int3, 10, OBJECT_SELF))) {
			ApplyEffectToObject(1, efStun, oTarget, RoundsToSeconds(3));
		}
	}
	else {
		if (((int1 == 118) || (int1 == 119))) {
			oTarget = GetSpellTargetObject();
			if ((int1 == 118)) {
				int4 = 20;
			}
			else {
				if ((int1 == 119)) {
					int4 = 40;
				}
			}
			efDamage = EffectDamage(int4, 2048, 0);
			effect effect9 = EffectBeam(2049, OBJECT_SELF, 0, 0);
			effect effect11 = EffectBeam(2050, OBJECT_SELF, 0, 0);
			ApplyEffectToObject(1, effect11, oTarget, 1.0);
			ApplyEffectToObject(1, effect9, oTarget, 1.0);
			ApplyEffectToObject(0, efDamage, oTarget, 0.0);
		}
		else {
			if (((((int1 == 120) || (int1 == 121)) || (int1 == 188)) || (int1 == 189))) {
				oTarget = GetSpellTargetObject();
				if ((int1 == 120)) {
					int4 = 30;
					int3 = 15;
				}
				else {
					if ((int1 == 121)) {
						int4 = 60;
						int3 = 20;
					}
					else {
						if ((int1 == 188)) {
							int4 = 6;
							int3 = 15;
						}
						else {
							if ((int1 == 189)) {
								int4 = 12;
								int3 = 15;
							}
						}
					}
				}
				efBeam = EffectBeam(2053, OBJECT_SELF, 0, 0);
				effect efVisual = EffectVisualEffect(1039, 0);
				effect effect16 = EffectVisualEffect(2062, 0);
				effect effect18 = EffectHorrified();
				if ((int1 == 120)) {
					effect18 = SetEffectIcon(effect18, 57);
				}
				else {
					if ((int1 == 121)) {
						effect18 = SetEffectIcon(effect18, 58);
					}
					else {
						if ((int1 == 188)) {
							effect18 = SetEffectIcon(effect18, 98);
						}
						else {
							if ((int1 == 189)) {
								effect18 = SetEffectIcon(effect18, 99);
							}
						}
					}
				}
				ApplyEffectToObject(0, efVisual, oTarget, 0.0);
				ApplyEffectToObject(1, efBeam, oTarget, 1.0);
				if (((int1 < 188) && (FortitudeSave(oTarget, 15, 0, OBJECT_SELF) == 0))) {
					ApplyEffectToObject(1, effect18, oTarget, 3.0);
				}
				DelayCommand(0.33, ApplyEffectToObject(1, effect16, oTarget, 1.5));
				if (ReflexSave(oTarget, int3, 9, OBJECT_SELF)) {
					if (GetHasFeat(125, oTarget)) {
						int4 = 0;
					}
					else {
						int4 = (int4 / 2);
					}
				}
				efDamage = EffectDamage(int4, 256, 0);
				ApplyEffectToObject(0, efDamage, oTarget, 0.0);
			}
			else {
				if (((((int1 == 122) || (int1 == 123)) || (int1 == 244)) || (int1 == 245))) {
					oTarget = GetSpellTargetObject();
					if ((int1 == 122)) {
						int4 = 20;
						int3 = 15;
						float1 = 9.0;
					}
					else {
						if ((int1 == 123)) {
							int4 = 40;
							int3 = 20;
							float1 = 15.0;
						}
						else {
							if ((int1 == 244)) {
								int4 = 5;
								int3 = 10;
								float1 = 4.0;
							}
							else {
								if ((int1 == 245)) {
									int4 = 10;
									int3 = 15;
									float1 = 6.0;
								}
							}
						}
					}
					efBeam = EffectBeam(2051, OBJECT_SELF, 0, 0);
					effect effect26 = EffectVisualEffect(2055, 0);
					effect effect28 = EffectVisualEffect(2054, 0);
					effect efParalyze;
					if ((GetRacialType(oTarget) != 5)) {
						efParalyze = EffectParalyze();
					}
					else {
						efParalyze = EffectDroidStun();
					}
					if ((int1 == 122)) {
						efParalyze = SetEffectIcon(efParalyze, 59);
					}
					else {
						if ((int1 == 123)) {
							efParalyze = SetEffectIcon(efParalyze, 100);
						}
						else {
							if ((int1 == 244)) {
								efParalyze = SetEffectIcon(efParalyze, 101);
							}
							else {
								if ((int1 == 245)) {
									efParalyze = SetEffectIcon(efParalyze, 102);
								}
							}
						}
					}
					ApplyEffectToObject(1, efBeam, oTarget, 1.0);
					if (ReflexSave(oTarget, int3, 3, OBJECT_SELF)) {
						if (GetHasFeat(125, oTarget)) {
							int4 = 0;
						}
						else {
							int4 = (int4 / 2);
						}
						float1 = (float1 - 6.0);
					}
					ApplyEffectToObject(1, effect28, oTarget, float1);
					ApplyEffectToObject(1, effect26, oTarget, float1);
					efDamage = EffectDamage(int4, 32, 0);
					ApplyEffectToObject(0, efDamage, oTarget, 0.0);
					ApplyEffectToObject(1, efParalyze, oTarget, float1);
				}
				else {
					if (((int1 == 124) || (int1 == 125))) {
						sub1(int1, 13);
					}
					else {
						if ((int1 == 274)) {
							oTarget = GetSpellTargetObject();
							int4 = 15;
							int3 = 10;
							efBeam = EffectBeam(2051, OBJECT_SELF, 0, 0);
							effect effect39 = EffectDroidStun();
							effect39 = SetEffectIcon(effect39, 30);
							effect39 = EffectLinkEffects(effect39, EffectVisualEffect(1007, 0));
							ApplyEffectToObject(1, efBeam, oTarget, 1.0);
							if (ReflexSave(oTarget, int3, 16, OBJECT_SELF)) {
								if (GetHasFeat(125, oTarget)) {
									int4 = 0;
								}
							}
							else {
								ApplyEffectToObject(1, effect39, oTarget, 12.0);
							}
							if ((int4 > 0)) {
								efDamage = EffectDamage(int4, 2048, 0);
								ApplyEffectToObject(0, efDamage, oTarget, 0.0);
							}
						}
						else {
							if ((int1 == 275)) {
								oTarget = GetSpellTargetObject();
								int4 = 15;
								int3 = 14;
								float float3 = 5.0;
								int int14 = int4;
								int int15 = (int4 / 2);
								effect effect45 = EffectDamage(int14, 2048, 0);
								effect effect47 = EffectDamage(int15, 2048, 0);
								efBeam = EffectBeam(2051, OBJECT_SELF, 0, 0);
								effect effect50 = EffectDroidStun();
								effect50 = EffectLinkEffects(effect50, EffectVisualEffect(1008, 0));
								effect50 = SetEffectIcon(effect50, 4);
								ApplyEffectToObject(1, efBeam, oTarget, 1.0);
								if (ReflexSave(oTarget, int3, 16, OBJECT_SELF)) {
									if ((!GetHasFeat(125, oTarget))) {
										ApplyEffectToObject(0, effect45, oTarget, 0.0);
									}
								}
								else {
									ApplyEffectToObject(0, effect45, oTarget, 0.0);
									ApplyEffectToObject(1, effect50, oTarget, 12.0);
								}
								object oShapeObject = GetFirstObjectInShape(4, float3, GetLocation(oTarget), 0, 1, [0.0,0.0,0.0]);
								while (GetIsObjectValid(oShapeObject)) {
									if ((((oShapeObject != oTarget) && GetIsEnemy(oShapeObject, OBJECT_SELF)) && (GetRacialType(oShapeObject) == 5))) {
										ApplyEffectToObject(1, efBeam, oShapeObject, 1.0);
										if (ReflexSave(oShapeObject, int3, 16, OBJECT_SELF)) {
											if ((!GetHasFeat(125, oShapeObject))) {
												ApplyEffectToObject(0, effect45, oShapeObject, 0.0);
											}
										}
										else {
											ApplyEffectToObject(0, effect45, oShapeObject, 0.0);
											ApplyEffectToObject(1, effect50, oShapeObject, 12.0);
										}
									}
									oShapeObject = GetNextObjectInShape(4, float3, GetLocation(oTarget), 0, 1, [0.0,0.0,0.0]);
								}
							}
							else {
								if ((int1 == 276)) {
									oTarget = GetSpellTargetObject();
									int4 = 30;
									int3 = 18;
									float float4 = 6.0;
									int int23 = int4;
									int int24 = (int4 / 2);
									effect effect55 = EffectDamage(int23, 2048, 0);
									effect effect57 = EffectDamage(int24, 2048, 0);
									efBeam = EffectBeam(2051, OBJECT_SELF, 0, 0);
									effect effect60 = EffectDroidStun();
									effect60 = EffectLinkEffects(effect60, EffectVisualEffect(1008, 0));
									effect60 = SetEffectIcon(effect60, 5);
									ApplyEffectToObject(1, efBeam, oTarget, 1.0);
									if (ReflexSave(oTarget, int3, 16, OBJECT_SELF)) {
										if ((!GetHasFeat(125, oTarget))) {
											ApplyEffectToObject(0, effect55, oTarget, 0.0);
										}
									}
									else {
										ApplyEffectToObject(0, effect55, oTarget, 0.0);
										ApplyEffectToObject(1, effect60, oTarget, 12.0);
									}
									object object12 = GetFirstObjectInShape(4, float4, GetLocation(oTarget), 0, 1, [0.0,0.0,0.0]);
									while (GetIsObjectValid(object12)) {
										if ((((object12 != oTarget) && GetIsEnemy(object12, OBJECT_SELF)) && (GetRacialType(object12) == 5))) {
											int23 = 30;
											int24 = (int23 / 2);
											effect55 = EffectDamage(int23, 2048, 0);
											effect57 = EffectDamage(int24, 2048, 0);
											ApplyEffectToObject(1, efBeam, object12, 1.0);
											if (ReflexSave(object12, int3, 16, OBJECT_SELF)) {
												if ((!GetHasFeat(125, object12))) {
													ApplyEffectToObject(0, effect55, object12, 0.0);
												}
											}
											else {
												ApplyEffectToObject(0, effect55, object12, 0.0);
												ApplyEffectToObject(1, effect60, object12, 12.0);
											}
										}
										object12 = GetNextObjectInShape(4, float4, GetLocation(oTarget), 0, 1, [0.0,0.0,0.0]);
									}
								}
								else {
									if ((int1 == 277)) {
										oTarget = GetSpellTargetObject();
										int int32 = 60;
										int3 = (20 + GetHitDice(OBJECT_SELF));
										efBeam = EffectBeam(2069, OBJECT_SELF, 0, 0);
										effect effect68 = EffectVisualEffect(1049, 0);
										ApplyEffectToObject(0, effect68, oTarget, 0.0);
										ApplyEffectToObject(1, efBeam, oTarget, 1.0);
										if (FortitudeSave(oTarget, int3, 0, OBJECT_SELF)) {
											int32 = 30;
										}
										effect effect70 = EffectDamage(int32, 2048, 0);
										ApplyEffectToObject(0, effect70, oTarget, 0.0);
									}
									else {
										if ((int1 == 278)) {
											oTarget = GetSpellTargetObject();
											int nLevel = GetHitDice(OBJECT_SELF);
											if ((nLevel > 10)) {
												nLevel = 10;
											}
											int nRandom = d6(nLevel);
											int3 = (5 + GetHitDice(OBJECT_SELF));
											efBeam = EffectBeam(2066, OBJECT_SELF, 0, 0);
											ApplyEffectToObject(1, efBeam, oTarget, 1.0);
											ApplyEffectToObject(0, EffectVisualEffect(1028, 0), oTarget, 0.0);
											if (FortitudeSave(oTarget, int3, 7, OBJECT_SELF)) {
												nRandom = (nRandom / 2);
											}
											efDamage = EffectDamage(nRandom, 128, 0);
											ApplyEffectToObject(0, efDamage, oTarget, 0.0);
										}
										else {
											if ((int1 == 279)) {
												oTarget = GetSpellTargetObject();
												efBeam = EffectBeam(2068, OBJECT_SELF, 0, 0);
												effect effect76 = EffectVisualEffect(1050, 0);
												ApplyEffectToObject(0, effect76, oTarget, 0.0);
												ApplyEffectToObject(1, efBeam, oTarget, 1.0);
												if ((!GetIsPoisoned(oTarget))) {
													effect efPoison = EffectPoison(7);
													ApplyEffectToObject(0, efPoison, oTarget, 0.0);
												}
											}
											else {
												if ((int1 == 280)) {
													oTarget = GetSpellTargetObject();
													efBeam = EffectBeam(2068, OBJECT_SELF, 0, 0);
													effect effect81 = EffectVisualEffect(1050, 0);
													ApplyEffectToObject(0, effect81, oTarget, 0.0);
													ApplyEffectToObject(1, efBeam, oTarget, 1.0);
													if ((!GetIsPoisoned(oTarget))) {
														effect effect83 = EffectPoison(5);
														ApplyEffectToObject(0, effect83, oTarget, 0.0);
													}
												}
												else {
													if ((int1 == 281)) {
														oTarget = GetSpellTargetObject();
														int4 = 100;
														int3 = (24 + GetHitDice(OBJECT_SELF));
														efBeam = EffectBeam(2026, OBJECT_SELF, 0, 0);
														ApplyEffectToObject(1, efBeam, oTarget, 1.0);
														if (ReflexSave(oTarget, int3, 0, OBJECT_SELF)) {
															if (GetHasFeat(125, oTarget)) {
																int4 = 0;
															}
															else {
																int4 = (int4 / 2);
															}
														}
														if ((int4 > 0)) {
															efDamage = EffectDamage(int4, 4096, 0);
															ApplyEffectToObject(0, efDamage, oTarget, 0.0);
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
				}
			}
		}
	}
}

