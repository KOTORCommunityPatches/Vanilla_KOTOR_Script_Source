// Byte code does not match

void main() {
 	DelayCommand(0.1, ActionStartConversation(GetFirstPC(), "", FALSE, 0, TRUE));
 	DelayCommand(20.0, SignalEvent(GetArea(OBJECT_SELF), EventUserDefined(10)));
 }
