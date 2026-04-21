// La logique de calcul (facile à tester)
function applyDiscount(price, discount) {
    return price - (price * discount / 100);
}

const products = [
    { name: "Coque Silicone iPhone", price: 20, img: "📱" },
    { name: "Chargeur Rapide USB-C", price: 30, img: "⚡" }
];

// On n'exécute l'affichage QUE si on est dans un navigateur
if (typeof document !== 'undefined') {
    const productList = document.getElementById('product-list');
    if (productList) {
        products.forEach(product => {
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                <div style="font-size: 50px;">${product.img}</div>
                <h3>${product.name}</h3>
                <p>Prix: ${product.price}€</p>
                <button>Acheter</button>
            `;
            productList.appendChild(card);
        });
    }
}

// IMPORTANT : On exporte la fonction pour le test
module.exports = { applyDiscount };
