void main() {
	if ((GetGlobalNumber("200TEL_CzerkaM_Exch") == 5)) {
		object oWallt_med = GetObjectByTag("wallt_med", 0);
		SoundObjectPlay(oWallt_med);
	}
}