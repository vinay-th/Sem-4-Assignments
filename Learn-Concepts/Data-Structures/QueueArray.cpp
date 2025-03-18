// In this prog we will try to create a simple queue with arrays
#include <iostream>
using namespace std;

// just like stack init queue and size of queue
int queue[5], queueSize = 5;
// queue has front and rear we init them with -1
int front = -1, rear = -1; // front = rear = -1

// enqueue is a func that adds an element in queue
void enqueue(int val) {
  if (rear == queueSize - 1)
    cout << "Queue overflow";
  else {
    if (front == -1 &&
        rear == -1) { // when the queue is empty front = rear = -1
      front = 0;
      rear = 0;
    } else
      rear++; // if queue already exists rear will be +1

    queue[rear] = val; // add the element at rear
  }
}

// dequeue is a func to delete the element from the front
void dequeue() {
  if (front == -1)
    cout << "Queue underflow";
  else {
    front++; // this is most imp part we need to inc front by 1
  }
}

// peek retrieves the first element of the queue
int peek() { return queue[front]; }

// display func to show every element in queue
void display() {
  if (front == -1)
    cout << "Queue underflow";
  else {
    cout << "\n\nThe current values in queue are: ";
    for (int i = front; i <= rear; i++) {
      cout << queue[i] << " ";
    }
  }
  cout << endl;
}

int main() {
  enqueue(10);
  enqueue(20);
  enqueue(30);
  enqueue(40);

  display();

  dequeue();

  cout << "After dequeueing the queue: " << endl;
  display();

  cout << "\n";
  return 0;
}