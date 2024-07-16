void main() {
	
	if (GetGlobalNumber("Tar_Sarna") == 99 || GetGlobalNumber("Tar_YunGend") == 99)
		{
			SetMapPinEnabled(GetObjectByTag("tar_party", 0), TRUE);
		}
	
	if (GetGlobalNumber("Tar_Sarna") == 99 && GetGlobalNumber("Tar_YunGend") == 99)
		{
			SetMapPinEnabled(GetObjectByTag("tar_party", 0), TRUE);
		}
}
