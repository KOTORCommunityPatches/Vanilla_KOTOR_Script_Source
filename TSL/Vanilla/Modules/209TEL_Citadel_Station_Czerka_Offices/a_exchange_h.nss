// Prototypes
void sub2(int intParam1);
void sub1(int intParam1);

void sub2(int intParam1) {
	if ((intParam1 == 1)) {
		object o203_Slusk = GetObjectByTag("203_Slusk", 0);
		SetMinOneHP(o203_Slusk, 0);
		DelayCommand(0.1, ChangeToStandardFaction(o203_Slusk, 1));
		DelayCommand(0.1, ChangeToStandardFaction(GetObjectByTag("hidden_turret", 0), 1));
		DelayCommand(0.1, ChangeToStandardFaction(GetObjectByTag("hidden_turret", 1), 1));
	}
	else {
		if ((intParam1 == 2)) {
			object o203_Luxa = GetObjectByTag("203_Luxa", 0);
			object object7 = GetObjectByTag("203_Slusk", 0);
			SetMinOneHP(object7, 1);
			DelayCommand(0.1, ChangeToStandardFaction(GetObjectByTag("203_Slusk", 0), 2));
			DelayCommand(0.1, ChangeToStandardFaction(GetObjectByTag("hidden_turret", 0), 2));
			DelayCommand(0.1, ChangeToStandardFaction(GetObjectByTag("hidden_turret", 1), 2));
		}
	}
}

void sub1(int intParam1) {
	object o203_Luxa = GetObjectByTag("203_Luxa", 0);
	object oGamGuardLux = GetObjectByTag("GamGuardLux", 0);
	object object5 = GetObjectByTag("GamGuardLux", 1);
	object oGamGuardLuxB = GetObjectByTag("GamGuardLuxB", 0);
	if ((intParam1 == 1)) {
		SetMinOneHP(o203_Luxa, 0);
		DelayCommand(0.1, ChangeToStandardFaction(o203_Luxa, 1));
		AssignCommand(oGamGuardLux, ClearAllActions());
		ChangeToStandardFaction(oGamGuardLux, 1);
		AssignCommand(object5, ClearAllActions());
		ChangeToStandardFaction(object5, 1);
		AssignCommand(oGamGuardLuxB, ClearAllActions());
		ChangeToStandardFaction(oGamGuardLuxB, 1);
	}
	else {
		if ((intParam1 == 2)) {
			object o203_Slusk = GetObjectByTag("203_Slusk", 0);
			SetMinOneHP(o203_Luxa, 1);
			DelayCommand(0.1, ChangeToStandardFaction(o203_Luxa, 2));
			AssignCommand(oGamGuardLux, ClearAllActions());
			ChangeToStandardFaction(oGamGuardLux, 2);
			AssignCommand(object5, ClearAllActions());
			ChangeToStandardFaction(object5, 2);
			AssignCommand(oGamGuardLuxB, ClearAllActions());
			ChangeToStandardFaction(oGamGuardLuxB, 2);
		}
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if (((nParam1 == 1) && (nParam2 == 2))) {
		SetGlobalNumber("203TEL_ExchangeChoice", 2);
	}
	else {
		if (((nParam1 == 2) && (nParam2 == 1))) {
			SetGlobalNumber("203TEL_ExchangeChoice", 1);
		}
		else {
			if (((nParam1 == 1) && (nParam2 == 1))) {
				SetGlobalNumber("203TEL_ExchangeChoice", 3);
			}
			else {
				if (((nParam1 == 1) && (nParam2 == 0))) {
					SetGlobalNumber("203TEL_ExchangeChoice", 3);
				}
				else {
					if (((nParam1 == 0) && (nParam2 == 1))) {
						SetGlobalNumber("203TEL_ExchangeChoice", 3);
					}
				}
			}
		}
	}
	sub1(nParam1);
	sub2(nParam2);
}
