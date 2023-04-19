simple Txc1

{
    gates:
        input in;
        output out;

}





network proyecto_Final
{
    @display("bgb=516,359");
    submodules:
        tower1: Txc1 {
            @display("p=32,105");
        }
        tower2: Txc1 {
            @display("p=238,28");
        }

        tower3: Txc1 {
            @display("p=452,94");
        }
        tower4: Txc1 {
            @display("p=335,287");
        }
        tower5: Txc1 {
            @display("p=150,287");
        }
    connections:
        tower1.out --> {  delay = 100ms; } --> tower2.in;
        tower2.out --> {  delay = 100ms; } --> tower3.in;
        tower3.out --> {  delay = 100ms; } --> tower4.in;
        tower5.out --> {  delay = 100ms; } --> tower1.in;
        tower4.out --> {  delay = 100ms; } --> tower5.in;

}









