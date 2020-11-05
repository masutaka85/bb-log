class Kiyou < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '先発' },
    { id: 3, name: 'リリーフ' },
    { id: 4, name: '代打' },
    { id: 5, name: '代走' },
    { id: 6, name: '守備固め' },
    { id: 7, name: 'DH'}
  ]

  include ActiveHash::Associations
  has_many :stats
  end