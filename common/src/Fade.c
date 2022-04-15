#include "Fade.h"
#include "BankManager.h"

void FadeIn_b() BANKED;
void FadeOut_b() BANKED;
void FadeInStep_b(UINT8 step) BANKED;

void FadeIn() {
	FadeIn_b();
}
void FadeInStep(UINT8 step) {
	FadeInStep_b(step);
}

void FadeOut() {
	FadeOut_b();
}