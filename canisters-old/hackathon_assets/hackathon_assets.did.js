export default ({ IDL }) => {
 const Path = IDL.Text
 const Contents = IDL.Text
 return IDL.Service({'retrieve': IDL.Func([Path], [Contents], ['query']),
  'store': IDL.Func([Path, Contents], [], [])});
};
