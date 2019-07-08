# Altered Docker Image

This image make the use of GNU diff/patch to modify a Docker image.

## Misc usage:

Generate the patch file:

```diff --unified 2 <file1> <file2> > <file.patch>```

Apply the patch:

```patch --directory / --strip 0 --input <file.patch>```

Revert the patch:

```patch --strip 0 --reverse --input <file.patch>```

