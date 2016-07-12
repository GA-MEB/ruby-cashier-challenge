
def make_change(price, amnt_tendered, denoms = [25, 10, 5, 1])
  # Your Code Here
  change_left_to_give = ((amnt_tendered - price.to_f) * 100).round.to_i
  denoms.map do |denom|
    num_coins = change_left_to_give / denom
    change_left_to_give = change_left_to_give % denom
    num_coins
  end
end
