void main() {
	
	object oEntering = GetEnteringObject();
	string sPtyTag = GetTag(oEntering);
	
	if (sPtyTag == "cand" || sPtyTag == "jolee" || sPtyTag == "juhani" || sPtyTag == "mission" || sPtyTag == "zaalbar" || sPtyTag == "hk47" || sPtyTag == "t3m4" && !GetIsPC(oEntering))
		{
			DestroyObject(oEntering);
		}
}
