class our_driver extends uvm_driver;

  `uvm_component_utils(our_driver)

  our_interface intf;

  function new(string name = "our_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // Build Phase
  function void build_phase(uvm_phase phase);  // phase is the uvm handle name 
    // Build other components
    uvm_confif_db #(virtual our_interface)::get(null, "*", "intf", intf);
  endfunction

  function void connect_phase(uvm_phase phase);  // phase is the uvm handle name 
    // Necessary connections
  endfunction

  // RUN is a task since it has time consuming statements inside
  task run_phase(uvm_phase phase);
    // Main logic
  endtask

endclass : our_driver
