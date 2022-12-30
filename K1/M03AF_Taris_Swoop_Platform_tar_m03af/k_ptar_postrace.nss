// Byte code does not match

void main() {
 	object oTar03_brejik031;
 	object oBastilla03;
 	object oTar03_vulkguard;
 	
 	SetGlobalBoolean("Tar_SwoopRace", TRUE);
 	
 	oBastilla03 = GetObjectByTag("Bastilla03", 0);
 	AssignCommand(oBastilla03, ClearAllEffects());
 	
 	oTar03_brejik031 = CreateObject(1, "tar03_brejik031", GetLocation(GetObjectByTag("tar03_wpbrejik", 0)), 0);
 	CreateObject(1, "tar_bast_guard_p", GetLocation(GetObjectByTag("tar_bast_guard_p_wp", 0)), 0);
 	
 	oTar03_vulkguard = GetObjectByTag("tar03_bastguard", 0);
 	AssignCommand(oTar03_vulkguard, ActionJumpToObject(GetObjectByTag("tar03_guard1", 0), 0));
 	
 	oTar03_vulkguard = CreateObject(1, "tar03_vulkguard", GetLocation(GetObjectByTag("tar03_guard2", 0)), 0);
 	
 	SetGlobalFadeOut(0.0, 1.0);
 	
 	DelayCommand(0.2, AssignCommand(GetObjectByTag("RaceAnnoun031", 0), ActionStartConversation(GetObjectByTag("converse", 0), "", FALSE, 0, TRUE)));
 }
