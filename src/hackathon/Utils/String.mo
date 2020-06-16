import Array "mo:base/Array";
import Iter "mo:base/Iter";

module {

  // Some helpful utility functions for Strings.

  public func join(texts : [Text], delim : Text) : Text {
    var joined = "";
    let size = texts.len() - 1;
    for (i in Iter.range(0, size)) {
      joined := joined # texts[i];
      if (i < size) { joined := joined # delim; };
    };
    joined
  };
};
