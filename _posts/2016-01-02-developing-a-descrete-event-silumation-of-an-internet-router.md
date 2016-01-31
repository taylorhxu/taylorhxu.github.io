---
layout: post
title: Discrete Event Simulation of an Internet Router 
date: 2016-01-02 23:43:25
categories: programming
summary: Developing a discrete-event simulation of an Internet router with a single input queue and a single output interface. 
tags: python programming  

---

Simulation is a method of analysing real-world events or newly designed algorithms and solutions. The
discrete event simulation model consists of identifying individual events in the simulated model and
assigning these events a unique time in the time schedule. Discrete event simulation can be used to
simulate a number of real systems, including computers networks, biomedical processes, supply
chains, and a variety of scheduling problems.
For this assignment, you are expected to produce a python code which performs a full discrete event
simulation of a very simple Internet router. 

The router is characterised by:

- Random arrival of packets
- Random distribution of packet sizes
- Multiple router output interfaces (‘servers’)
- Serving schedule – the simulation will have to support both first-in-first-out (FIFO) serving,
and also priority serving

The case study used for this assignment is operation of a very simple Internet router. Internet packets
of variable sizes arrive at the router to be processed and forwarded further in the networks. The simulation will enable performance evaluation of the router, by identifying the average waiting time,
the probability of immediate response, the average packet size, and other performance parameters.

Assumption is made that the router has fixed output data rate – the duration of the packet processing
can be considered identical to the packet size.
To develop the simulator, you are asked to complete the 
following:

Developing a discrete-event simulation of an Internet router with a single input queue and a single output interface. 

The packets arrive following a random Poisson process, with a pre-defined average time between two arriving packets. The Poisson process is
characterized with an exponential distribution of inter-arrival times. 

The packets have random sizes –
the packet size should be calculated by the simulator at the packet arrival. The packet size should be
considered a random variable with exponential distribution. In the case the packet has arrived and
cannot be immediately served, it has to wait for the first available opportunity to be served. The
output interface – the server – should operate without any pauses, and should operate at a constant
serving rate – this means that packet size determines the service time duration.

The code should request the average system parameters – average packet size and average interarrival
time for the packets, and should calculate the following parameters:

- average waiting time
- average queue size
- probability that the queue size is 0 at arrival of a new call
- probability that the queue size is greater than 5 times the average packet size. 

```python
import random
from collections import deque
#A while loop statement in Python programming language repeatedly executes a target statement as long as a given condition is true.
def assignment1():
    while True:
        try:
            A = float(input("Enter the wanted average arrival time: "))
            if A <= 0:
                print "Value too low, try again!"
                continue
            break
        except:
            print "Invalid input, try again!"
 ##float(x) convert x to a floating-point number.           
    while True:
        try:
            P = float(input("Enter the wanted average packet size: "))
            if P <= 0:
                print "Value too low, try again!"
                continue
            break
        except:
            print "Invalid input, try again!"
    
##random module
##the expovariate() function generates floating-point numbers which can be used to model inter-arrival times of a Poisson process
##Any time you have events which occur individually at random moments
## but which tend to occur at an average rate when viewed as a group = poisson process
    def Arrivaltimes():
        return random.expovariate(1/A)
#A= average arrival time
    def Packetsize():
        return random.expovariate(1/P)
#P= average packet size
#random.expovariate()
#Exponential distribution. () is 1.0 divided by the desired mean. It should be nonzero.
    while True:
        try:
            x = int(input("Enter number of desired packet departures: "))
            if x <= 0:
                print "Value too low, try again!"
                continue
            break
        except:
            print "Invalid input, try again!"
    
    while True:
        firstarrival = Arrivaltimes()
        firstpacketsize = Packetsize()
        
        try:
            if firstarrival < firstpacketsize:
                print "First condition met!"
                break
        except:
            continue
 ##deque(deck) is list-like container with fast appends and pops on either end     
    queue = deque([])
 ##Add x to the right side of the deque. 
    queue.append(firstpacketsize)

    loopcount = 0
    emptyqueue = 0
    while True:
        loopcount = loopcount + 1
        secondarrival = Arrivaltimes()
        totalarrival = secondarrival + firstarrival
        
        if totalarrival < firstpacketsize:
            print "Second condition met!"
            secondpacketsize = Packetsize()
            queue.append(secondpacketsize)
            break
        else:
            emptyqueue = emptyqueue + 1
            continue

    print queue 
    ##Total packet size is also the same as departure/processing duration 
    totalpacketsize = firstpacketsize + firstarrival  
    diffsecondpacket = firstpacketsize - secondarrival

    queuesizelist = [1]
    waitingtimes = [diffsecondpacket]

    ##Main while loop code
    NotFinished = True
    arrcount = 2
    depcount = 0

    while NotFinished:
        loopcount = loopcount + 1
        if totalarrival < totalpacketsize:
            print "Arrival!"
            nextarrival = Arrivaltimes()
            totalarrival = totalarrival + nextarrival
            arrcount = arrcount + 1
            newpacket = Packetsize()
            waitingtimes.append(sum(queue)-queue[0]+(totalpacketsize-totalarrival))
            queue.append(newpacket)
            length = len(queue) - 1
            if length == -1:
                queuesizelist.append(0)
            else:
                queuesizelist.append(length)
        else:
            print "Departure!"
            depcount = depcount + 1
            queue.popleft()
            length = len(queue) - 1
            if length == -1:
                queuesizelist.append(0)
            else:
                queuesizelist.append(length)
            try:
                totalpacketsize = totalpacketsize + queue[0]
            except:
    ##Fail safe code for empty queue      
                emptyqueue = emptyqueue + 1
                queuesizelist.append(0)
                print "Filler arrival!"
                arrcount = arrcount + 1
                newarrival = Arrivaltimes()
                totalarrival = totalarrival + newarrival
                fillerpacket = Packetsize()
                waitingtimes.append(0)
                queue.append(fillerpacket)
                totalpacketsize = totalpacketsize + newarrival + fillerpacket
                print arrcount
                print depcount
                if depcount == x:
                    NotFinished = False
                    print "Finished!"
                continue 
        if depcount == x:
            NotFinished = False
            print "Finished!"

        print arrcount
        print depcount

    fivetimes_queue= 0

    for i in queuesizelist:
        if i > (5*P):
            fivetimes_queue = fivetimes_queue + 1

    percentempty = (float(emptyqueue)/float(loopcount))*(100)
    percent5times = (float(fivetimes_queue)/float(loopcount))*100

    print "Average waiting time:", float(sum(waitingtimes)/len(waitingtimes)) 
    print "Average queue size:", float(sum(queuesizelist)/(len(queuesizelist)))
    print "The probability of the queue being empty is", percentempty,"%"  
    print "The probability of the queue being greater than 5 times the average packet size is", percent5times,"%"
```