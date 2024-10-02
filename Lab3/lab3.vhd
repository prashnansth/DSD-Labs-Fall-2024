library ieee;
use ieee.std_logic_1164.all;
 
entity test is
  port (
    d3    : in  std_logic;
    d2    : in  std_logic;
	 d1    : in  std_logic;
    d0    : in  std_logic;
	 
    g: out std_logic;
	 f: out std_logic;
	 e: out std_logic;
	 d: out std_logic;
	 c: out std_logic;
	 b: out std_logic;
	 a: out std_logic
	 
    );
end test;
 
architecture rtl of test is
  signal a_signal : std_logic;
  signal b_signal : std_logic;
  signal c_signal : std_logic;
  signal d_signal : std_logic;
  signal e_signal : std_logic;
  signal f_signal : std_logic;
  signal g_signal : std_logic;
  
begin
  g_signal <= (not(d3) and not(d2) and not(d1)) or (not(d3) and d2 and d1 and d0);
  f_signal <= (not(d3) and not(d2) and d0) or (not(d3) and not(d2) and d1) or (not(d3) and d1 and d0) or (d3 and d2 and not(d1));
  e_signal <= (not d3 and d0) or (not d2 and not d1 and d0) or (not d3 and d2 and not d1);
  d_signal <= (not d2 and not d1 and d0) or (d2 and d1 and d0) or (not d3 and d2 and not d1 and not d0) or (d3 and not d2 and d1 and not d0);
  c_signal <= (d3 and d2 and not d0) or (d3 and d2 and d1) or (not d3 and not d2 and d1 and not d0);
  b_signal <= (d2 and d1 and not d0) or (d3 and d1 and d0) or (d3 and d2 and not d0) or (not d3 and d2 and not d1 and d0);
  a_signal <= (d2 and not d1 and not d0) or (d3 and d2 and not d1) or (not d3 and not d2 and not d1 and d0) or (d3 and not d2 and d1 and d0);
   
  
  g <= g_signal;
  f <= f_signal;
  e <= e_signal;
  d <= d_signal;
  c <= c_signal;
  b <= b_signal;
  a <= a_signal;
  
end rtl;