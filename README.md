# pisass

Sass installation and removal scripts for Raspberry Pi ARM64

## get.sh

get.sh is a Bash script designed to simplify the process of installing Sass on a Raspberry Pi (64-bit) system. It automatically downloads the specified Sass version, configures the environment variables.

Usage

```
./get.sh <sass_version>
```

Replace `<sass_version>` with the desired Sass version number (e.g. `1.70.0`).

The script will download and install the specified Go version and set up the necessary environment variables. e.g.

```
./get.sh 1.70.0
```

## gone.sh

gone.sh is a companion script that allows you to remove Sass from your system. It cleans up the installed Sass files and removes the related environment variables.

Usage

```
./gone.sh
```

## Notes 

`get.sh` and `gone.sh` require set executable permissions before running them. e.g. 

```chmod +x get.sh```

```chmod +x gone.sh```

## Additional Information

[Sass Official Website](https://sass-lang.com/) - Sass is the most mature, stable, and powerful professional grade CSS extension language in the world.

[Sass releases](https://github.com/sass/dart-sass/releases) - Releases page to find available Sass versions.
