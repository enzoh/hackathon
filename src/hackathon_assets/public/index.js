import hackathon from 'ic:canisters/hackathon';

hackathon.greet(window.prompt("Enter your name:")).then(greeting => {
  window.alert(greeting);
});
