// Could not recompile

int StartingConditional() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	effect efAbilityInc = EffectAbilityIncrease(1, 1);
	effect effect3 = EffectAbilityIncrease(3, 1);
	switch (nParam1) {
		case 1:
			int int5 = (IsNPCPartyMember(8) && (!GetGlobalNumber("800DRO_Upg_T3M4_01")));
			int int8 = (IsNPCPartyMember(3) && (!GetGlobalNumber("800DRO_Upg_G0T0_01")));
			int int11 = (IsNPCPartyMember(5) && (!GetGlobalNumber("800DRO_Upg_HK47_01")));
			switch (nParam2) {
				case 1:
					int5;
					if ((int5 && (!int8))) {
						if ((int5 && (!int11))) {
							ApplyEffectToObject(2, efAbilityInc, GetObjectByTag("T3M4", 0), 0.0);
							SetGlobalNumber("800DRO_Upg_T3M4_01", 1);
							return 1;
						}
						return 0;
						(!int5);
						if ((int5 && int8)) {
							if ((int5 && (!int11))) {
								ApplyEffectToObject(2, efAbilityInc, GetObjectByTag("G0T0", 0), 0.0);
								SetGlobalNumber("800DRO_Upg_G0T0_01", 1);
								return 1;
							}
							return 0;
							(!int5);
							if ((int5 && (!int8))) {
								if ((int5 && int11)) {
									ApplyEffectToObject(2, efAbilityInc, GetObjectByTag("HK47", 0), 0.0);
									SetGlobalNumber("800DRO_Upg_HK47_01", 1);
									return 1;
								}
								return 0;
								int5;
								if ((int5 && int8)) {
									ApplyEffectToObject(2, efAbilityInc, GetObjectByTag("T3M4", 0), 0.0);
									ApplyEffectToObject(2, efAbilityInc, GetObjectByTag("G0T0", 0), 0.0);
									SetGlobalNumber("800DRO_Upg_T3M4_01", 1);
									SetGlobalNumber("800DRO_Upg_G0T0_01", 1);
									return 1;
								}
								return 0;
								int5;
								if ((int5 && int11)) {
									ApplyEffectToObject(2, efAbilityInc, GetObjectByTag("T3M4", 0), 0.0);
									ApplyEffectToObject(2, efAbilityInc, GetObjectByTag("HK47", 0), 0.0);
									SetGlobalNumber("800DRO_Upg_T3M4_01", 1);
									SetGlobalNumber("800DRO_Upg_HK47_01", 1);
									return 1;
								}
								return 0;
								int11;
								if ((int11 && int8)) {
									ApplyEffectToObject(2, efAbilityInc, GetObjectByTag("HK47", 0), 0.0);
									ApplyEffectToObject(2, efAbilityInc, GetObjectByTag("G0T0", 0), 0.0);
									SetGlobalNumber("800DRO_Upg_HK47_01", 1);
									SetGlobalNumber("800DRO_Upg_G0T0_01", 1);
									return 1;
								}
								return 0;
								return 0;
								int int14 = (IsNPCPartyMember(8) && (!GetGlobalNumber("800DRO_Upg_T3M4_01")));
								int int17 = (IsNPCPartyMember(3) && (!GetGlobalNumber("800DRO_Upg_G0T0_01")));
								int int20 = (IsNPCPartyMember(5) && (!GetGlobalNumber("800DRO_Upg_HK47_01")));
								switch (nParam2) {
									case 1:
										int14;
										if ((int14 && (!int17))) {
											if ((int14 && (!int20))) {
												ApplyEffectToObject(2, effect3, GetObjectByTag("T3M4", 0), 0.0);
												SetGlobalNumber("800DRO_Upg_T3M4_02", 1);
												return 1;
											}
											return 0;
											(!int14);
											if ((int14 && int17)) {
												if ((int14 && (!int20))) {
													ApplyEffectToObject(2, effect3, GetObjectByTag("G0T0", 0), 0.0);
													SetGlobalNumber("800DRO_Upg_G0T0_02", 1);
													return 1;
												}
												return 0;
												(!int14);
												if ((int14 && (!int17))) {
													if ((int14 && int20)) {
														ApplyEffectToObject(2, effect3, GetObjectByTag("HK47", 0), 0.0);
														SetGlobalNumber("800DRO_Upg_HK47_02", 1);
														return 1;
													}
													return 0;
													int14;
													if ((int14 && int17)) {
														ApplyEffectToObject(2, effect3, GetObjectByTag("T3M4", 0), 0.0);
														ApplyEffectToObject(2, effect3, GetObjectByTag("G0T0", 0), 0.0);
														SetGlobalNumber("800DRO_Upg_T3M4_02", 1);
														SetGlobalNumber("800DRO_Upg_G0T0_02", 1);
														return 1;
													}
													return 0;
													int14;
													if ((int14 && int20)) {
														ApplyEffectToObject(2, effect3, GetObjectByTag("T3M4", 0), 0.0);
														ApplyEffectToObject(2, effect3, GetObjectByTag("HK47", 0), 0.0);
														SetGlobalNumber("800DRO_Upg_T3M4_02", 1);
														SetGlobalNumber("800DRO_Upg_HK47_02", 1);
														return 1;
													}
													return 0;
													int20;
													if ((int20 && int17)) {
														ApplyEffectToObject(2, effect3, GetObjectByTag("HK47", 0), 0.0);
														ApplyEffectToObject(2, effect3, GetObjectByTag("G0T0", 0), 0.0);
														SetGlobalNumber("800DRO_Upg_HK47_02", 1);
														SetGlobalNumber("800DRO_Upg_G0T0_02", 1);
														return 1;
													}
													return 0;
													return 0;
													return 0;
												}
											}
										}
									case 2:
									case 3:
									case 4:
									case 5:
									case 6:
								}
							}
						}
					}
				case 2:
				case 3:
				case 4:
				case 5:
				case 6:
			}
		case 2:
	}
}

