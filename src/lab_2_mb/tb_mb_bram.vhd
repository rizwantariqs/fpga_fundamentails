library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity bram_sim_wrapper_tb is
end;

architecture bench of bram_sim_wrapper_tb is

  component bram_sim_wrapper
    port (
      clk : in STD_LOGIC;
      ext_reset_in_0 : in STD_LOGIC
    );
  end component;
 signal clk: STD_LOGIC;
  signal ext_reset_in_0: STD_LOGIC ;


  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: bram_sim_wrapper port map ( clk            => clk,
                                   ext_reset_in_0 => ext_reset_in_0 );

  stimulus: process
  begin
  
    -- Put initialisation code here

	ext_reset_in_0 <= '0' ;
	
	wait for 1005 ns;
	
	ext_reset_in_0 <= '1' ;

    wait;
  end process;


  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
  