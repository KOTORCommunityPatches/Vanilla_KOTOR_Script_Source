void main() {
	object oSec_terminal50 = GetObjectByTag("sec_terminal50", 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	location location1 = GetLocation(oSec_terminal50);
	DelayCommand(2.0, ApplyEffectAtLocation(0, efVisual, location1, 0.0));
	DelayCommand(2.5, DestroyObject(oSec_terminal50, 0.2, 1, 0.0, 0));
}