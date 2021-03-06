!-- 

  First-in-first-out (FIFO) data structure implemented as an array of fixed length. 
  
--! 

import Event

class EventQueue {

  const uint8 capacity = 10
  Event elements[capacity] = {null}

  uint8 length
  uint8 head
  uint8 tail
  uint8 maxLength
  
  public host EventQueue(uint8 max) {
    @length = 0
    @head = 0
    @tail = 0
    @maxLength = max

    if (max > @capacity) {
      @capacity = max
    }
  }
  
  // Default target constructor
  public EventQueue() {}
    
  public host setCapacityOnHost(uint8 capacity) {
    @capacity = capacity
  }

  public bool add(Event e) {
    if (@length < @capacity) {
      @elements[tail] = e
      ++tail
      ++length
      if (tail == capacity) {
        tail = 0
      }
      return true
    } else {
      return false
    }
  }
  
  public Event remove() {    
    Event e = null
    
    if (!@isEmpty()) {
      e = @elements[head]      
      ++head
      --length
      if (head == capacity) { head = 0 }      
    }

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
