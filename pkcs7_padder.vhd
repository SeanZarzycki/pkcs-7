library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PKCS7_PADDER is
	port (
		plaintext : in std_logic_vector(127 downto 0);
		plaintext_length : in natural;
		padded_message : out std_logic_vector(127 downto 0)
	);

end PKCS7_PADDER;

architecture beh of PKCS7_PADDER is

begin

 	process(plaintext, plaintext_length)
 	
 	begin
 		padded_message <= plaintext(127 downto (plaintext_length * 8)) & 
 						  (others => ((7 downto 0) => std_logic_vector(plaintext_length)));
 	end process;

end beh;

