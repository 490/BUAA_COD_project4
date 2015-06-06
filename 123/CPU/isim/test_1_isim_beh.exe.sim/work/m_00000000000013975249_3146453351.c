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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/dell/Desktop/123/CPU/npc.v";
static int ng1[] = {4, 0};
static unsigned int ng2[] = {0U, 0U};



static void Always_35_0(char *t0)
{
    char t6[8];
    char t13[8];
    char t25[8];
    char t64[8];
    char t65[8];
    char t67[8];
    char t78[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t66;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t79;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 4288);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t5, 32, t4, 32);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t2) != 0)
        goto LAB15;

LAB16:    t5 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t5);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB17;

LAB18:    memcpy(t25, t6, 8);

LAB19:    t56 = (t25 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t25);
    t60 = (t59 & t58);
    t61 = (t60 != 0);
    if (t61 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t2) != 0)
        goto LAB35;

LAB36:    t5 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t5);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB37;

LAB38:    memcpy(t25, t6, 8);

LAB39:    t56 = (t25 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t25);
    t60 = (t59 & t58);
    t61 = (t60 != 0);
    if (t61 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t3, 32, t2, 32);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t6, 0, 0, 32, 0LL);

LAB49:
LAB32:
LAB29:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(39, ng0);

LAB9:    xsi_set_current_line(40, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 2008U);
    t7 = *((char **)t5);
    t5 = (t0 + 1848U);
    t14 = *((char **)t5);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t15 = (t14 + 4);
    t16 = *((unsigned int *)t14);
    t17 = (t16 >> 28);
    *((unsigned int *)t13) = t17;
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 28);
    *((unsigned int *)t5) = t19;
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 & 15U);
    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 15U);
    xsi_vlogtype_concat(t6, 32, 32, 3U, t13, 4, t7, 26, t4, 2);
    t22 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t22, t6, 0, 0, 32, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 2168U);
    t5 = *((char **)t4);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB12;

LAB13:    *((unsigned int *)t6) = 1;
    goto LAB16;

LAB15:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB16;

LAB17:    t7 = (t0 + 1048U);
    t14 = *((char **)t7);
    memset(t13, 0, 8);
    t7 = (t14 + 4);
    t19 = *((unsigned int *)t7);
    t20 = (~(t19));
    t21 = *((unsigned int *)t14);
    t23 = (t21 & t20);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t7) != 0)
        goto LAB22;

LAB23:    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t13);
    t28 = (t26 & t27);
    *((unsigned int *)t25) = t28;
    t22 = (t6 + 4);
    t29 = (t13 + 4);
    t30 = (t25 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t29);
    t33 = (t31 | t32);
    *((unsigned int *)t30) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB24;

LAB25:
LAB26:    goto LAB19;

LAB20:    *((unsigned int *)t13) = 1;
    goto LAB23;

LAB22:    t15 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB23;

LAB24:    t36 = *((unsigned int *)t25);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t25) = (t36 | t37);
    t38 = (t6 + 4);
    t39 = (t13 + 4);
    t40 = *((unsigned int *)t6);
    t41 = (~(t40));
    t42 = *((unsigned int *)t38);
    t43 = (~(t42));
    t44 = *((unsigned int *)t13);
    t45 = (~(t44));
    t46 = *((unsigned int *)t39);
    t47 = (~(t46));
    t48 = (t41 & t43);
    t49 = (t45 & t47);
    t50 = (~(t48));
    t51 = (~(t49));
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t50);
    t53 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t53 & t51);
    t54 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t54 & t50);
    t55 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t55 & t51);
    goto LAB26;

LAB27:    xsi_set_current_line(45, ng0);
    t62 = (t0 + 1848U);
    t63 = *((char **)t62);
    t62 = ((char*)((ng1)));
    memset(t64, 0, 8);
    xsi_vlog_unsigned_add(t64, 32, t63, 32, t62, 32);
    t66 = ((char*)((ng2)));
    t68 = (t0 + 2008U);
    t69 = *((char **)t68);
    memset(t67, 0, 8);
    t68 = (t67 + 4);
    t70 = (t69 + 4);
    t71 = *((unsigned int *)t69);
    t72 = (t71 >> 0);
    *((unsigned int *)t67) = t72;
    t73 = *((unsigned int *)t70);
    t74 = (t73 >> 0);
    *((unsigned int *)t68) = t74;
    t75 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t75 & 65535U);
    t76 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t76 & 65535U);
    t77 = ((char*)((ng2)));
    xsi_vlogtype_concat(t65, 32, 32, 3U, t77, 14, t67, 16, t66, 2);
    memset(t78, 0, 8);
    xsi_vlog_unsigned_add(t78, 32, t64, 32, t65, 32);
    t79 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t79, t78, 0, 0, 32, 0LL);
    goto LAB29;

