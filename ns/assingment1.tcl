#Create a simulator object
set ns [new Simulator]

#Define different colors for data flows (for NAM)
$ns color 1 Blue
$ns color 2 Red

#Open the NAM trace file
set nf [open out.nam w]
$ns namtrace-all $nf

#Define a 'finish' procedure
proc finish {} {
        global ns nf
        $ns flush-trace
        #Close the NAM trace file
        close $nf

        #Execute NAM on the trace file
        exec nam out.nam &
        exit 0
}

#Create four nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]

#Create links between the nodes
$ns simplex-link $n4 $n0 10Mb 10ms DropTail
$ns simplex-link $n0 $n2 10Mb 10ms DropTail
$ns simplex-link $n1 $n0 10Mb 10ms DropTail
$ns simplex-link $n0 $n3 10Mb 20ms DropTail

#Setup a TCP connection $n4->$n0
set tcp1 [new Agent/TCP]
$ns attach-agent $n4 $tcp1
set sink1 [new Agent/TCPSink]
$ns attach-agent $n0 $sink1
$ns connect $tcp1 $sink1
$tcp1 set fid_ 1

#Setup a TCP connection $n0->$n2
set tcp2 [new Agent/TCP]
$ns attach-agent $n0 $tcp2
set sink2 [new Agent/TCPSink]
$ns attach-agent $n4 $sink2
$ns connect $tcp2 $sink2
$tcp2 set fid_ 2

#Setup a UDP connection $n1->$n0
set udp1 [new Agent/UDP]
$ns attach-agent $n1 $udp1
set null1 [new Agent/Null]
$ns attach-agent $n0 $null1
$ns connect $udp1 $null1
$udp1 set fid_ 3

#Setup a UDP connection $n0->$n2
set udp2 [new Agent/UDP]
$ns attach-agent $n0 $udp2
set null2 [new Agent/Null]
$ns attach-agent $n2 $null2
$ns connect $udp2 $null2
$udp2 set fid_ 4

#Setup a CBR over UDP connection
set cbr3 [new Application/Traffic/CBR]
$cbr3 attach-agent $udp1
$cbr3 set type_ CBR
$cbr3 set packet_size_ 1000
$cbr3 set rate_ 1mb
$cbr3 set random_ false

#Setup a CBR over UDP connection
set cbr4 [new Application/Traffic/CBR]
$cbr4 attach-agent $udp2
$cbr4 set type_ CBR
$cbr4 set packet_size_ 1000
$cbr4 set rate_ 1mb
$cbr4 set random_ false


$ns at 0.1 "$cbr3 start"
$ns at 1.0 "$cbr4 start"


$ns at 4.0 "$cbr3 stop"
$ns at 5.0 "$cbr4 stop"

#Call the finish procedure after 5 seconds of simulation time
$ns at 6.0 "finish"

#Run the simulation
$ns run