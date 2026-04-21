// La liste de tes accessoires
const products = [
    { name: "Coque Silicone iPhone", price: "19.99€", img: "📱" },
    { name: "Chargeur Rapide USB-C", price: "25.00€", img: "⚡" },
    { name: "Protection Écran Verre", price: "10.00€", img: "💎" }
];

// La fonction qui crée les cartes produits dans le HTML
const productList = document.getElementById('product-list');

products.forEach(product => {
    const card = document.createElement('div');
    card.className = 'product-card';
    card.innerHTML = `
        <div style="font-size: 50px;">${product.img}</div>
        <h3>${product.name}</h3>
        <p>Prix: ${product.price}</p>
        <button>Acheter</button>
    `;
    productList.appendChild(card);
});
