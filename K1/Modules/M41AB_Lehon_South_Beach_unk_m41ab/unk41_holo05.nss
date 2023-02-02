#include "k_inc_unk"

void main() {
	
	ActionPauseConversation();
	
	DelayCommand(1.0, UNK_RakDefence("unk41_pillar1", 20.0, TRUE));
	DelayCommand(1.0, UNK_RakDefence("unk41_pillar2", 20.0, TRUE));
	DelayCommand(1.0, UNK_RakDefence("unk41_pillar3", 20.0, TRUE));
	DelayCommand(1.0, UNK_RakDefence("unk41_pillar4", 20.0, TRUE));
	DelayCommand(1.0, UNK_RakDefence("unk41_pillar5", 20.0, TRUE));
	DelayCommand(1.0, UNK_RakDefence("unk41_pillar6", 20.0, TRUE));
	
	ActionWait(1.0);
	ActionResumeConversation();
}
