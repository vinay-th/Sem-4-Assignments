// in this prog we will make a circular queue using array
// what is diff bw circular and linear queue

// Linear queue
// Enqueue: [10, 20, 30, 40, 50]
// Dequeue: [X, 20, 30, 40, 50]   <-- Space wasted at front

// Circular queue
// Enqueue: [10, 20, 30, 40, 50]
// Dequeue: [X, 20, 30, 40, 50]   <-- Space at front is now reusable
// Enqueue(60): [60, 20, 30, 40, 50]  <-- Wrapped around

#include <iostream>
using namespace std;

// define a queue array
int queue[5];
int front = -1, rear = -1;

// we will enter values in queue in diff cases
void enqueue(int val) {
  // when queue is full packed
  if ((front == rear + 1) || (front == 0 && rear == 4))
    cout << "The queue is overflowed";

  // when queue is empty
  else if (front == -1 && rear == -1) {
    front = rear = 0;
    queue[rear] = val;
  }

  // when rear is at the end and front is not 0 i.e
  // dequeuing has happened so front is > 0
  else if (rear == 4 && front != 0) {
    rear = 0;
    queue[rear] = val;
  }

  // normal case where queue is half filled and has empty spaces
  else {
    rear++;
    queue[rear] = val;
  }
}

// this is a func where we will remove the front element and inc front
void dequeue() {
  // when queue is empty
  if (front == -1)
    cout << "Queue underflow";
  else {
    // when front and rear becomes equal
    if (front == rear)
      front = rear = -1;
    // when all elements of queue are dequeued
    else if (front == 4)
      front = 0;
    // normal when we want to dequeue
    else
      front++;
  }
}

void display() {
  int i = front;
  cout << "Current elements in queue are: ";

  // if the queue is not empty
  if (front != -1 && rear != -1) {
    // when front is lesser than rear i.e queue is not using circular
    if (front <= rear) {
      for (int i = front; i <= rear; i++)
        cout << queue[i] << " ";
    } else {
      // front is > rear
      // we need to print front to 5 first
      for (int i = front; i < 5; i++)
        cout << queue[i] << " ";
      // than we need to print 0 to rear
      for (int i = 0; i <= rear; i++)
        cout << queue[i] << " ";
    }
  } else
    cout << "Queue underflow";

  cout << endl;
}

int main() {

  enqueue(10);
  enqueue(20);
  enqueue(30);
  enqueue(40);
  enqueue(50);

  display(); // 10 20 30 40 50

  dequeue(); // 20 30 40 50
  dequeue(); // 30 40 50

  display(); // 30 40 50

  enqueue(60);
  enqueue(70);
  // if it was linear it would give overflow

  display(); // 30 40 50 60 70

  cout << "\n";
  return 0;
}