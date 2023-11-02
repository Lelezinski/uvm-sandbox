`include "uvm_macros.svh"
import uvm_pkg::*;

module top ();

  our_design uut ();  // Design istance

  initial begin
    run_test("our_test");  // Runs the test our_test

    // Istantiate handle for interface
        our_interface intf();

        our_design uut();

        initial begin
          // set method
          uvm_confif_db #(virtual our_interface)::set(null, "*", "intf", intf); // * means available for all the components
        end

        initial begin
          run_test("our_test");
        end

  end

endmodule
