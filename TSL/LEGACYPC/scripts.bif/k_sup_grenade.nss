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
	object oTarget;
	int int6;
	int int7 = GetHasFeat(48, OBJECT_SELF);
	int int9 = GetHasFeat(56, OBJECT_SELF);
	int int11 = GetHasFeat(57, OBJECT_SELF);
	if ((int7 == 1)) {
		int7 = 6;
	}
	if (((int1 == 87) || (int1 == 246))) {
		ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetSpellTargetLocation(), 0.0);
		int6 = 3003;
		int3 = (20 + int7);
		int4 = 15;
		oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oTarget)) {
			if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
				SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
				int5 = int4;
				int5 = (int5 - sub1(oTarget));
				if ((!ReflexSave(oTarget, int5, 0, OBJECT_SELF))) {
					ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
				}
				else {
					int int18;
					if (GetHasFeat(125, oTarget)) {
						int18 = 0;
					}
					else {
						int18 = (int3 / 2);
					}
					ApplyEffectToObject(0, EffectDamage(int18, 2, 0), oTarget, 0.0);
				}
			}
			oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
		}
	}
	else {
		if (((int1 == 88) || (int1 == 247))) {
			int6 = 3004;
			int4 = 15;
			effect efStun = EffectStunned();
			effect effect6 = EffectDroidStun();
			efStun = SetEffectIcon(efStun, 41);
			efStun = EffectLinkEffects(efStun, EffectVisualEffect(1040, 0));
			oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
			while (GetIsObjectValid(oTarget)) {
				if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
					SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
					int5 = int4;
					int5 = (int5 - sub1(oTarget));
					if ((!WillSave(oTarget, int5, 13, OBJECT_SELF))) {
						if ((GetRacialType(oTarget) == 5)) {
							ApplyEffectToObject(1, effect6, oTarget, 9.0);
						}
						else {
							if ((!GetIsLinkImmune(oTarget, efStun))) {
								ApplyEffectToObject(1, efStun, oTarget, 9.0);
							}
						}
					}
				}
				oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
			}
		}
		else {
			if (((int1 == 89) || (int1 == 248))) {
				ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetSpellTargetLocation(), 0.0);
				int6 = 3005;
				int3 = (60 + int7);
				int4 = 15;
				effect efPush = EffectForcePushTargeted(GetSpellTargetLocation(), 0);
				oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
				while (GetIsObjectValid(oTarget)) {
					if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
						SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
						int5 = int4;
						int5 = (int5 - sub1(oTarget));
						if ((!ReflexSave(oTarget, int5, 17, OBJECT_SELF))) {
							DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage(int3, 4096, 0), oTarget, 0.0));
						}
						else {
							int int32;
							if (GetHasFeat(125, oTarget)) {
								int32 = 0;
							}
							else {
								int32 = (int3 / 2);
							}
							DelayCommand(0.5, ApplyEffectToObject(0, EffectDamage(int32, 4096, 0), oTarget, 0.0));
						}
						ApplyEffectToObject(1, efPush, oTarget, 0.1);
					}
					oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
				}
			}
			else {
				if (((int1 == 90) || (int1 == 249))) {
					int6 = 3006;
					effect efPoison = EffectPoison(4);
					oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
					while ((GetIsObjectValid(oTarget) && (GetRacialType(oTarget) != 5))) {
						if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
							SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
							if ((!GetIsPoisoned(oTarget))) {
								ApplyEffectToObject(2, efPoison, oTarget, 0.0);
							}
						}
						oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
					}
				}
				else {
					if (((int1 == 91) || (int1 == 250))) {
						int6 = 3007;
						int3 = (20 + int7);
						int4 = 15;
						effect effect18 = EffectAbilityDecrease(1, 6);
						effect18 = SetEffectIcon(effect18, 41);
						oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
						while (GetIsObjectValid(oTarget)) {
							if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
								SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
								int5 = int4;
								int5 = (int5 - sub1(oTarget));
								if ((!WillSave(oTarget, int5, 13, OBJECT_SELF))) {
									ApplyEffectToObject(0, EffectDamage(int3, 1024, 0), oTarget, 0.0);
									ApplyEffectToObject(1, effect18, oTarget, 30.0);
								}
								else {
									ApplyEffectToObject(0, EffectDamage((int3 / 2), 1024, 0), oTarget, 0.0);
								}
							}
							oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
						}
					}
					else {
						if (((((int1 == 186) || (int1 == 187)) || (int1 == 255)) || (int1 == 256))) {
							int6 = 3007;
							effect effect23;
							if (((int1 == 187) || (int1 == 256))) {
								int3 = (12 + int7);
								int4 = 15;
								effect23 = EffectAbilityDecrease(1, 4);
							}
							else {
								int3 = (6 + int7);
								int4 = 15;
								effect23 = EffectAbilityDecrease(1, 2);
							}
							effect23 = SetEffectIcon(effect23, 41);
							oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
							while (GetIsObjectValid(oTarget)) {
								if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
									SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
									int5 = int4;
									int5 = (int5 - sub1(oTarget));
									if ((!WillSave(oTarget, int5, 13, OBJECT_SELF))) {
										ApplyEffectToObject(0, EffectDamage(int3, 1024, 0), oTarget, 0.0);
										ApplyEffectToObject(1, effect23, oTarget, 30.0);
									}
									else {
										ApplyEffectToObject(0, EffectDamage((int3 / 2), 1024, 0), oTarget, 0.0);
									}
								}
								oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
							}
						}
						else {
							if (((int1 == 92) || (int1 == 251))) {
								int6 = 3008;
								effect efEntangle = EffectEntangle();
								efEntangle = SetEffectIcon(efEntangle, 43);
								effect efVisual = EffectVisualEffect(1038, 0);
								oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
								while (GetIsObjectValid(oTarget)) {
									if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
										SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
										if (((!GetIsLinkImmune(oTarget, efEntangle)) || (GetRacialType(oTarget) == 5))) {
											ApplyEffectToObject(1, efEntangle, oTarget, 15.0);
											DelayCommand(0.8, ApplyEffectAtLocation(0, efVisual, GetLocation(oTarget), 0.0));
										}
									}
									oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
								}
							}
							else {
								if (((int1 == 93) || (int1 == 252))) {
									int6 = 3009;
									int3 = (20 + int7);
									int4 = 15;
									effect efParalyze = EffectParalyze();
									oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
									while (GetIsObjectValid(oTarget)) {
										if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
											SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
											int5 = int4;
											int5 = (int5 - sub1(oTarget));
											if ((!ReflexSave(oTarget, int5, 3, OBJECT_SELF))) {
												if (((!GetIsLinkImmune(oTarget, efParalyze)) || (GetRacialType(oTarget) == 5))) {
													efParalyze = SetEffectIcon(efParalyze, 44);
													ApplyEffectToObject(1, efParalyze, oTarget, 6.0);
												}
												ApplyEffectToObject(0, EffectDamage(int3, 32, 0), oTarget, 0.0);
											}
											else {
												int int61;
												if (GetHasFeat(125, oTarget)) {
													int61 = 0;
												}
												else {
													int61 = (int3 / 2);
												}
												ApplyEffectToObject(0, EffectDamage(int61, 32, 0), oTarget, 0.0);
											}
										}
										oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
									}
								}
								else {
									if (((int1 == 94) || (int1 == 253))) {
										ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetSpellTargetLocation(), 0.0);
										int6 = 3010;
										int3 = (36 + int7);
										int4 = 15;
										effect effect40 = EffectHorrified();
										effect effect42 = EffectVisualEffect(1039, 0);
										oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
										while (GetIsObjectValid(oTarget)) {
											if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
												SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
												int5 = int4;
												int5 = (int5 - sub1(oTarget));
												if ((!ReflexSave(oTarget, int5, 9, OBJECT_SELF))) {
													ApplyEffectToObject(0, EffectDamage(int3, 256, 0), oTarget, 0.0);
													ApplyEffectToObject(0, effect42, oTarget, 0.0);
													ApplyEffectToObject(1, effect40, oTarget, 2.0);
												}
												else {
													int int68;
													if (GetHasFeat(125, oTarget)) {
														int68 = 0;
													}
													else {
														int68 = (int3 / 2);
													}
													ApplyEffectToObject(0, EffectDamage(int68, 256, 0), oTarget, 0.0);
												}
											}
											oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
										}
									}
									else {
										if (((int1 == 95) || (int1 == 254))) {
											int6 = 3011;
											int3 = (15 + int7);
											int int70;
											int4 = 15;
											oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
											while (GetIsObjectValid(oTarget)) {
												int3 = (15 + int7);
												if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
													SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
													int5 = int4;
													int5 = (int5 - sub1(oTarget));
													if ((GetRacialType(oTarget) == 5)) {
														int3 = (int3 + 30);
													}
													if ((!ReflexSave(oTarget, int5, 16, OBJECT_SELF))) {
														ApplyEffectToObject(0, EffectDamage(int3, 2048, 0), oTarget, 0.0);
													}
													else {
														int int77;
														if (GetHasFeat(125, oTarget)) {
															int77 = 0;
														}
														else {
															int77 = (int3 / 2);
														}
														ApplyEffectToObject(0, EffectDamage(int77, 2048, 0), oTarget, 0.0);
													}
												}
												int70 = int3;
												oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
											}
										}
										else {
											if ((int1 == 185)) {
												oTarget = GetSpellTargetObject();
												ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetSpellTargetLocation(), 0.0);
												int6 = 3005;
												int3 = 10;
												int4 = 15;
												if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
													SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
													if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
														ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
													}
												}
												int3 = 24;
												oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
												while (GetIsObjectValid(oTarget)) {
													if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
														SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
														if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
															ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
														}
														else {
															int int86;
															if (GetHasFeat(125, oTarget)) {
																int86 = 0;
															}
															else {
																int86 = (int3 / 2);
															}
															ApplyEffectToObject(0, EffectDamage(int86, 2, 0), oTarget, 0.0);
														}
													}
													oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
												}
											}
											else {
												if ((int1 == 190)) {
													oTarget = GetSpellTargetObject();
													int6 = 3005;
													int3 = 50;
													int4 = 15;
													if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
														SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
														if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
															ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
														}
														else {
															int int91;
															if (GetHasFeat(125, oTarget)) {
																int91 = 0;
															}
															else {
																int91 = (int3 / 2);
															}
															ApplyEffectToObject(0, EffectDamage(int91, 2, 0), oTarget, 0.0);
														}
													}
												}
												else {
													if ((int1 == 191)) {
														oTarget = GetSpellTargetObject();
														int6 = 3006;
														int3 = 10;
														int4 = 15;
														if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
															SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
															if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
																ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
															}
														}
														effect effect55 = EffectPoison(8);
														oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
														while (GetIsObjectValid(oTarget)) {
															if (((!GetIsNeutral(oTarget, OBJECT_SELF)) && (GetRacialType(oTarget) != 5))) {
																SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																if ((!GetIsPoisoned(oTarget))) {
																	ApplyEffectToObject(2, effect55, oTarget, 0.0);
																}
															}
															oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
														}
													}
													else {
														if ((int1 == 192)) {
															oTarget = GetSpellTargetObject();
															int6 = 3011;
															int3 = 10;
															int4 = 15;
															if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
																	ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
																}
															}
															int3 = 48;
															oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
															while (GetIsObjectValid(oTarget)) {
																if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																	SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																	if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
																		ApplyEffectToObject(0, EffectDamage(int3, 2048, 0), oTarget, 0.0);
																	}
																	else {
																		int int108;
																		if (GetHasFeat(125, oTarget)) {
																			int108 = 0;
																		}
																		else {
																			int108 = (int3 / 2);
																		}
																		ApplyEffectToObject(0, EffectDamage(int108, 2048, 0), oTarget, 0.0);
																	}
																}
																oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
															}
														}
														else {
															if ((int1 == 193)) {
																oTarget = GetSpellTargetObject();
																ApplyEffectAtLocation(0, EffectVisualEffect(1044, 0), GetSpellTargetLocation(), 0.0);
																int6 = 3010;
																int3 = 10;
																int4 = 15;
																if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																	SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																	if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
																		ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
																	}
																}
																int3 = 36;
																oTarget = GetFirstObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
																while (GetIsObjectValid(oTarget)) {
																	if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																		SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																		if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
																			ApplyEffectToObject(0, EffectDamage(int3, 256, 0), oTarget, 0.0);
																		}
																		else {
																			int int117;
																			if (GetHasFeat(125, oTarget)) {
																				int117 = 0;
																			}
																			else {
																				int117 = (int3 / 2);
																			}
																			ApplyEffectToObject(0, EffectDamage(int117, 256, 0), oTarget, 0.0);
																		}
																	}
																	oTarget = GetNextObjectInShape(4, 4.0, GetSpellTargetLocation(), 0, 1, [0.0,0.0,0.0]);
																}
															}
															else {
																if ((int1 == 194)) {
																	oTarget = GetSpellTargetObject();
																	int3 = 1;
																	int4 = 15;
																	if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																		SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																		if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
																			ApplyEffectToObject(0, EffectDamage(int3, 1, 0), oTarget, 0.0);
																			effect effect65 = EffectForcePushed();
																			effect effect67 = EffectStunned();
																			ApplyEffectToObject(1, effect65, oTarget, 0.1);
																			DelayCommand(2.55, ApplyEffectToObject(1, effect67, oTarget, 9.0));
																		}
																	}
																}
																else {
																	if ((int1 == 195)) {
																		oTarget = GetSpellTargetObject();
																		int3 = 1;
																		if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																			SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																			ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
																			if (((!GetIsPoisoned(oTarget)) && (GetRacialType(oTarget) != 5))) {
																				effect effect70 = EffectPoison(9);
																				ApplyEffectToObject(2, effect70, oTarget, 0.0);
																			}
																		}
																	}
																	else {
																		if ((int1 == 196)) {
																			oTarget = GetSpellTargetObject();
																			int3 = 1;
																			int4 = 25;
																			if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																				SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																				ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
																				if ((!FortitudeSave(oTarget, int4, 12, OBJECT_SELF))) {
																					if (((!GetIsPoisoned(oTarget)) && (GetRacialType(oTarget) != 5))) {
																						effect effect73 = EffectPoison(10);
																						ApplyEffectToObject(2, effect73, oTarget, 0.0);
																					}
																				}
																				else {
																					if (((!GetIsPoisoned(oTarget)) && (GetRacialType(oTarget) != 5))) {
																						effect effect75 = EffectPoison(11);
																						ApplyEffectToObject(2, effect75, oTarget, 0.0);
																					}
																				}
																			}
																		}
																		else {
																			if ((int1 == 197)) {
																				oTarget = GetSpellTargetObject();
																				int3 = 1;
																				int4 = 20;
																				if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																					SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																					ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
																					if ((!FortitudeSave(oTarget, int4, 18, OBJECT_SELF))) {
																						if ((GetRacialType(oTarget) != 5)) {
																							effect effect78 = EffectParalyze();
																							effect78 = SetEffectIcon(effect78, 44);
																							ApplyEffectToObject(1, effect78, oTarget, 9.0);
																						}
																					}
																					else {
																						if ((GetRacialType(oTarget) != 5)) {
																							effect effect81 = EffectMovementSpeedDecrease(50);
																							effect81 = EffectLinkEffects(effect81, EffectACDecrease(2, 0, 8199));
																							effect81 = EffectLinkEffects(effect81, EffectAttackDecrease(2, 0));
																							effect81 = EffectLinkEffects(effect81, EffectSavingThrowDecrease(2, 2, 0));
																							ApplyEffectToObject(1, effect81, oTarget, 3.0);
																						}
																					}
																				}
																			}
																			else {
																				if ((int1 == 198)) {
																					oTarget = GetSpellTargetObject();
																					int3 = 1;
																					int4 = 20;
																					if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																						SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																						ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
																						if ((!FortitudeSave(oTarget, int4, 18, OBJECT_SELF))) {
																							if ((GetRacialType(oTarget) != 5)) {
																								effect effect90 = EffectStunned();
																								effect90 = SetEffectIcon(effect90, 41);
																								effect90 = EffectLinkEffects(effect90, EffectVisualEffect(1040, 0));
																								ApplyEffectToObject(1, effect90, oTarget, 9.0);
																							}
																						}
																					}
																				}
																				else {
																					if ((int1 == 199)) {
																						oTarget = GetSpellTargetObject();
																						int3 = 50;
																						int4 = 10;
																						if ((!GetIsNeutral(oTarget, OBJECT_SELF))) {
																							SignalEvent(oTarget, EventSpellCastAt(OBJECT_SELF, GetSpellId(), intGLOB_6));
																							if ((!ReflexSave(oTarget, int4, 0, OBJECT_SELF))) {
																								ApplyEffectToObject(0, EffectDamage(int3, 2, 0), oTarget, 0.0);
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

