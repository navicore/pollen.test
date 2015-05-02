!-- 

  First-in-first-out (FIFO) data structure implemented as an array of fixed length. 
  
--! 
from virtual.mcu import ConsolePrint as Print

import Event

class EventQueue {

  host uint8 capacity = 1
  Event elements[capacity] = {null}

  uint8 length
  uint8 head
  uint8 tail
  
  public host EventQueue(uint8 max) {
    @length = 0
    @head = 0
    @tail = 0

    // if (capacity <= 1) {
    // if (max == 0) {
    //   @capacity = 1
    // } else {
      @capacity = max      
    // }
    // }
    print "EventQueue constructor initial capacity = " + @capacity + "\n"
  }
  
  // Default target constructor
  public EventQueue() {}
    
  public host setCapacityOnHost(uint8 capacity) {
    print "EventQueue setting host @capacity=" + @capacity + " capacity=" + capacity + "\n"
    @capacity = capacity
  }

  public host uint8 getCapacityOnHost() {
    return @capacity
  }

  public bool add(Event e) {
    +{ printf("\tQadd: capacity= %x length=%d tail=%d  ptr=%x\n", `capacity`, `length`, `tail`, `e`)}+

    if (@length < @capacity) {
      +{ printf("\tQadd: WHAT: tail=%d length=%d e=%x\n", `length`, `tail`, `e`)}+


      @elements[tail] = e

      +{ printf("\tQadd: WHAT: tail=%d length=%d e=%x\n", `length`, `tail`, `e`)}+

      ++tail

      +{ printf("\tQadd: WHAT: tail=%d length=%d e=%x\n", `length`, `tail`, `e`)}+      

      ++length

      +{ printf("\tQadd: WHAT: tail=%d length=%d e=%x\n", `length`, `tail`, `e`)}+

      if (tail == capacity) {
        tail = 0
      }

    +{ printf("\tQadd: tail=%d length=%d e=%x\n", `length`, `tail`, `e`)}+

      return true
    } else {
      Print.printStr("\tFAILED TO ADD TO QUEUE")
      return false
    }
  }
  
  public Event remove() {    
    Event e = null

    if (@length != 0) {
      e = @elements[head]      
      ++head
      --length
      if (head == capacity) { head = 0 }      
    }

    +{ printf("\tQremove: capacity= %d e=%x\n", `capacity`, `e`)}+

    return e
  }
  
  public Event peek() {
    if (!isEmpty()) {
      return elements[head]
    }
    else { 
      return null
    }
  }
  
  public bool isEmpty() {
    return length == 0
  }
  
  public uint8 getCapacity() {
    return @capacity
  }
  
  public uint8 getLength() {
    return @length
  }
  
}