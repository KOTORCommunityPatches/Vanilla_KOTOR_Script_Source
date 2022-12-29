
void RaceTime() {
	int nMin;
	int nSecs;
	int nMilSecs;
	nMin = GetGlobalNumber("TAR_SWOOP_MIN");
	nSecs = GetGlobalNumber("TAR_SWOOP_SEC");
	nMilSecs = GetGlobalNumber("TAR_SWOOP_MSEC");
	nMilSecs = (nMilSecs - 25);
	
	if (nMilSecs < 0)
		{
			nSecs = (nSecs - 1);
			nMilSecs = (nMilSecs + 100);
		}
	
	if (nSecs < 0)
		{
			nMin = (nMin - 1);
			nSecs = (nSecs + 60);
		}
	
	if (nMin <= 0 && nSecs < 22)
		{
			nMin = 0;
			nSecs = 30;
			nMilSecs = 0;
		}
	
	SetGlobalNumber("TAR_SWOOP_MIN_BEAT", nMin);
	SetGlobalNumber("TAR_SWOOP_SEC_BEAT", nSecs);
	SetGlobalNumber("TAR_SWOOP_MSEC_BEAT", nMilSecs);
	SetCustomToken(30, (IntToString(nMin) + ":" + IntToString(nSecs) + ":" + IntToString(nMilSecs)));
}

int TotalTime(int nTimeA, int nTimeB, int nTimeC) {
	return ((nTimeA * 10000) + (nTimeB * 100) + nTimeC);
}

void main() {
	
	if (GetGlobalBoolean("TAR_SWOOP_RUN"))
		{
			SetGlobalBoolean("TAR_SWOOP_RUN", 0);
			
			if (TotalTime(GetGlobalNumber("TAR_SWOOP_MIN"), GetGlobalNumber("TAR_SWOOP_SEC"), GetGlobalNumber("TAR_SWOOP_MSEC")) < TotalTime(GetGlobalNumber("TAR_SWOOP_MIN_BEAT"), GetGlobalNumber("TAR_SWOOP_SEC_BEAT"), GetGlobalNumber("TAR_SWOOP_MSEC_BEAT")))
				{
					SetGlobalNumber("Tar_SwoopStatus", 2);
					RaceTime();
				}
				else
					{
						SetGlobalNumber("Tar_SwoopStatus", 1);
					}
			
			SetGlobalNumber("TAR_SWOOP_ACCEL", (GetGlobalNumber("TAR_SWOOP_ACCEL") + 1));
			
			if (GetGlobalNumber("Tar_SwoopRaceCounter") == 5 && GetGlobalNumber("Tar_SwoopStatus") == 1)
				{
					DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), GetFirstPC()));
				}
				else
				{
					SetGlobalFadeOut();
					AssignCommand(GetObjectByTag("tar03_Mechanic", 0), ActionStartConversation(GetFirstPC(), "", FALSE, 0, TRUE));
				}
		}
}
