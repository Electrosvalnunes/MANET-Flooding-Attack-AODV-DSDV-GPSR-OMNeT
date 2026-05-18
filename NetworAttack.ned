//package inet.showcases.routing.manet;

import inet.examples.inet.routerperf.BurstHost;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.networklayer.xmipv6.xMIPv6;
import inet.node.inet.ManetRouter;
import inet.node.wireless.AccessPoint;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.protocolelement.redundancy.StreamEncoder;
import inet.showcases.wireless.sensornetwork.ManetSensorNode;
import inet.visualizer.common.IntegratedMultiVisualizer;



network MANETs_Electrosvalnunes1
{
    parameters:
        @display("bgb=800,650;bgi=background/Electrosvalnunes");
        @statistic[numRcvdPk](source=count(source.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @figure[numRcvdPkCounter](type=counter; transform=scale(0.5); pos=50,300; label="Received ping replies"; decimalPlaces=4);
        @statistic[numLost](source=count(source.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @figure[numLostPkCounter](type=counter; transform=scale(0.5); pos=50,400; label="Pings lost"; decimalPlaces=4);

    submodules:
        source: ManetRouter {
            @display("p=135,597;i=misc/smartphone");
        }
        node1: ManetRouter {
            @display("p=95,424;i=misc/drone");
        }
        node2: ManetRouter {
            @display("p=511,163;i=misc/drone");
        }
        node3: ManetRouter {
            @display("p=325,262;i=misc/drone");
        }
        node4: ManetRouter {
            @display("p=578,388;i=misc/drone");
        }
        node5: ManetRouter {
            @display("p=511,308;i=misc/drone,#EF2929,100");
        }
        node6: ManetRouter {
            @display("p=405,38;i=misc/drone,#EF2929,100");
        }
        node7: ManetRouter {
            @display("p=175,318;i=misc/drone,#EF2929,100");
        }
        node8: ManetRouter {
            @display("p=430,567;i=misc/drone,#EF2929,100");
        }
        destination: ManetRouter {
            @display("p=602,48;i=misc/smartphone");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=38,61");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=41,134");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=38,197");
        }
}
