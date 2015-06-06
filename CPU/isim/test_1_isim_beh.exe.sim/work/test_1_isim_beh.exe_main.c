/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003548646435_1733832700_init();
    work_m_00000000002163759346_2468648760_init();
    work_m_00000000002519648259_1806979977_init();
    work_m_00000000000558007842_3037777339_init();
    work_m_00000000001166429647_1196816900_init();
    work_m_00000000001166429647_2278736328_init();
    work_m_00000000000044378363_1621107508_init();
    work_m_00000000004074361834_4241813833_init();
    work_m_00000000001814242460_4040552798_init();
    work_m_00000000003853032904_2725559894_init();
    work_m_00000000003992057218_3146453351_init();
    work_m_00000000001782740090_3877310806_init();
    work_m_00000000002047498008_1371003560_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_1371003560");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
