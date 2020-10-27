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
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_563(char*, char *);
extern void execute_564(char*, char *);
extern void execute_565(char*, char *);
extern void execute_566(char*, char *);
extern void execute_567(char*, char *);
extern void execute_568(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void execute_254(char*, char *);
extern void execute_560(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_562(char*, char *);
extern void execute_263(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_266(char*, char *);
extern void execute_272(char*, char *);
extern void execute_273(char*, char *);
extern void execute_277(char*, char *);
extern void execute_278(char*, char *);
extern void execute_283(char*, char *);
extern void execute_284(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_285(char*, char *);
extern void execute_287(char*, char *);
extern void execute_289(char*, char *);
extern void execute_295(char*, char *);
extern void execute_301(char*, char *);
extern void execute_307(char*, char *);
extern void execute_313(char*, char *);
extern void execute_319(char*, char *);
extern void execute_325(char*, char *);
extern void execute_335(char*, char *);
extern void execute_340(char*, char *);
extern void execute_341(char*, char *);
extern void execute_345(char*, char *);
extern void execute_346(char*, char *);
extern void execute_351(char*, char *);
extern void execute_355(char*, char *);
extern void execute_357(char*, char *);
extern void execute_363(char*, char *);
extern void execute_369(char*, char *);
extern void execute_375(char*, char *);
extern void execute_381(char*, char *);
extern void execute_387(char*, char *);
extern void execute_393(char*, char *);
extern void execute_408(char*, char *);
extern void execute_409(char*, char *);
extern void execute_413(char*, char *);
extern void execute_414(char*, char *);
extern void execute_419(char*, char *);
extern void execute_423(char*, char *);
extern void execute_425(char*, char *);
extern void execute_431(char*, char *);
extern void execute_437(char*, char *);
extern void execute_443(char*, char *);
extern void execute_449(char*, char *);
extern void execute_455(char*, char *);
extern void execute_461(char*, char *);
extern void execute_476(char*, char *);
extern void execute_477(char*, char *);
extern void execute_481(char*, char *);
extern void execute_482(char*, char *);
extern void execute_487(char*, char *);
extern void execute_491(char*, char *);
extern void execute_493(char*, char *);
extern void execute_499(char*, char *);
extern void execute_505(char*, char *);
extern void execute_511(char*, char *);
extern void execute_517(char*, char *);
extern void execute_523(char*, char *);
extern void execute_529(char*, char *);
extern void execute_559(char*, char *);
extern void execute_259(char*, char *);
extern void execute_260(char*, char *);
extern void execute_261(char*, char *);
extern void execute_569(char*, char *);
extern void execute_570(char*, char *);
extern void execute_571(char*, char *);
extern void execute_572(char*, char *);
extern void execute_573(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[85] = {(funcp)execute_255, (funcp)execute_256, (funcp)execute_257, (funcp)execute_563, (funcp)execute_564, (funcp)execute_565, (funcp)execute_566, (funcp)execute_567, (funcp)execute_568, (funcp)execute_252, (funcp)execute_253, (funcp)execute_254, (funcp)execute_560, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_562, (funcp)execute_263, (funcp)execute_264, (funcp)execute_265, (funcp)execute_266, (funcp)execute_272, (funcp)execute_273, (funcp)execute_277, (funcp)execute_278, (funcp)execute_283, (funcp)execute_284, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_285, (funcp)execute_287, (funcp)execute_289, (funcp)execute_295, (funcp)execute_301, (funcp)execute_307, (funcp)execute_313, (funcp)execute_319, (funcp)execute_325, (funcp)execute_335, (funcp)execute_340, (funcp)execute_341, (funcp)execute_345, (funcp)execute_346, (funcp)execute_351, (funcp)execute_355, (funcp)execute_357, (funcp)execute_363, (funcp)execute_369, (funcp)execute_375, (funcp)execute_381, (funcp)execute_387, (funcp)execute_393, (funcp)execute_408, (funcp)execute_409, (funcp)execute_413, (funcp)execute_414, (funcp)execute_419, (funcp)execute_423, (funcp)execute_425, (funcp)execute_431, (funcp)execute_437, (funcp)execute_443, (funcp)execute_449, (funcp)execute_455, (funcp)execute_461, (funcp)execute_476, (funcp)execute_477, (funcp)execute_481, (funcp)execute_482, (funcp)execute_487, (funcp)execute_491, (funcp)execute_493, (funcp)execute_499, (funcp)execute_505, (funcp)execute_511, (funcp)execute_517, (funcp)execute_523, (funcp)execute_529, (funcp)execute_559, (funcp)execute_259, (funcp)execute_260, (funcp)execute_261, (funcp)execute_569, (funcp)execute_570, (funcp)execute_571, (funcp)execute_572, (funcp)execute_573, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 85;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/room_man_test_behav/xsim.reloc",  (void **)funcTab, 85);

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
