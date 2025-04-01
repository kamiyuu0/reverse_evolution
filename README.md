# ReverseEvolution

このGemはStringの拡張メソッド `String#reverse_evolution` を提供するGemです。  
単語をおかしく進化させます。  
AIの機嫌によって進化後の面白さは変わります。  

## Installation
```bash
gem install reverse_evolution
```

※動かなければ `gem install ruby-openai` も追加でインストール

## Usage

```ruby

require "reverse_evolution"
using ReverseEvolution

str = '進化前の単語'
puts str.reverse_evolution
#=> '進化後の単語'

```