// 4 Write a C Program to create a queue using Linkedlist.
#include <iostream>
using namespace std;

// checkout Learn-Concepts/Data-Structures -> QueueLL.cpp
class Node {
public:
  int data;
  Node *next;
};

// init the front and rear
Node *front = NULL;
Node *rear = NULL;

// func for adding the element to the front of the queue
Node *enqueue(Node *front) {
  int num;
  cout << "Enter the num: ";
  cin >> num;

  Node *newNode = new Node();
  newNode->data = num;
  newNode->next = NULL;

  if (front == NULL) {
    front = rear = newNode;
  } else {
    rear->next = newNode;
    rear = newNode;
  }

  return front;
}

// simple LL display func
void display() {
  Node *ptr = front;

  while (ptr != NULL) {
    cout << ptr->data << " ";
    ptr = ptr->next;
  }
}

int main() {
  // made it static you may want to make it dynamic
  front = enqueue(front);
  front = enqueue(front);
  front = enqueue(front);

  display();

  cout << "\n";
  return 0;
}