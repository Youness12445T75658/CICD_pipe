function calculateWeather(temp) {
  if (temp > 25) return "Hot";
  if (temp < 10) return "Cold";
  return "Mild";
}
module.exports = calculateWeather;
