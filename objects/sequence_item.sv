class our_packet extends uvm_sequence_item;

  `uvm_object_utils(our_packet)

  // Constructor
  function new(string name = "our_pocket");
    super.new(name);

    // Variables, rand to use random inputs
    rand bit [7:0] input_1;
    rand bit [7:0] input_2;

    bit [15:0] output_1;

  endfunction

endclass
