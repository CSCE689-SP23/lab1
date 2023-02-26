`ifndef dut_we_agent_sv
`define dut_we_agent_sv
class dut_we_agent extends uvm_agent;
   `uvm_component_utils(dut_we_agent)

   function new(string name="dut_we_agent", uvm_component parent);
      super.new(name,parent);
   endfunction

   virtual dut_if vif;
   // Instantiate and create the driver, the sequencer and the monitor.

   function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      if(!(uvm_config_db#(virtual dut_if)::get(this,"","vif",vif))) begin
         `uvm_fatal("dut_we_agent","vif is not set with config_db")
      end
      else begin
         if(vif==null) `uvm_error("dut_we_agent","vif is NULL")
      end
      // Create the driver and set the interface
      // Create the monitor and set the interface
      // Create the sequencer
   endfunction

   function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      we_driver.seq_item_port.connect(we_seqr.seq_item_export);
   endfunction
endclass
`endif
