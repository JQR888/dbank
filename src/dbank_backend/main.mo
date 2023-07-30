import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";


actor DBank{
  stable var currentValue = 300; 
  currentValue := 100;

  Debug.print(debug_show(currentValue));

  let id = 123;

    Debug.print(debug_show(id));


    public func topUp(amount: Nat) {
      currentValue += amount;
      Debug.print(debug_show(currentValue));

    };

       public func withdraw(amount: Nat) {
        let temvalue: Int = currentValue - amount;
      if (temvalue >=0 ) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
      } else {
        Debug.print("No sufficient Amount")
      }


  };

  public query func checkBalance(): async Nat {
    return currentValue;

  };

    // topUp()

};

