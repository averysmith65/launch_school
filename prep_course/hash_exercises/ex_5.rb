person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

p person.select { |k,v| (v == '160 lbs')}