LAB30:    xsi_set_current_line(47, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 2008U);
    t7 = *((char **)t5);
    t5 = (t0 + 1848U);
    t14 = *((char **)t5);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t15 = (t14 + 4);
    t16 = *((unsigned int *)t14);
    t17 = (t16 >> 28);
    *((unsigned int *)t13) = t17;
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 28);
    *((unsigned int *)t5) = t19;
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 & 15U);
    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 15U);
    xsi_vlogtype_concat(t6, 32, 32, 3U, t13, 4, t7, 26, t4, 2);
    t22 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t22, t6, 0, 0, 32, 0LL);
    goto LAB32;

LAB33:    *((unsigned int *)t6) = 1;
    goto LAB36;

LAB35:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB36;

LAB37:    t7 = (t0 + 2488U);
    t14 = *((char **)t7);
    memset(t13, 0, 8);
    t7 = (t14 + 4);
    t19 = *((unsigned int *)t7);
    t20 = (~(t19));
    t21 = *((unsigned int *)t14);
    t23 = (t21 & t20);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t7) != 0)
        goto LAB42;

LAB43:    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t13);
    t28 = (t26 & t27);
    *((unsigned int *)t25) = t28;
    t22 = (t6 + 4);
    t29 = (t13 + 4);
    t30 = (t25 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t29);
    t33 = (t31 | t32);
    *((unsigned int *)t30) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB44;

LAB45:
LAB46:    goto LAB39;

LAB40:    *((unsigned int *)t13) = 1;
    goto LAB43;

LAB42:    t15 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB43;

LAB44:    t36 = *((unsigned int *)t25);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t25) = (t36 | t37);
    t38 = (t6 + 4);
    t39 = (t13 + 4);
    t40 = *((unsigned int *)t6);
    t41 = (~(t40));
    t42 = *((unsigned int *)t38);
    t43 = (~(t42));
    t44 = *((unsigned int *)t13);
    t45 = (~(t44));
    t46 = *((unsigned int *)t39);
    t47 = (~(t46));
    t48 = (t41 & t43);
    t49 = (t45 & t47);
    t50 = (~(t48));
    t51 = (~(t49));
    t52 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t52 & t50);
    t53 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t53 & t51);
    t54 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t54 & t50);
    t55 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t55 & t51);
    goto LAB46;

LAB47:    xsi_set_current_line(49, ng0);
    t62 = (t0 + 1848U);
    t63 = *((char **)t62);
    t62 = ((char*)((ng1)));
    memset(t64, 0, 8);
    xsi_vlog_unsigned_add(t64, 32, t63, 32, t62, 32);
    t66 = ((char*)((ng2)));
    t68 = (t0 + 2008U);
    t69 = *((char **)t68);
    memset(t67, 0, 8);
    t68 = (t67 + 4);
    t70 = (t69 + 4);
    t71 = *((unsigned int *)t69);
    t72 = (t71 >> 0);
    *((unsigned int *)t67) = t72;
    t73 = *((unsigned int *)t70);
    t74 = (t73 >> 0);
    *((unsigned int *)t68) = t74;
    t75 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t75 & 65535U);
    t76 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t76 & 65535U);
    t77 = ((char*)((ng2)));
    xsi_vlogtype_concat(t65, 32, 32, 3U, t77, 14, t67, 16, t66, 2);
    memset(t78, 0, 8);
    xsi_vlog_unsigned_add(t78, 32, t64, 32, t65, 32);
    t79 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t79, t78, 0, 0, 32, 0LL);
    goto LAB49;

}


extern void work_m_00000000000013975249_3146453351_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_00000000000013975249_3146453351", "isim/test_1_isim_beh.exe.sim/work/m_00000000000013975249_3146453351.didat");
	xsi_register_executes(pe);
}
