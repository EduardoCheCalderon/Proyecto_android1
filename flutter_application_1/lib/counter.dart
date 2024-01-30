int counter = 0;

void incrementCounter(Function setState) {
  setState(() {
    counter++;
  });
}

void decrementCounter(Function setState) {
  setState(() {
    counter--;
  });
}

void resetCounter(Function setState) {
  setState(() {
    counter = 0;
  });
}