# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2023.12
# platform  : Linux 4.18.0-553.32.1.el8_10.x86_64
# version   : 2023.12p001 64 bits
# build date: 2024.01.23 16:09:24 UTC
# ----------------------------------------
# started   : 2025-06-01 15:29:59 PDT
# hostname  : caddy15.stanford.edu.(none)
# pid       : 1017159
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33189' '-style' 'windows' '-data' 'AAAA8HicVY69CgIxEIS/KPaW1paCegiCxRU2doqoYBv0vEI4PPEHwUYf1TeJsx4nZJbMbJKdZByQvkII/NB8itrMWbBmJl6ylUKHMSMmJEzJ2HGg4KguqXzuUympI4btG/HJ6h0ptGpzPWKGHn39U6hKHnjunLiKz6qSCzdypfBKuNF0V2ns3tbw33vxnoFmM71j+ALvlxzl' '-proj' '/home/users/ccarrete/cva6-formal/cva6/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/users/ccarrete/cva6-formal/cva6/jgproject/.tmp/.initCmds.tcl' 'insns/insn_sb.tcl'
analyze +define+RISCV_FORMAL_INSN_MODEL=insn_sb -f Flist.formal -sv insns/insn_sb.v
elaborate -bbox_m {wt_cache_subsystem wt_axi_adapter wt_dcache_mem sram}
clock clk_i
reset !rst_ni
set_engine_mode {Ht}
set_engineH_first_trace_attempt 5
prove -all -cover 
load_radix_file radix.txt
set_engine_mode {I N}
prove -all -assert
