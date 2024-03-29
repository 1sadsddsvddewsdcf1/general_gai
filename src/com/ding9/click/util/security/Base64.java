package com.ding9.click.util.security;








public class Base64
{
  public static String encode(byte[] data)
  {
    if (data == null) {
      return null;
    }
    char[] out = new char[(data.length + 2) / 3 * 4];
    


    int i = 0; for (int index = 0; i < data.length; index += 4)
    {
      boolean quad = false;
      boolean trip = false;
      

      int val = 0xFF & data[i];
      val <<= 8;
      if (i + 1 < data.length)
      {
        val |= 0xFF & data[(i + 1)];
        trip = true;
      }
      val <<= 8;
      if (i + 2 < data.length)
      {
        val |= 0xFF & data[(i + 2)];
        quad = true;
      }
      


      out[(index + 3)] = alphabet[64];
      val >>= 6;
      


      out[(index + 2)] = alphabet[64];
      val >>= 6;
      

      out[(index + 1)] = alphabet[(val & 0x3F)];
      val >>= 6;
      
      out[(index + 0)] = alphabet[(val & 0x3F)];i += 3;
    }
    











    return new String(out);
  }
  

  public static byte[] decode(String tar)
  {
    if (tar == null) {
      return null;
    }
    char[] data = tar.toCharArray();
    int len = (data.length + 3) / 4 * 3;
    if ((data.length > 0) && (data[(len - 1)] == '='))
      len--;
    if ((data.length > 0) && (data[(len - 2)] == '=')) {
      len--;
    }
    byte[] out = new byte[len];
    
    int shift = 0;
    int accum = 0;
    int index = 0;
    
    for (int ix = 0; ix < data.length; ix++)
    {
      int value = codes[(data[ix] & 0xFF)];
      if (value >= 0)
      {
        accum <<= 6;
        shift += 6;
        accum |= value;
        if (shift >= 8)
        {
          shift -= 8;
          out[(index++)] = 
            ((byte)(accum >> shift & 0xFF));
        }
      }
    }
    
    if (index != out.length) {
      throw new Error("miscalculated data length!");
    }
    return out;
  }
  




  private static char[] alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="
    .toCharArray();
  



  private static byte[] codes = new byte[256];
  
  static {
    for (int i = 0; i < 256; i++)
      codes[i] = -1;
    for (int i = 65; i <= 90; i++)
      codes[i] = ((byte)(i - 65));
    for (int i = 97; i <= 122; i++)
      codes[i] = ((byte)(26 + i - 97));
    for (int i = 48; i <= 57; i++) {
      codes[i] = ((byte)(52 + i - 48));
    }
    codes[43] = 62;
    codes[47] = 63;
  }
}
