AcronymFinder
=============

Very simple lib that you can give big chunks of text and it will replace any acronyms with the appropiate description.

If anyone else uses it, I (@james) will make a gem, but until then, it's jsut a lib.

You will probably need to update acronyms.json from http://bigbookofacronyms.herokuapp.com/acronyms.json

Usage
-----

    AcronymFinder.new("This is AAC").html will output 'This is <abbr title="Administrative Appeals Court">AAC</abbr>''
