void main() {
	int nLocal = GetLocalNumber(OBJECT_SELF, 31);
	DelayCommand(0.1, OpenStore(GetObjectByTag("m_202_002", 0), GetPCSpeaker(), (-nLocal), nLocal));
}
