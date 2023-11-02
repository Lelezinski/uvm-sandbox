class our_sequence extends uvm_sequence;

  `uvm_object_utils(our_sequence)

  // Constructor
  function new(string name = "our_sequence");
    super.new(name);

    // Body task
    task body();

        
    endtask

  endfunction

endclass
