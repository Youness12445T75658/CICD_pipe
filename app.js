const products = [
    { id: 1, name: "Coque iPhone 15", price: 20 },
    { id: 2, name: "Chargeur Rapide", price: 30 }
];

function applyDiscount(price, discount) {
    return price - (price * discount / 100);
}

module.exports = { applyDiscount, products };
