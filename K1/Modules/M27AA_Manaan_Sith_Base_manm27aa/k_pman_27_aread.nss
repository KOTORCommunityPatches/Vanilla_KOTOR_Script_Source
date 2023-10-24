void main() {
	
	switch (GetUserDefinedEventNumber())
		{
			case 100:
				SetGlobalFadeOut();
				DelayCommand(2.0, SetGlobalFadeIn(0.0, 2.0));
				
					{
						int nCnt = 1;
						object oSelkath = GetObjectByTag(("man27_seljed" + IntToString(nCnt)), 0);
						
						while (GetIsObjectValid(oSelkath) && nCnt < 4)
							{
								DelayCommand(0.1, DestroyObject(oSelkath));
								
								nCnt++;
								
								oSelkath = GetObjectByTag(("man27_seljed" + IntToString(nCnt)), 0);
							}
					}
		}
}
