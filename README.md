# Alfred - CLC

<p align="center">
<img src="https://github.com/aviaryan/alfred-clc/raw/master/src/icon.png">
</p>

**Tested with Alfred 3**

This workflow adds a powerful calculator right in your Alfred bar.


## Installing

1. Install [Homebrew](https://brew.sh/).

2. Install insect:

```bash
brew install insect
```

3. Download the [CLC workflow file](https://github.com/aviaryan/alfred-clc/raw/master/clc.alfredworkflow), and double-click it to have it open in Alfred.


## Using

```
clc [expression]
```


## Example expressions

```sh
sqrt(1.4^2 + 1.5^2) * cos(pi/3)^2
2 min + 30 s
40 kg * 9.8 m/s^2 * 150 cm
60 mph -> m/s
6 Mbit/s * 1.5 h -> GB
# sum of the first ten squares
sum(k^2, k, 1, 10)
```

**NOTE:** Since this workflow uses [insect](https://github.com/sharkdp/insect) for the calculations, please see its
[README](https://github.com/sharkdp/insect) for more possible types of expressions.


## Screenshots

![Screenshot 1](https://i.imgur.com/MMg3MKN.png)

![Screenshot 2](https://i.imgur.com/sa1fPJz.png)

![Screenshot 3](https://i.imgur.com/J1B0zI9.png)


## External Requirements

[insect](https://github.com/sharkdp/insect)

```sh
brew install insect
# or
npm install -g insect
```


----

⭐️ [Donate](https://www.paypal.me/aviaryan) ⭐️

