/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_254(char*, char *);
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_563(char*, char *);
extern void execute_564(char*, char *);
extern void execute_565(char*, char *);
extern void execute_566(char*, char *);
extern void execute_567(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void execute_559(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_561(char*, char *);
extern void execute_562(char*, char *);
extern void execute_262(char*, char *);
extern void execute_263(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_271(char*, char *);
extern void execute_272(char*, char *);
extern void execute_276(char*, char *);
extern void execute_277(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_284(char*, char *);
extern void execute_286(char*, char *);
extern void execute_288(char*, char *);
extern void execute_294(char*, char *);
extern void execute_300(char*, char *);
extern void execute_306(char*, char *);
extern void execute_312(char*, char *);
extern void execute_318(char*, char *);
extern void execute_324(char*, char *);
extern void execute_334(char*, char *);
extern void execute_339(char*, char *);
extern void execute_340(char*, char *);
extern void execute_344(char*, char *);
extern void execute_345(char*, char *);
extern void execute_350(char*, char *);
extern void execute_354(char*, char *);
extern void execute_356(char*, char *);
extern void execute_362(char*, char *);
extern void execute_368(char*, char *);
extern void execute_374(char*, char *);
extern void execute_380(char*, char *);
extern void execute_386(char*, char *);
extern void execute_392(char*, char *);
extern void execute_407(char*, char *);
extern void execute_408(char*, char *);
extern void execute_412(char*, char *);
extern void execute_413(char*, char *);
extern void execute_418(char*, char *);
extern void execute_422(char*, char *);
extern void execute_424(char*, char *);
extern void execute_430(char*, char *);
extern void execute_436(char*, char *);
extern void execute_442(char*, char *);
extern void execute_448(char*, char *);
extern void execute_454(char*, char *);
extern void execute_460(char*, char *);
extern void execute_475(char*, char *);
extern void execute_476(char*, char *);
extern void execute_480(char*, char *);
extern void execute_481(char*, char *);
extern void execute_486(char*, char *);
extern void execute_490(char*, char *);
extern void execute_492(char*, char *);
extern void execute_498(char*, char *);
extern void execute_504(char*, char *);
extern void execute_510(char*, char *);
extern void execute_516(char*, char *);
extern void execute_522(char*, char *);
extern void execute_528(char*, char *);
extern void execute_558(char*, char *);
extern void execute_258(char*, char *);
extern void execute_259(char*, char *);
extern void execute_260(char*, char *);
extern void execute_568(char*, char *);
extern void execute_569(char*, char *);
extern void execute_570(char*, char *);
extern void execute_571(char*, char *);
extern void execute_572(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[84] = {(funcp)execute_254, (funcp)execute_255, (funcp)execute_256, (funcp)execute_563, (funcp)execute_564, (funcp)execute_565, (funcp)execute_566, (funcp)execute_567, (funcp)execute_252, (funcp)execute_253, (funcp)execute_559, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_561, (funcp)execute_562, (funcp)execute_262, (funcp)execute_263, (funcp)execute_264, (funcp)execute_265, (funcp)execute_271, (funcp)execute_272, (funcp)execute_276, (funcp)execute_277, (funcp)execute_282, (funcp)execute_283, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_284, (funcp)execute_286, (funcp)execute_288, (funcp)execute_294, (funcp)execute_300, (funcp)execute_306, (funcp)execute_312, (funcp)execute_318, (funcp)execute_324, (funcp)execute_334, (funcp)execute_339, (funcp)execute_340, (funcp)execute_344, (funcp)execute_345, (funcp)execute_350, (funcp)execute_354, (funcp)execute_356, (funcp)execute_362, (funcp)execute_368, (funcp)execute_374, (funcp)execute_380, (funcp)execute_386, (funcp)execute_392, (funcp)execute_407, (funcp)execute_408, (funcp)execute_412, (funcp)execute_413, (funcp)execute_418, (funcp)execute_422, (funcp)execute_424, (funcp)execute_430, (funcp)execute_436, (funcp)execute_442, (funcp)execute_448, (funcp)execute_454, (funcp)execute_460, (funcp)execute_475, (funcp)execute_476, (funcp)execute_480, (funcp)execute_481, (funcp)execute_486, (funcp)execute_490, (funcp)execute_492, (funcp)execute_498, (funcp)execute_504, (funcp)execute_510, (funcp)execute_516, (funcp)execute_522, (funcp)execute_528, (funcp)execute_558, (funcp)execute_258, (funcp)execute_259, (funcp)execute_260, (funcp)execute_568, (funcp)execute_569, (funcp)execute_570, (funcp)execute_571, (funcp)execute_572, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 84;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/room_man_test_behav/xsim.reloc",  (void **)funcTab, 84);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/room_man_test_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/room_man_test_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/room_man_test_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/room_man_test_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/room_man_test_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
