const { applyDiscount } = require('./app');

test('Applique une remise de 10% sur 20€', () => {
    // 20 - 10% = 18
    expect(applyDiscount(20, 10)).toBe(18);
});

test('Applique une remise de 20% sur 30€', () => {
    // 30 - 20% = 24
    expect(applyDiscount(30, 20)).toBe(24);
});

