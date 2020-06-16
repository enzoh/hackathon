import Array "mo:base/Array";
import Iter "mo:base/Iter";
import ArrayUtils "./Array";

module {
  public class Random() {
    var sequence : [Nat] = [8,6,7,5,3,0,9];
    var j = 2;
    var k = 6;
    let mod = 100;

    public func seed(newSequence : [Nat]) { sequence := newSequence; };

    public func rnd() : Nat {
      for (_ in Iter.range(0, 99)) { cycle(); };
      ArrayUtils.last<Nat>(sequence);
    };

    public func sample<A>(arr : [A]) : A { arr[rnd() % arr.len()] };

    func cycle() {
      let fib = (sequence[j] + sequence[k]) % mod;
      sequence := Array.append(ArrayUtils.tail<Nat>(sequence), [fib]);
    };
  };
};
