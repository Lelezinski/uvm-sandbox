class our_agent extends uvm_agent;

  `uvm_component_utils(our_env)

  // Instantiate classes
  our_sequencer seqr;
  our_driver drv;
  our_monitor mon;

  function new(string name = "our_agent", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // Build Phase
  function void build_phase(uvm_phase phase);  // phase is the uvm handle name 
    // Build other components
    // Build sequencer, monitor and driver
    seqr = our_sequencer::type_id::create("seqr", this);
    drv = our_driver::type_id::create("drv", this);
    mon = our_monitor::type_id::create("mon", this);

  endfunction

  function void connect_phase(uvm_phase phase);  // phase is the uvm handle name 
    // Necessary connections
  endfunction

  // RUN is a task since it has time consuming statements inside
  task run_phase(uvm_phase phase);
    // Main logic
  endtask

endclass : our_agent
