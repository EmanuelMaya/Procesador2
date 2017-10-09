
-- VHDL Instantiation Created from source file ALU.vhd -- 14:53:40 10/08/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		crs1 : IN std_logic_vector(31 downto 0);
		crs2 : IN std_logic_vector(31 downto 0);
		uc_op : IN std_logic_vector(5 downto 0);          
		salida_ALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		crs1 => ,
		crs2 => ,
		uc_op => ,
		salida_ALU => 
	);


