typedef class alu_cfg;
class alu_gen;
  mailbox #(alu_tx) gen2drv;
  alu_tx tx;
  function new();
      this.gen2drv=alu_cfg::gen2drv;
     endfunction 

     task run();
      begin
     for (int i=0;i<=15;i++)
         begin 	     
	 tx=new();
	assert (tx.randomize());
        gen2drv.put(tx);
        $display ("alu_gen::run");
	 tx.print();
	 $display ("//////////////////////");
        $display ("Paket Number -----%0d",i);
         end 	
     end 
     endtask 
endclass 
