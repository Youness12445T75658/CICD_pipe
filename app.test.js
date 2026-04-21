const { applyDiscount } = require('./app');

test('Applique une remise de 10% sur 20€', () => {
    expect(applyDiscount(20, 10)).toBe(18);
});
