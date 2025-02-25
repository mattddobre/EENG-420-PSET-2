//=========================================================================
// parcv2-byp.S
//=========================================================================

#include "parc-macros.h"

        TEST_PARC_BEGIN

        //-----------------------------------------------------------------
        // Regular/li tests
        //-----------------------------------------------------------------

        // Op0

        TEST_LUI_DEST_BYP_OP0( 0, addiu, 69, 69 )
        TEST_LUI_DEST_BYP_OP0( 1, addiu, 69, 69 )
        TEST_LUI_DEST_BYP_OP0( 2, addiu, 69, 69 )
        TEST_LUI_DEST_BYP_OP0( 3, addiu, 69, 69 )
        TEST_LUI_DEST_BYP_OP0( 4, addiu, 69, 69 )

        // Op1

        TEST_LUI_DEST_BYP( 0, addiu, 69, 69 )
        TEST_LUI_DEST_BYP( 1, addiu, 69, 69 )
        TEST_LUI_DEST_BYP( 2, addiu, 69, 69 )
        TEST_LUI_DEST_BYP( 3, addiu, 69, 69 )
        TEST_LUI_DEST_BYP( 4, addiu, 69, 69 )


        //-----------------------------------------------------------------
        // load/store tests
        //-----------------------------------------------------------------

        // load

        // Op0

        TEST_LD_DEST_BYP( 1, lw, 0, tdata0, 0xB16B00B5 )
        TEST_LD_DEST_BYP( 0, lw, 0, tdata0, 0xB16B00B5 )
        TEST_LD_DEST_BYP( 2, lw, 0, tdata0, 0xB16B00B5 )
        TEST_LD_DEST_BYP( 3, lw, 0, tdata0, 0xB16B00B5 )
        TEST_LD_DEST_BYP( 4, lw, 0, tdata0, 0xB16B00B5 )

        // Op1

        TEST_LD_SRC0_BYP( 0, lw, 0, tdata0, 0xB16B00B5 )
        TEST_LD_SRC0_BYP( 1, lw, 0, tdata0, 0xB16B00B5 )
        TEST_LD_SRC0_BYP( 2, lw, 0, tdata0, 0xB16B00B5 )
        TEST_LD_SRC0_BYP( 3, lw, 0, tdata0, 0xB16B00B5 )
        TEST_LD_SRC0_BYP( 4, lw, 0, tdata0, 0xB16B00B5 )
        
        // store

        // Op0

        TEST_SW_SRC01_BYP( 0, 0, sw, 0xb00bb00b,  0,  tdata1, 0xb00bb00b )
        TEST_SW_SRC01_BYP( 0, 1, sw, 0xb00bb00b,  0,  tdata1, 0xb00bb00b )
        TEST_SW_SRC01_BYP( 0, 2, sw, 0xb00bb00b,  0,  tdata1, 0xb00bb00b )
        TEST_SW_SRC01_BYP( 0, 3, sw, 0xb00bb00b,  0,  tdata1, 0xb00bb00b )
        TEST_SW_SRC01_BYP( 0, 4, sw, 0xb00bb00b,  0,  tdata1, 0xb00bb00b )

        // Op1

        TEST_SW_SRC10_BYP( 0, 0, sw, 0xb00b1355,  0,  tdata2, 0xb00b1355 )
        TEST_SW_SRC10_BYP( 0, 1, sw, 0xb00b1355,  0,  tdata2, 0xb00b1355 )
        TEST_SW_SRC10_BYP( 0, 2, sw, 0xb00b1355,  0,  tdata2, 0xb00b1355 )
        TEST_SW_SRC10_BYP( 0, 3, sw, 0xb00b1355,  0,  tdata2, 0xb00b1355 )
        TEST_SW_SRC10_BYP( 0, 4, sw, 0xb00b1355,  0,  tdata2, 0xb00b1355 )

        //-----------------------------------------------------------------
        // mult tests
        //-----------------------------------------------------------------

        // Op0

        TEST_RR_SRC01_BYP( 0, 0, mul, 69, 69, 4761 )
        TEST_RR_SRC01_BYP( 0, 1, mul, 69, 69, 4761 )
        TEST_RR_SRC01_BYP( 0, 2, mul, 69, 69, 4761 )
        TEST_RR_SRC01_BYP( 0, 3, mul, 69, 69, 4761 )
        TEST_RR_SRC01_BYP( 0, 4, mul, 69, 69, 4761 )

        // Op1

        TEST_RR_DEST_BYP( 0, mul, 69, 69, 4761 )
        TEST_RR_DEST_BYP( 1, mul, 69, 69, 4761 )
        TEST_RR_DEST_BYP( 2, mul, 69, 69, 4761 )
        TEST_RR_DEST_BYP( 3, mul, 69, 69, 4761 )
        TEST_RR_DEST_BYP( 4, mul, 69, 69, 4761 )

        TEST_PARC_END

        //-----------------------------------------------------------------
        // Test data
        //-----------------------------------------------------------------

        .data
        .align 3

tdata0:  .word 0xB16B00B5
tdata1:  .word 0xb00bb00b
tdata2:  .word 0xb00b1355