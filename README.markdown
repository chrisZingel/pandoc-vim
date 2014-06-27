# Create pdf  within Vim using Pandoc

### Author:  [Chris Zingel][] 
#### License: Same terms as Vim itself

## Requirement

- This requires [Pandoc] to be installed
- Also requires Vim with ruby enabled


Copy the file template-letter.tex to ~/.pandoc/templates. This is
the default locations for templates


## COMMANDS:

:Pandoc                 Create pdf and open pdf

To use the letter template have the  markup file in a
directory called *letter*/ or contain *letter* ie
dummy-*letter*-2014-6.md

## Using the template-letter.tex

The markup file requires the following YAML  metedata block.

For example:

	---
	author: Aaron
	opening: To whom it may concern,
	closing: Sincerely,
	address: 
	 - 123 Street Rd
	 - Chicago, IL
	return-address: 
	 - My Home
	 - 456 Road St.
	 - New York, NY
	...

Note: This has been copied from [pandoc-letter][]

[Chris Zingel]: http://zingtech.co.nz
[pandoc-vim]: https://github.com/chrisZingel/pandoc-vim
[pandoc-letter]: https://github.com/aaronwolen/pandoc-letter
[Pandoc]: http://johnmacfarlane.net/pandoc/
[LaTeX]: http://www.latex-project.org/
[latex-template]: https://github.com/jgm/pandoc-templates
