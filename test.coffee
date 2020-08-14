tab = [
  {
    id: 1
    name: 'Emma Watson'
    email: 'emma@watson.com'
    phone: '0060060064'
    type: 'personal'
  },
  {
    id: 2
    name: 'John Wick'
    email: 'john@wick.com'
    mabite: 98,
    phone: '0070070076'
    type: 'professional'
  },
  {
    id: 3
    name: 'Olivier de Carglass'
    email: 'olivier@carglass.com'
    phone: '0077770076'
    type: 'personal'
  }
]

filter = (tab, str) -> tab.filter((contact) ->
  Object.keys(contact).reduce((acc, curr) ->
    contact[curr].toString().match(///#{str}///gi) or acc
  false
  ))

filtered = filter(tab, '98')
console.log(filtered)