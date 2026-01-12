PDCLib - Public Domain C Library
================================

The main project is still (and will remain) at:

**https://github.com/DevSolar/pdclib**

Preface
-------

After many years of on-and-off development on PDCLib, I finally got far
enough to start thinking about "versioned release" again.

However, several things became obvious to me:

- The CMake build system had been useful during development, but did not
  represent the kind of ubiquitous, lightweight build capability I had
  intended. I wanted to revert back to GNU Make.

- Over the years, several things had changed. Some approaches I had used
  no longer seemed acceptable. Crud had accumulated in internal header
  files. I wanted to re-scan things prior to "release".

- Development had suffered from "scope bounce": At times I had wanted to
  follow latest developments of C, at other times I had limited myself
  to strict C99, which had been the original goal of PDCLib. The result
  was, not exactly a mess, but less clean as I had intended.

- Testing could be significantly improved.

Long story short, I wanted to comb through the code once more. This repo
is that work: **Not a redo / rewrite of PDCLib, but a marshalling area to
prepare PDCLib for what will become v0.6**.

The number v0.6 does not have special significance, I just have "used up"
v0.1 through v0.5 during the early days of this project.

License
-------

PDCLib is distributed unter the Creative Commons CC0 License. You
should have received a copy of the full legal text of this license
as part of this distribution (COPYING.CC0). It is also available at

https://creativecommons.org/publicdomain/zero/1.0/legalcode

The following is a human-readable summary of that license.

                       No Copyright

The person who associated a work with this deed has dedicated the
work to the public domain by waiving all of his or her rights to
the work worldwide under copyright law, including all related and
neighboring rights, to the extent allowed by law.

You can copy, modify, distribute and perform the work, even for
commercial purposes, all without asking permission. See Other
Information below.

                    Other Information

In no way are the patent or trademark rights of any person affected
by CC0, nor are the rights that other persons may have in the work
or in how the work is used, such as publicity or privacy rights.

Unless expressly stated otherwise, the person who associated a work
with this deed makes no warranties about the work, and disclaims
liability for all uses of the work, to the fullest extent permitted
by applicable law.

When using or citing the work, you should not imply endorsement by
the author or the affirmer.
