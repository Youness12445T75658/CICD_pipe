const calculateWeather = require('./app');

test('Température haute renvoie Hot', () => {
  expect(calculateWeather(30)).toBe("Hot");
});

test('Température basse renvoie Cold', () => {
  expect(calculateWeather(5)).toBe("Cold");
});
