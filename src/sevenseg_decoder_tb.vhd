-- Company
-- Engineer: 
-- 
-- Create Date: 02/24/2026 01:38:37 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
    signal hex   : std_logic_vector(3 downto 0) := (others => '0');
    signal seg_n : std_logic_vector(6 downto 0);
begin
    uut:entity work.sevenseg_decoder
        port map (
            i_Hex => hex, 
            o_seg_n => seg_n
           );
    stim: process
    begin
        for i in 0 to 15 loop
            hex <= std_logic_vector(to_unsigned(i,4));
            wait for 10 ns;
            
        end loop;
        wait;
   end process;

end Behavioral;
