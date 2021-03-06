# tb

"tb" is CLI tool to convert markdown table from csv

# Install

Download tb file as executable in your PATH dir.

```bash
$ curl https://raw.githubusercontent.com/yasuhiroki/tb/master/tb -O && chmod 755 tb
```

## zplug

```zsh
zplug "yasuhiroki/tb", as:command, use:tb
```

# Usage

```console
$ echo 'year name\n1985 bttf\n1989 bttf2\n1990 bttf3' | tb
| year | name |
| --- | --- |
| 1985 | bttf |
| 1989 | bttf2 |
| 1990 | bttf3 |
```

Change delimiter char when use `-d` option.

```console
$ echo 'no,name\n1,marty\n2,doc\n3,biff' | tb -d,
| no | name |
| --- | --- |
| 1 | marty |
| 2 | doc |
| 3 | biff |
```

# LICENSE

[MIT](./LICENSE)
