
/*
 * ======== imports ========
 */


/*
 * ======== forward declarations for intrinsics ========
 */

void atmega_gpio_Test_01_pollen__reset__E();
void atmega_gpio_Test_01_pollen__ready__E();
void atmega_gpio_Test_01_pollen__shutdown__E(uint8 id);
void atmega_gpio_Test_01_pollen__wake__E(uint8 id);
void atmega_gpio_Test_01_pollen__hibernate__E(uint8 id);

/*
 * ======== extern definition ========
 */

extern struct test54_PrintImpl_ test54_PrintImpl;

/*
 * ======== struct module definition (unit PrintImpl) ========
 */

struct test54_PrintImpl_ {
};
typedef struct test54_PrintImpl_ test54_PrintImpl_;

/*
 * ======== function members (unit PrintImpl) ========
 */

extern void test54_PrintImpl_printUint__E( uint32 u );
extern void test54_PrintImpl_printStr__E( string s );
extern void test54_PrintImpl_targetInit__I();
extern void test54_PrintImpl_printInt__E( int32 i );
extern void test54_PrintImpl_printBool__E( bool b );
extern void test54_PrintImpl_printReal__E( float f );


/*
 * ======== data members (unit PrintImpl) ========
 */

