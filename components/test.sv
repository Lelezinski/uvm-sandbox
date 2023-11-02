class our_test extends uvm_test;  // INHERITED from uvm_test standard class
  // Methods and Properties here to INCAPSULATE

  `uvm_component_utils(our_test)  // To register our class with factory library

  // Instantiate classes
  our_env env;

  // Constructor
  function new(string name = "our_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  // Build Phase
  function void build_phase(uvm_phase phase);  // phase is the uvm handle name 
    // Build other components
    // Build env class
    env = our_env::type_id::create("env", this); // factory static method to create objects

  endfunction

  function void connect_phase(uvm_phase phase);  // phase is the uvm handle name 
    // Necessary connections
  endfunction

  // RUN is a task since it has time consuming statements inside
  task run_phase(uvm_phase phase);
    // Main logic
  endtask

endclass
