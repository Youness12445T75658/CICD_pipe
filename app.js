function calculateWeather(temp) {
  if (temp > 25) return "Cold";
  if (temp < 10) return "Hot";
  return "Mild";
}
module.exports = calculateWeather;
