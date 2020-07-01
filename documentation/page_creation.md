## Pages

The pages directory contains the RMarkdown files for the created webpages. 
Once the webpage is ready for publication on the site, add the following to the YAML header:

knit: (function(inputFile, encoding) {
  rmarkdown::render(inputFile, encoding = encoding, output_dir = "docs") })
  
This will divert the rendered html file to the docs folder, which will be published on the webpage.
The link should also be added to the index.md file in the docs folder.
The html version should also be removed from the pages directory.