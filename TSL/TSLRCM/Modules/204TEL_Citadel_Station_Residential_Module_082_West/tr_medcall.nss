void main() {
	if ((GetGlobalNumber("200TEL_CzerkaM_Exch") == 5)) {
		object oWallt_ring = GetObjectByTag("wallt_ring", 0);
		SoundObjectPlay(oWallt_ring);
	}
}