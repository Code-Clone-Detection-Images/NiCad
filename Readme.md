# NiCad

Run [NiCad](https://www.txl.ca/) (to be more precise, [NiCad6](https://github.com/eff-kay/nicad6) Version 6.2) on a supplied folder.

**Build** using the [`makefile`](makefile).
**Run** using the [run-script](run.sh) script, supply it with the project folder and the language used.

> As only the `pwd` (current working directory) will be mounted automatically, you can not specify files/folders located in upper levels.

Example (the second argument may be `c`, `java`, ...):

```bash
make
./run.sh c-small c
```

> The output file will be printed with the `[Output]`-prefix. It consist of a folder named
> `sub_functions-blind-clones` which has all the html and xml files produced by nicad.
> It can be found inside of the mounted input folder (you may change this behavior, but the default is:
> `<input>/sub_functions-blind-clones/sub_functions-blind-clones-0.30-classes-withsource.html` for the
> main file).