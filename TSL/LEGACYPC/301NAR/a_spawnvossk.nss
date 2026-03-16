// Prototypes
void sub10();
void sub9();
void sub8();
void sub7();
void sub6();
void sub5();
void sub4();
void sub3();
void sub2();
void sub1();

void sub10() {
	CreateObject(1, "n_twilekf007", GetLocation(GetObjectByTag("WP_VOSSK_TWIN2_0", 0)), 0);
}

void sub9() {
	CreateObject(1, "n_twilekf006", GetLocation(GetObjectByTag("WP_VOSSK_TWIN1_0", 0)), 0);
}

void sub8() {
	CreateObject(1, "p_hanharr001", GetLocation(GetObjectByTag("WP_VOSSK_HANHARR_0", 0)), 0);
}

void sub7() {
	CreateObject(1, "p_mira001", GetLocation(GetObjectByTag("WP_VOSSK_MIRA_0", 0)), 0);
}

void sub6() {
	CreateObject(1, "n_azanti002", GetLocation(GetObjectByTag("WP_VOSSK_AZANTI_0", 0)), 0);
}

void sub5() {
	CreateObject(1, "n_Zhug013", GetLocation(GetObjectByTag("WP_VOSSK_ZHUG6_0", 0)), 0);
}

void sub4() {
	CreateObject(1, "n_Zhug012", GetLocation(GetObjectByTag("WP_VOSSK_ZHUG5_0", 0)), 0);
}

void sub3() {
	CreateObject(1, "n_Zhug011", GetLocation(GetObjectByTag("WP_VOSSK_ZHUG4_0", 0)), 0);
}

void sub2() {
	CreateObject(1, "n_Zhug010", GetLocation(GetObjectByTag("WP_VOSSK_ZHUG3_0", 0)), 0);
}

void sub1() {
	CreateObject(1, "n_Zhug009", GetLocation(GetObjectByTag("WP_VOSSK_ZHUG2_0", 0)), 0);
}

void main() {
	CreateObject(1, "n_gand002", GetLocation(GetObjectByTag("WP_VOSSK_GAND1_0", 0)), 0);
	CreateObject(1, "n_gand003", GetLocation(GetObjectByTag("WP_VOSSK_GAND2_0", 0)), 0);
	CreateObject(1, "n_gand004", GetLocation(GetObjectByTag("WP_VOSSK_GAND3_0", 0)), 0);
	DelayCommand(2.0, sub1());
	DelayCommand(1.0, sub2());
	DelayCommand(0.3, sub3());
	DelayCommand(1.7, sub4());
	DelayCommand(2.5, sub5());
	DelayCommand(0.7, sub6());
	DelayCommand(4.5, sub7());
	DelayCommand(5.0, sub8());
	DelayCommand(4.0, sub9());
	DelayCommand(3.5, sub10());
}

