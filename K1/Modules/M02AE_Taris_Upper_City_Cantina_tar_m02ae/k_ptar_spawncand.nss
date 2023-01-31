void main() {
	
	object oEntering = GetEnteringObject();
	object oCand;
	
	if (!GetGlobalBoolean("TAR_CANDSPAWN") && GetGlobalBoolean("Tar_SwoopRace") && GetIsPC(oEntering))
		{
			SetGlobalBoolean("TAR_CANDSPAWN", TRUE);
			oCand = CreateObject(OBJECT_TYPE_CREATURE, "tar03_cander031", GetLocation(GetObjectByTag("ptar_spcander", 0)));
		}
}