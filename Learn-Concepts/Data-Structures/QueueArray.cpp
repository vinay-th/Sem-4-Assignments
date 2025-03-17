#include <iostream>
using namespace std;

int queue[100], queueSize = 100;
int front = -1, rear = -1;

void enqueue(int val) {
  if (rear == queueSize - 1)
    cout << "Queue overflow";
  else {
    if (front == -1 && rear == -1) {
      front = 0;
      rear = 0;
    } else
      rear++;

    queue[rear] = val;
  }
}

void dequeue() {
  if (front == -1)
    cout << "Queue underflow";
  else {
    queue[front] = 0;
    front++;
  }
}

int peek() { return queue[front]; }

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