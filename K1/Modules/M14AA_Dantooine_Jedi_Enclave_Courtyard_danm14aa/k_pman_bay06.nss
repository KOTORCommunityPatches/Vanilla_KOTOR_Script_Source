void main() {
	
	SoundObjectPlay(GetObjectByTag("dan14_hound", 0));
	
	object oSpwn = GetObjectByTag("spawn_kath02", 0);
	int nCnt;
	object oKath = CreateObject(OBJECT_TYPE_CREATURE, "g_kathhound012", GetLocation(GetObjectByTag("spawn_kath01", 0)));
	
	nCnt = 1;
	
	while (nCnt <= 2)
		{
			oKath = CreateObject(OBJECT_TYPE_CREATURE, "g_kathhound012", GetLocation(GetObjectByTag("spawn_kath01", 0)));
			
			nCnt++;
		}
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}
