count = 0;
random = ['girl', 'night', 'nature', 'delhi', 'kolkata', 'usa', 'water'];
while count < 7 do
  Image.create!(image_url: "https://source.unsplash.com/random/#{random[count]}")
  count += 1;
end