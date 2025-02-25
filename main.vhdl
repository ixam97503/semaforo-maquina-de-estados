library ieee;
use ieee.std_logic_1164.all;

entity Semaforo is
	port(
		Sensor, clk: in std_logic;
		semcamin, semcarr: out std_logic_vector(2 downto 0));
end Semaforo;

architecture Funcion of Semaforo is
	type ESTADO is (S0, S1, S2, S3, S4);
	signal PRESENTE: ESTADO:=S0;
	begin
		ESTADOS:
			process(clk)
			variable cont: integer;
			begin
				if clk'event and clk='1' then
					case PRESENTE is
						when S0 =>
							if (Sensor='1') then
								PRESENTE<= S1;
							end if;
						when S1 =>
							PRESENTE<=S2;
							cont:=0;
						when S2 =>
							if (cont=4) then
								PRESENTE<=S3;
								cont:=0;
							else
								cont:=cont+1;
							end if;
						when S3 =>
							PRESENTE<=S4;
							cont:=0;
						when S4 =>
							if (cont=7) then
								PRESENTE<=S0;
							else
								cont:=cont+1;
							end if;
					end case;
				end if;
			end process ESTADOS;
		SALIDAS:
			process(PRESENTE)
			begin
				case PRESENTE is
					when S0 =>
						semcamin<="100";
						semcarr<="001";
					when S1 =>
						semcamin<="110";
						semcarr<="010";
					when S2 =>
						semcamin<="001";
						semcarr<="100";
					when S3 =>
						semcamin<="010";
						semcarr<="110";
					when S4 =>
						semcamin<="100";
						semcarr<="001";
				end case;
			end process SALIDAS;
end Funcion;
