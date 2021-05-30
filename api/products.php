<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
include_once '../classes/Product.php';
$product = new Product();
$products = $product->getAllProduct();

/*

{
    id: 2,
    title: 'Product 2',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    price: 35,
    ratings: 5,
    reviews: 10,
    isAddedToCart: false,
    isAddedBtn: false,
    isFavourite: false,
    quantity: 1
}

*/

// array di prodotti

$prodotti_arr = array();
foreach ($products as $row) {
    extract($row);
    $prodotto_item = array(
        "id" => $productId,
        "title" => $productName,
        "description" => $body,
        "price" => $price,
        "ratings" => 5,
        "reviews" => 0,
        "isAddedToCart" => false,
        "isAddedBtn" => false,
        "isFavourite" => false,
        "quantity" => 1
    );
    array_push($prodotti_arr, $prodotto_item);
}
echo json_encode($prodotti_arr);
