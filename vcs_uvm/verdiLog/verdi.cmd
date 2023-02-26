simSetSimulator "-vcssv" -exec \
           "/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab/ZeBu_BasicLabs/vcs_uvm/simv" \
           -args "-ucli +UVM_TESTNAME=dut_test1"
debImport "-dbdir" \
          "/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab/ZeBu_BasicLabs/vcs_uvm/simv.daidir"
debLoadSimResult \
           /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab/ZeBu_BasicLabs/vcs_uvm/myfsdb.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcSelect -word -line 7 -pos 4 -win $_nTrace1
debExit
