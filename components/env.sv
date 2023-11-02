class our_env extends uvm_env;  // NOT uvm_environment

  `uvm_component_utils(our_env)

  // Instantiate classes
  our_agent agent;

  function new(string name = "our_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // Build Phase
  function void build_phase(uvm_phase phase);  // phase is the uvm handle name 
    // Build other components
    // Build agent class
    agent = our_agent::type_id::create("agent", this);
  endfunction

  function void connect_phase(uvm_phase phase);  // phase is the uvm handle name 
    // Necessary connections
  endfunction

  // RUN is a task since it has time consuming statements inside
  task run_phase(uvm_phase phase);
    // Main logic
  endtask

endclass : our_env
