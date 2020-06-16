import Array "mo:base/Array";
import Iter "mo:base/Iter";

module {
  public func tail<A>(arr : [A]) : [A] { slice(arr, 1, arr.len() - 1) };

  public func last<A>(arr : [A]) : A { arr[arr.len() - 1] };

  public func slice<A>(arr : [A], start : Nat, end : Nat) : [A] {
    var slice : [A] = [];
    for (i in Iter.range(start, end)) { slice := Array.append(slice, [arr[i]]); };
    slice
  };
};
