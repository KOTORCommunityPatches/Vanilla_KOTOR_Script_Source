void main() {
	object oExchangeThug302_1 = GetObjectByTag("ExchangeThug302_1", 0);
	object oExchangeThug302_2 = GetObjectByTag("ExchangeThug302_2", 0);
	if (GetIsObjectValid(oExchangeThug302_1)) {
		DestroyObject(oExchangeThug302_1, 0.0, 0, 0.0, 0);
	}
	if (GetIsObjectValid(oExchangeThug302_2)) {
		DestroyObject(oExchangeThug302_2, 0.0, 0, 0.0, 0);
	}
}