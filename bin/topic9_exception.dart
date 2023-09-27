void main(List<String> arguments) {
  // Task 1:
  // 1	DeferredLoadException

  //   Thrown when a deferred library fails to load.
  // 2
  //   FormatException

  //   Exception thrown when a string or some other data does not have an expected format and cannot be parsed or processed.

  // 3
  //   IntegerDivisionByZeroException

  //   Thrown when a number is divided by zero.

  // 4
  //   IOException

  //   Base class for all Inupt-Output related exceptions.

  // 5
  // IsolateSpawnException

  // Thrown when an isolate cannot be created.

  // 6
  // Timeout

  // Thrown when a scheduled timeout happens while waiting for an async result.

  // Task 2:
  try {
    checkConditions(20, "phoneNumber", "email@admin");
  } catch (e) {
    if(e is MyException){
      print(e.toString());
    }else{
      print("Error!");
    }
  }
}

class MyException implements Exception {

  final String message;

  MyException(this.message);

  @override
  String toString() {
    return message;
  }
}

void checkConditions(int age, String phoneNumber, String email) {
  if (age <= 18) {
    throw MyException("You are a teenager yet");
  }

  if (phoneNumber.length<11) {
    throw MyException("Incorrect phone number entered");
  }

  if (!email.contains("@")) {
    throw MyException("Incorrect email entered");
  }

  if (!email.contains("admin")) {
    throw MyException("No access");
  }
}
