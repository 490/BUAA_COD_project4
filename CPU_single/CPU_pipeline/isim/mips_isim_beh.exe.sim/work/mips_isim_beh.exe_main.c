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
    work_m_00000000003548646435_1140681327_init();
    work_m_00000000001437255343_1874487336_init();
    work_m_00000000002163759346_3998442365_init();
    work_m_00000000001748853696_2885957937_init();
    work_m_00000000001166429647_4288314085_init();
    work_m_00000000001166429647_3664689500_init();
    work_m_00000000002581303576_3739879962_init();
    work_m_00000000004074361834_4241813833_init();
    work_m_00000000001814242460_3876491500_init();
    work_m_00000000003853032904_2725559894_init();
    work_m_00000000001792313267_1806979977_init();
    work_m_00000000002300945454_3877310806_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002300945454_3877310806");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}