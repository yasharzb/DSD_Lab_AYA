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
extern void execute_243(char*, char *);
extern void execute_244(char*, char *);
extern void execute_245(char*, char *);
extern void execute_543(char*, char *);
extern void execute_544(char*, char *);
extern void execute_545(char*, char *);
extern void execute_250(char*, char *);
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_259(char*, char *);
extern void execute_260(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_270(char*, char *);
extern void execute_271(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_272(char*, char *);
extern void execute_274(char*, char *);
extern void execute_276(char*, char *);
extern void execute_282(char*, char *);
extern void execute_288(char*, char *);
extern void execute_294(char*, char *);
extern void execute_300(char*, char *);
extern void execute_306(char*, char *);
extern void execute_312(char*, char *);
extern void execute_322(char*, char *);
extern void execute_327(char*, char *);
extern void execute_328(char*, char *);
extern void execute_332(char*, char *);
extern void execute_333(char*, char *);
extern void execute_338(char*, char *);
extern void execute_342(char*, char *);
extern void execute_344(char*, char *);
extern void execute_350(char*, char *);
extern void execute_356(char*, char *);
extern void execute_362(char*, char *);
extern void execute_368(char*, char *);
extern void execute_374(char*, char *);
extern void execute_380(char*, char *);
extern void execute_395(char*, char *);
extern void execute_396(char*, char *);
extern void execute_400(char*, char *);
extern void execute_401(char*, char *);
extern void execute_406(char*, char *);
extern void execute_410(char*, char *);
extern void execute_412(char*, char *);
extern void execute_418(char*, char *);
extern void execute_424(char*, char *);
extern void execute_430(char*, char *);
extern void execute_436(char*, char *);
extern void execute_442(char*, char *);
extern void execute_448(char*, char *);
extern void execute_463(char*, char *);
extern void execute_464(char*, char *);
extern void execute_468(char*, char *);
extern void execute_469(char*, char *);
extern void execute_474(char*, char *);
extern void execute_478(char*, char *);
extern void execute_480(char*, char *);
extern void execute_486(char*, char *);
extern void execute_492(char*, char *);
extern void execute_498(char*, char *);
extern void execute_504(char*, char *);
extern void execute_510(char*, char *);
extern void execute_516(char*, char *);
extern void execute_542(char*, char *);
extern void execute_247(char*, char *);
extern void execute_248(char*, char *);
extern void execute_249(char*, char *);
extern void execute_546(char*, char *);
extern void execute_547(char*, char *);
extern void execute_548(char*, char *);
extern void execute_549(char*, char *);
extern void execute_550(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[77] = {(funcp)execute_243, (funcp)execute_244, (funcp)execute_245, (funcp)execute_543, (funcp)execute_544, (funcp)execute_545, (funcp)execute_250, (funcp)execute_251, (funcp)execute_252, (funcp)execute_253, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_259, (funcp)execute_260, (funcp)execute_264, (funcp)execute_265, (funcp)execute_270, (funcp)execute_271, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_272, (funcp)execute_274, (funcp)execute_276, (funcp)execute_282, (funcp)execute_288, (funcp)execute_294, (funcp)execute_300, (funcp)execute_306, (funcp)execute_312, (funcp)execute_322, (funcp)execute_327, (funcp)execute_328, (funcp)execute_332, (funcp)execute_333, (funcp)execute_338, (funcp)execute_342, (funcp)execute_344, (funcp)execute_350, (funcp)execute_356, (funcp)execute_362, (funcp)execute_368, (funcp)execute_374, (funcp)execute_380, (funcp)execute_395, (funcp)execute_396, (funcp)execute_400, (funcp)execute_401, (funcp)execute_406, (funcp)execute_410, (funcp)execute_412, (funcp)execute_418, (funcp)execute_424, (funcp)execute_430, (funcp)execute_436, (funcp)execute_442, (funcp)execute_448, (funcp)execute_463, (funcp)execute_464, (funcp)execute_468, (funcp)execute_469, (funcp)execute_474, (funcp)execute_478, (funcp)execute_480, (funcp)execute_486, (funcp)execute_492, (funcp)execute_498, (funcp)execute_504, (funcp)execute_510, (funcp)execute_516, (funcp)execute_542, (funcp)execute_247, (funcp)execute_248, (funcp)execute_249, (funcp)execute_546, (funcp)execute_547, (funcp)execute_548, (funcp)execute_549, (funcp)execute_550, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 77;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench_behav/xsim.reloc",  (void **)funcTab, 77);

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
