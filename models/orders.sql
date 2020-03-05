select customers_id,orderID as order_id,
 sum(amount) as amount
  from raw.stripe.payment


