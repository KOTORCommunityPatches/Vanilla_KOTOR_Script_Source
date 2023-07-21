void main() {
	int int1 = GetSpellId();
	int int3;
	int int4;
	if ((int1 == 99)) {
		int3 = 6;
		int4 = 45;
	}
	else {
		if ((int1 == 100)) {
			int3 = 7;
			int4 = 46;
		}
		else {
			if ((int1 == 101)) {
				int3 = 8;
				int4 = 47;
			}
			else {
				if ((int1 == 102)) {
					int3 = 9;
					int4 = 48;
				}
				else {
					if ((int1 == 103)) {
						int3 = 10;
						int4 = 49;
					}
					else {
						if ((int1 == 104)) {
							int3 = 11;
							int4 = 50;
						}
						else {
							if ((int1 == 105)) {
								int3 = 12;
								int4 = 51;
							}
							else {
								if ((int1 == 106)) {
									int3 = 13;
									int4 = 52;
								}
								else {
									if ((int1 == 107)) {
										int3 = 14;
										int4 = 53;
									}
									else {
										if ((int1 == 110)) {
											int3 = 0;
											int4 = 54;
										}
										else {
											if ((int1 == 111)) {
												int3 = 1;
												int4 = 54;
											}
											else {
												if ((int1 == 112)) {
													int3 = 2;
													int4 = 54;
												}
												else {
													if ((int1 == 113)) {
														int3 = 3;
														int4 = 54;
													}
													else {
														if ((int1 == 114)) {
															int3 = 4;
															int4 = 54;
														}
														else {
															if ((int1 == 115)) {
																int3 = 5;
																int4 = 54;
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
	effect effect1 = EffectForceShield(int3);
	effect1 = SetEffectIcon(effect1, int4);
	ApplyEffectToObject(1, effect1, GetSpellTargetObject(), 200.0);
}

