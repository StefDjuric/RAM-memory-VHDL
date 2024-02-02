LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ramMemorija is 
	GENERIC(
				velicinaRijeci :INTEGER:= 4;
				brojRijeci     :INTEGER:= 8);

	port(
			takt					:IN    STD_LOGIC;
			dozvolaUpisa		:IN    STD_LOGIC;
			adresa				:IN    INTEGER RANGE 0 to brojRijeci - 1;
			podaci				:INOUT STD_LOGIC_VECTOR (velicinaRijeci - 1 downto 0)
		  );
		  
END ENTITY ramMemorija;


ARCHITECTURE arhMemorije of ramMemorija is

TYPE nizVektora is ARRAY(0 TO brojRijeci - 1) OF
	STD_LOGIC_VECTOR(velicinaRijeci - 1 DOWNTO 0);
	
SIGNAL memorija: nizVektora;

BEGIN
	PROCESS(takt, dozvolaUpisa)
	BEGIN
		IF(dozvolaUpisa = '0') THEN
			podaci <= memorija(adresa);
			
		ELSE
			podaci <= (OTHERS => 'Z');
			IF(takt'EVENT AND takt = '1') THEN
				memorija(adresa) <= podaci;
			END IF;
		END IF;
	END PROCESS;

END ARCHITECTURE arhMemorije;