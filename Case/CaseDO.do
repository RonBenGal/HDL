vlog  "Case.v"  
vlog  "CaseTB.v"  
vsim -gui work.top_module_case_tb

run 100ns

quit -sim