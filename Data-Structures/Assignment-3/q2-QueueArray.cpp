// 2 Write a C Program to create a queue using an array and sort it.

#include <iostream>
using namespace std;

// checkout Learn-Concepts/Data-Structures -> QueueArray.cpp
int queue[10], queueSize = 10;
int front = -1, rear = -1;

// add an element at the rear of queue
void enqueue(int val) {
  if (front >= queueSize - 1)
    cout << "Queue overflow";
  else {
    if (front == -1 && rear == -1) {
      front = rear = 0;
      queue[rear] = val;
    } else {
      rear++;
      queue[rear] = val;
    }
  }
}

// sort the elements of queue
void sortQueue() {
  // a simple bubble sort logic
  for (int i = front; i <= rear; i++) {
    for (int j = i + 1; j <= rear; j++) {
      if (queue[i] > queue[j]) { // swapping if a > b
        int temp = queue[i];
        queue[i] = queue[j];
        queue[j] = temp;
      }
    }
  }
}

// display all the elements in the queue
void display() {
  if (front <= -1)
    cout << "Queue underflow";
  else {
    cout << "The elements in queue are: ";
    for (int i = front; i <= rear; i++) {
      cout << queue[i] << " ";
    }
    cout << endl;
  }
}

int main() {
  // this is static but ofcourse you will make this dynamic
  enqueue(10);
  enqueue(30);
  enqueue(20);
  enqueue(50);
  enqueue(90);
  enqueue(40);

  cout << "The queue before sorting: " << endl;
  display();

  cout << "\n\nThe queue after sorting: " << endl;
  sortQueue();
  display();

  cout << "\n";
  return 0;
}