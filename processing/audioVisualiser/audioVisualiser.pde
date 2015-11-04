import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

void setup()
{
  size(512, 512);
  minim = new Minim(this);
  in = minim.getLineIn(Minim.MONO, width, sampleRate, 16);
  fft = new FFT(width, sampleRate);
}

Minim minim;
AudioInput in;
FFT fft;
int sampleRate = 44100;

void draw()
{
  background(0);
  stroke(255);
  for (int i = 0; i < in.bufferSize (); i ++)
  {
    float sample = in.left.get(i);

    sample *= 100.0;
    line(i, height / 2, i, (height / 2) + sample);
  } 
  fft.window(FFT.HAMMING);
  fft.forward(in.left);
  stroke(0, 255, 255);
  int maxBin = -1;
  float maxValue = -1;
  float bass = 0;
  for (int i = 0; i < fft.specSize (); i ++)
  {
    if (in  < 3)
    {
      bass += fft.getBand(i);
    }
    if (fft.getBand(i) > maxValue)
    {
      maxValue = fft.getBand(i);
      maxBin = i;
    }
    line(i, height, i, height - fft.getBand(i)*100);
  }

  float binWidth = 86;
  println("Frequency: " + binWidth * maxBin);
  println("Bass: " + bass );
}

