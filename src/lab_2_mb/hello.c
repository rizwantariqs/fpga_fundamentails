
#include <stdio.h>
#include <xparameters.h>
#include <xil_io.h>

int main()
{

    int a,b,c = 0 ;
    int value = 0 ;

    a = 12 ;
    b = 23 ;
    c = a+b ;


    value = Xil_In32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR) ;

    Xil_Out32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR, 0xdeadbeef);

    value = Xil_In32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR) ;

   return 0;
}
