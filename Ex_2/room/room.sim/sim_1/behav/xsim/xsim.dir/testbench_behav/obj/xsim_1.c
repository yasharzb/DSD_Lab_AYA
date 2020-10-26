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
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void execute_556(char*, char *);
extern void execute_557(char*, char *);
extern void execute_558(char*, char *);
extern void execute_559(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_259(char*, char *);
extern void execute_260(char*, char *);
extern void execute_261(char*, char *);
extern void execute_262(char*, char *);
extern void execute_268(char*, char *);
extern void execute_269(char*, char *);
extern void execute_273(char*, char *);
extern void execute_274(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_281(char*, char *);
extern void execute_283(char*, char *);
extern void execute_285(char*, char *);
extern void execute_291(char*, char *);
extern void execute_297(char*, char *);
extern void execute_303(char*, char *);
extern void execute_309(char*, char *);
extern void execute_315(char*, char *);
extern void execute_321(char*, char *);
extern void execute_331(char*, char *);
extern void execute_336(char*, char *);
extern void execute_337(char*, char *);
extern void execute_341(char*, char *);
extern void execute_342(char*, char *);
extern void execute_347(char*, char *);
extern void execute_351(char*, char *);
extern void execute_353(char*, char *);
extern void execute_359(char*, char *);
extern void execute_365(char*, char *);
extern void execute_371(char*, char *);
extern void execute_377(char*, char *);
extern void execute_383(char*, char *);
extern void execute_389(char*, char *);
extern void execute_404(char*, char *);
extern void execute_405(char*, char *);
extern void execute_409(char*, char *);
extern void execute_410(char*, char *);
extern void execute_415(char*, char *);
extern void execute_419(char*, char *);
extern void execute_421(char*, char *);
extern void execute_427(char*, char *);
extern void execute_433(char*, char *);
extern void execute_439(char*, char *);
extern void execute_445(char*, char *);
extern void execute_451(char*, char *);
extern void execute_457(char*, char *);
extern void execute_472(char*, char *);
extern void execute_473(char*, char *);
extern void execute_477(char*, char *);
extern void execute_478(char*, char *);
extern void execute_483(char*, char *);
extern void execute_487(char*, char *);
extern void execute_489(char*, char *);
extern void execute_495(char*, char *);
extern void execute_501(char*, char *);
extern void execute_507(char*, char *);
extern void execute_513(char*, char *);
extern void execute_519(char*, char *);
extern void execute_525(char*, char *);
extern void execute_555(char*, char *);
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_560(char*, char *);
extern void execute_561(char*, char *);
extern void execute_562(char*, char *);
extern void execute_563(char*, char *);
extern void execute_564(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[78] = {(funcp)execute_251, (funcp)execute_252, (funcp)execute_253, (funcp)execute_556, (funcp)execute_557, (funcp)execute_558, (funcp)execute_559, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_259, (funcp)execute_260, (funcp)execute_261, (funcp)execute_262, (funcp)execute_268, (funcp)execute_269, (funcp)execute_273, (funcp)execute_274, (funcp)execute_279, (funcp)execute_280, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_281, (funcp)execute_283, (funcp)execute_285, (funcp)execute_291, (funcp)execute_297, (funcp)execute_303, (funcp)execute_309, (funcp)execute_315, (funcp)execute_321, (funcp)execute_331, (funcp)execute_336, (funcp)execute_337, (funcp)execute_341, (funcp)execute_342, (funcp)execute_347, (funcp)execute_351, (funcp)execute_353, (funcp)execute_359, (funcp)execute_365, (funcp)execute_371, (funcp)execute_377, (funcp)execute_383, (funcp)execute_389, (funcp)execute_404, (funcp)execute_405, (funcp)execute_409, (funcp)execute_410, (funcp)execute_415, (funcp)execute_419, (funcp)execute_421, (funcp)execute_427, (funcp)execute_433, (funcp)execute_439, (funcp)execute_445, (funcp)execute_451, (funcp)execute_457, (funcp)execute_472, (funcp)execute_473, (funcp)execute_477, (funcp)execute_478, (funcp)execute_483, (funcp)execute_487, (funcp)execute_489, (funcp)execute_495, (funcp)execute_501, (funcp)execute_507, (funcp)execute_513, (funcp)execute_519, (funcp)execute_525, (funcp)execute_555, (funcp)execute_255, (funcp)execute_256, (funcp)execute_257, (funcp)execute_560, (funcp)execute_561, (funcp)execute_562, (funcp)execute_563, (funcp)execute_564, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 78;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench_behav/xsim.reloc",  (void **)funcTab, 78);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testbench_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/testbench_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/testbench_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testbench_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testbench_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
