#ifndef TEST_QUANTLIB_H
#define TEST_QUANTLIB_H
extern "C" {
	typedef struct _ReturnValue {
		int value;
	} ReturnValue;
	ReturnValue test(int option, float option2);
}
#endif
