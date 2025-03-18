// 6 Write a C Program to store marks of 5 subjects in a queue and find the
// percentage from that value.
#include <iostream>
using namespace std;

int marks[5];
int front = -1, rear = -1;

void putMarks(int mark) {
  if (front == -1 && rear == -1)
    front = rear = 0;
  else {
    marks[rear] = mark;
    rear++;
  }
}

int getAvg() {
  int sum = 0;
  for (int i = front; i <= rear; i++)
    sum += marks[i];

  return sum / 4;
}

int main() {
  int mark;
  for (int i = 0; i < 5; i++) {
    cout << "Enter marks for " << i << " subject: ";
    cin >> mark;
    putMarks(mark);
  }

  cout << "The average of the marks is: " << getAvg();

  cout << "\n";
  return 0;
}