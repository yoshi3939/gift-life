class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択してください' },
    { id: 2, name: 'もらった物' },
    { id: 3, name: '贈った物' }
  ]

include ActiveHash::Associations
has_many :gifts

end