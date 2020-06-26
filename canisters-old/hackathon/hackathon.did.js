export default ({ IDL }) => {
 const Event =
  IDL.Record({'ip': IDL.Text, 'lat': IDL.Text, 'lon': IDL.Text,
   'region': IDL.Text, 'platform': IDL.Text, 'resolution': IDL.Text,
   'countryCode': IDL.Text, 'language': IDL.Text, 'timestamp': IDL.Nat,
   'userAgent': IDL.Text})
 const Idea =
  IDL.Record({'desc': IDL.Text, 'idea': IDL.Text, 'link': IDL.Text})
 return IDL.Service({'getIdea': IDL.Func([Event], [Idea], []),
  'getLogs': IDL.Func([], [IDL.Vec(Event)], ['query'])});
};
