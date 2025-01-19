// Write a CPP program to sum all the elements of the single Circular Linked
// list.
#include <iostream>
using namespace std;
class Node {
public:
  int data;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

void createLL() {
  if (start == NULL) {
    Node *newNode = new Node;

    cout << "Enter the data of start node: ";
    cin >> newNode->data;

    newNode->next = newNode;

    start = newNode;
    rear = newNode;
  }
  while (true) {
    int data;
    cout << "Enter further data(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    Node *newNode = new Node;

    newNode->data = data;
    newNode->next = start;

    rear->next = newNode;
    rear = newNode;
  }
}

int sumOfLL() {
  int sum = 0;
  Node *ptr = start;
  do {
    sum += ptr->data;
    ptr = ptr->next;
  } while (ptr != start);

  return sum;
}

void display() {
  Node *ptr = start;
  do {
    cout << ptr->data << endl;
    ptr = ptr->next;
  } while (ptr != start);
}

int main() {

  createLL();
  cout << "\nThe current LinkedList is: " << endl;
  display();
  cout << "\nThe sum of all the LinkedList's element is: " << sumOfLL();

  cout << "\n";
  return 0;
}