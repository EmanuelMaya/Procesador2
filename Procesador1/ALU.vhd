----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:51:14 10/01/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           uc_op : in  STD_LOGIC_VECTOR (5 downto 0);
           salida_ALU : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
process(crs1, crs2, uc_op)
begin
 case (uc_op) is 
			when "000000" => -- add
				salida_ALU <= crs1 + crs2;
         when "000100" => -- sub
				salida_ALU <= crs1 - crs2;				
         when "000001" => -- and
				salida_ALU <= crs1 and crs2;
			when "000101" => -- nand
				salida_ALU <= crs1 nand crs2;
         when "000010" => --or
				salida_ALU <= crs1 or crs2;
	      when "000110" => --nor
				salida_ALU <= crs1 nor crs2;	     
			when "000011" => -- xor
				salida_ALU <= crs1 xor crs2;
			when "000111" => -- xnor
				salida_ALU <= crs1 xnor crs2;				
				
			when others => --otras instrucciones
				salida_ALU <= (others=>'0');
		end case;
	end process; 

end Behavioral;

