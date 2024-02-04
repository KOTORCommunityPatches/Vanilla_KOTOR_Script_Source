// Prototypes
void sub4();
void sub3();
void sub2();
void sub1();

void sub4() {
	CreateObject(64, "gas4", GetLocation(GetObjectByTag("wp_gas_4", 0)), 0);
}

void sub3() {
	CreateObject(64, "gas3", GetLocation(GetObjectByTag("wp_gas_3", 0)), 0);
}

void sub2() {
	CreateObject(64, "gas2", GetLocation(GetObjectByTag("wp_gas_2", 0)), 0);
}

void sub1() {
	CreateObject(64, "gas1", GetLocation(GetObjectByTag("wp_gas_1", 0)), 0);
}

void main() {
	DelayCommand(0.5, sub1());
	DelayCommand(1.0, sub2());
	DelayCommand(1.5, sub3());
	DelayCommand(2.0, sub4());
}