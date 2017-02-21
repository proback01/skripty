#!/bin/bash
echo "Dobry den"
pozdrav="Dobré ráno"
echo $pozdrav
echo "Pozdrav je: "$pozdrav" xxxxxx"
echo "Zadejte svůj věk: "
read vek
echo "Můj věk je: "$vek" let."

if [ $vek = 15 ]; then
        echo "Věk je 15 let."
else
        echo "Věk není 15 let."
fi

if [ $vek -lt 15 ]; then
        echo "Jsi dítě."
fi
if [ $vek -ge 15 ] && [ $vek -lt 18 ]; then
             echo "Jsi mladistvý."
fi
if [ $vek -gt 18 ]; then
             echo "Jsi dospělý."
fi


