$(document).ready(function () {
  var map = L.map("mapa").setView([-22.4689, -43.5], 9);
  L.tileLayer("https://tile.openstreetmap.org/{z}/{x}/{y}.png", {
    maxZoom: 18,
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>'
  }).addTo(map);

  var cidades = [
    ["7-barra-mansa", "Barra Mansa", -22.5440, -44.1714],
    ["55-petropolis", "Petrópolis", -22.5050, -43.1789],
    ["59-porto-real", "Porto Real", -22.4172, -44.2953],
    ["63-resende", "Resende", -22.4689, -44.4467],
    ["86-teresopolis", "Teresópolis", -22.4124, -42.9660]
  ];

  cidades.forEach(function (c) {
    L.marker([c[2], c[3]], { title: c[1] })
      .addTo(map)
      .on("click", function () { window.open("cidades/" + c[0] + ".html"); });
  });
});
