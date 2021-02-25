# webp2gif
convert animated webp to gif

### Prerequisites

[webp](https://developers.google.com/speed/webp/download)  
[imagemagick](https://imagemagick.org/script/download.php)  
[rename](http://manpages.ubuntu.com/manpages/bionic/man1/rename.ul.1.html)

- macOS

   ```
   brew install webp
   brew install imagemagick
   ```

- Ubuntu/Debian

  ```
  sudo apt install webp imagemagick
  ```

### Usage

```shell
wget https://git.io/webp2gif && chmod +x webp2gif

./webp2gif [-v|-h] <input.webp> [output.gif]
```

Input filename.ext is mandatory

Output filename.ext is optional, if not supplied the input filename will be used, e.g. foobar.webp --> foobar.gif

### Options

**-v, --version**  
&emsp;&emsp;&emsp;Display the version of the script

**h, --help**  
&emsp;&emsp;&emsp;Display a brief usage message

### Link
Maybe you want to convert a gif to webp?
Look for this [gif2webp](https://developers.google.com/speed/webp/docs/gif2webp)
