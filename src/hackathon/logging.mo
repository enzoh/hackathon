import Array "mo:base/Array";

module {
  public type Event = {
    countryCode : Text;
    ip : Text;
    language : Text;
    lat : Text;  // Should be Float but Candid can't deserialize them yet.
    lon : Text;  // Should be Float but Candid can't deserialize them yet.
    platform : Text;
    region : Text;
    resolution : Text;
    timestamp : Nat;
    userAgent : Text;
  };

  // The Internet Computer needs to provide a solution for application-level
  // logging, but until then we provide our own. In this case, we're storing
  // information provided by the user's browser much like access logs.

  public class Logger() {
    var eventLog : [Event] = [];

    public func log(event : Event) { eventLog := Array.append(eventLog, [event]); };

    public func getLogs() : [Event] { eventLog };
  };
};
