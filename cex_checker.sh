#!/bin/bash

#product_code=045496510060 #3DS Circle Pad Pro
product_code=045496510107 #3DS XL Circle Pad Pro

if [[ -f product.html ]]; then
    rm -f product.html
fi

curl -s -o product.html https://uk.webuy.com/product.php?sku=${product_code}

if [[ -n $(grep "buy this item" product.html) ]]; then
    echo "This item is in stock"
else
    echo "This item is still out of stock"
fi
