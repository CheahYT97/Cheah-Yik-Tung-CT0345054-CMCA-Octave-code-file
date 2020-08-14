Pitch = ['A';'B';'C';'D';'E';'F';'G'];
frequency = [440.0, 493.9, 523.2, 587.3, 659.3, 698.5, 784.0];

wavelength = [0.7800, 0.6949, 0.6559, 0.5843, 0.5206, 0.4914, 0.4378];

reciprocal = []
for i=1:length(wavelength)
    reciprocal =[reciprocal, 1/wavelength(i)]
  end

  plot(reciprocal,frequency);
  scatter(reciprocal, frequency, 10, 'filled');
  text(reciprocal, frequency * 1.02, Pitch);
  xlabel('1/Wavelength(1/\lambda)');
  ylabel('Frequency');
  legend({'Frequency vs Wavelength'},'Location','southeast')

 