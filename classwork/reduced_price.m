function price_output = reduced_price (prices)
    price_output = prices(1) .* ( ( 100 - prices(2) ) / 100 );
end
