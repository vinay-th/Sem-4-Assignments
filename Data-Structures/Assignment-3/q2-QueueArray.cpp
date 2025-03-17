// 2 Write a C Program to create a queue using an array and sort it.

#include <iostream>
using namespace std;

int queue[10], queueSize = 10;
int front = -1, rear = -1;

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

void sortQueue() {
  for (int i = front; i <= rear; i++) {
    for (int j = i + 1; j <= rear; j++) {
      if (queue[i] > queue[j]) {
        int temp = queue[i];
        queue[i] = queue[j];
        queue[j] = temp;
      }
    }
  }
}

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