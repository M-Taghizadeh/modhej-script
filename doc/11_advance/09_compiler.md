# The Pashmak Compiler(Mixer)
This program is a compiler/mixer for pashmak programming language.

This helps you, to mix lot of scripts in your project to One file.

Maybe your project has lot of files which them importing together. This tool helps you to mix and build them to ONE file.

## Get started
Let's get started:

```bash
$ pashmak @compiler /path/to/my-program/main.pashm out.pashm
```

then, you can run `out.pashm`:

```bash
$ pashmak out.pashm
```

Let's look at an example. we have 3 files: `app.pashm`, `lib.pashm`, `core.pashm`.

##### `app.pashm`:

```bash
println('App: start')

import $__dir__ + '/core.pashm'

println('App: end')
```

##### `core.pashm`:

```bash
println('Core: start')

import $__dir__ + '/lib.pashm'

println('Core: end')
```


##### `lib.pashm`:

```bash
println('Lib: hello')
```

When i run `app.pashm` normally, output is this:

```
App: start
Core: start
Lib: hello
Core: end
App: end
```

now, i can mix this 3 files to one file:

```bash
$ pashmak @compiler app.pashm out.pashm
```

now, when i run generated `out.pashm` output is:

```
App: start
Core: start
Lib: hello
Core: end
App: end
```

Excatly even the normal run output.

This helps you to build you project from lot of files to one file(Mix them).
