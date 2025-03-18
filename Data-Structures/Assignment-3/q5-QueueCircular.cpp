// 5 Write a C Program to create circular queue using an array.
#include <iostream>
using namespace std;

// checkout Learn-Concepts/Data-Structures -> QueueCircular.cpp
int queue[5];
int front = -1, rear = -1;

void enqueue(int val) {
  if ((front == rear + 1) || (front == 0 && rear == 4))
    cout << "The queue is overflowed" << endl;
  else if (front == -1 && rear == -1) {
    front = rear = 0;
    queue[rear] = val;
  } else if (rear == 4 && front != 0) {
    rear = 0;
    queue[rear] = val;
  } else {
    rear++;
    queue[rear] = val;
  }
}

void dequeue() {
  if (front == -1)
    cout << "Queue underflow" << endl;
  else {
    if (front == rear)
      front = rear = -1;
    else if (front == 4)
      front = 0;
    else
      front++;
  }
}

void display() {
  if (front == -1 && rear == -1)
    cout << "Queue underflow";
  else {
    cout << "Current queue elements are: ";
    if (front <= rear) {
      for (int i = front; i <= rear; i++)
        cout << queue[i] << " ";
    } else {
      for (int i = front; i < 5; i++)
        cout << queue[i] << " ";
      for (int i = 0; i <= rear; i++)
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