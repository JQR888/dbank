import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Time = "mo:base/Time";
import Float "mo:base/Float";


actor DBank{
  stable var currentValue: Float = 300; 
  // currentValue := 100;

  // stable var startTime = Time.now();
  var startTime = Time.now();

  Debug.print(debug_show(startTime));

  // Debug.print(debug_show(currentValue));

  let id = 123;

    Debug.print(debug_show(id));


    public func topUp(amount: Float) {
      currentValue += amount;
      Debug.print(debug_show(currentValue));

    };

    public func withdraw(amount: Float) {
      let temvalue: Float = currentValue - amount;
      if (temvalue >=0 ) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
        Debug.print("No sufficient Amount")
    }


  };

  public query func checkBalance(): async Float {
    return currentValue;

  };

  
  public func compound(){
    let currentTime = Time.now();

    let timeElapse = currentTime - startTime;

    let timeElapseS = timeElapse / 1000000000;

    currentValue := currentValue* (1.01 ** Float.fromInt(timeElapseS));

    startTime := currentTime;

    Debug.print(debug_show(currentValue));

  };


// public query func http_request(request: HttpRequest) : async HttpResponse {
//     // Your code to handle the incoming HTTP request goes here
//     return {
//         status_code = 200;
//         headers = [("content-type", "text/plain")];
//         body = Text.encodeUtf8("Hello, World!");
//     };
// };

 
};




