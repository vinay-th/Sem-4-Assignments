// in this prog we will make a simple queue with LL
#include <iostream>
using namespace std;

// basic single LL init
class Node {
public:
  int data;
  Node *next;
};

// we will use front and rear to control the queue
Node *front = NULL;
Node *rear = NULL;

// this func will add a num in the queue at end
// you may use void if you like
Node *enqueue(Node *front) {
  int num;
  cout << "Enter the num to add in queue: ";
  cin >> num;

  Node *newNode = new Node();
  newNode->data = num;
  newNode->next = NULL;

  // check is queue is empty
  if (front == NULL && rear == NULL) {
    front = rear = newNode; // when empty set both front and rear = newNode
  } else {
    rear->next = newNode; // if queue exists newNode comes after rear
    rear = newNode;       // new rear is newNode
  }

  return front; // return the Node pointer obj
}

// simple func to delete an element from the front
Node *dequeue(Node *front) {
  if (front == NULL) { // check is queue is empty
    cout << "Queue is empty, cannot dequeue." << endl;
    return NULL;
  }

  Node *ptr = front;
  cout << "Deleted element is: " << ptr->data << endl;

  front = front->next;
  delete ptr; // delete the node in memory

  if (front == NULL) { // check if queue got empty
    rear = NULL;
  }

  return front;
}

// simple LL display function
void display() {
  if (front == NULL) {
    cout << "Queue is empty." << endl;
    return;
  }

  Node *ptr = front;
  cout << "Current elements in queue are: ";
  while (ptr != NULL) {
    cout << ptr->data << " ";
    ptr = ptr->next;
  }
  cout << endl;
}

int main() {
  // i made this static you make this dynamic
  // Ha meri jaaannnn
  front = enqueue(front);
  front = enqueue(front);
  front = enqueue(front);
  display();

  front = dequeue(front);
  display();

  return 0;
}
