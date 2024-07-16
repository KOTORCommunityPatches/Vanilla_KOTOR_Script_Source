void main() {
	
	object oDrain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	string sName = GetName(oDrain);
	int nCaptive = StringToInt(sName);
	int StaticCam3;
	int StaticCam4;
	object oCaptive;
	
	if (nCaptive == 1)
		{
			StaticCam3 = 13;
			StaticCam4 = 14;
			oCaptive = GetObjectByTag("sta_plc_captive1", 0);
		}
	else if (nCaptive == 2)
		{
			StaticCam3 = 23;
			StaticCam4 = 24;
			oCaptive = GetObjectByTag("sta_plc_captive2", 0);
		}
	else if (nCaptive == 3)
		{
			StaticCam3 = 33;
			StaticCam4 = 34;
			oCaptive = GetObjectByTag("sta_plc_captive3", 0);
		}
	else if (nCaptive == 4)
		{
			StaticCam3 = 43;
			StaticCam4 = 44;
			oCaptive = GetObjectByTag("sta_plc_captive4", 0);
		}
	else if (nCaptive == 5)
		{
			StaticCam3 = 53;
			StaticCam4 = 54;
			oCaptive = GetObjectByTag("sta_plc_captive5", 0);
		}
	else if (nCaptive == 6)
		{
			StaticCam3 = 63;
			StaticCam4 = 64;
			oCaptive = GetObjectByTag("sta_plc_captive6", 0);
		}
	else if (nCaptive == 7)
		{
			StaticCam3 = 73;
			StaticCam4 = 74;
			oCaptive = GetObjectByTag("sta_plc_captive7", 0);
		}
	else
		{
			StaticCam3 = 83;
			StaticCam4 = 84;
			oCaptive = GetObjectByTag("sta_plc_captive8", 0);
		}
	
	SetDialogPlaceableCamera(StaticCam4);
}
