#include <string.h>
#include <omnetpp.h>


using namespace omnetpp;



class Txc1 : public cSimpleModule
{
    protected:
        void initialize() override;  //le quitare el virtual a estas dos filas
        void handleMessage(cMessage *msg) override;

};


Define_Module(Txc1);

void Txc1::initialize()
{
    if ( strcmp("tower1", getName()) == 0){
        cMessage *msg = new cMessage("proyecto_Final");
        send(msg,"out");
    }



}


void Txc1::handleMessage(cMessage *msg)
{
    send(msg, "out");


}
