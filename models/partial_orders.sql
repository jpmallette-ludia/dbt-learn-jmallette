select 
      stgorders.customer_id,
      stgorders.order_id as order_id,
      pmt.amount / 100 as amount,
      pmt."orderID" as orderID
    from raw.stripe.payment as pmt
    left join "ANALYTICS"."DEV_JMALLETTE"."STG_ORDERS" as stgorders
        on pmt."orderID" = stgorders.order_id