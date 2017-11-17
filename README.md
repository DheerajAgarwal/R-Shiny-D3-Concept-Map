## Concept Map Using Shiny

This is a Shiny & R implementation inspired by http://www.findtheconversation.com/concept-map/ and using some code references from https://github.com/gp187/d3-concept-map.

The files have been renamed for better intuition and new code (`shiny_handler.js`) has been abstracted to act as a general template for Shiny applications with D3. 


**Project structure**
 
|README.md  
|LICENSE.txt  
|server.R  
|ui.R 
|metadata.json  
|www  
|---- concept-map.css  
|---- concept-map.js  
|---- d3.min.js  
|---- jquery-2.1.3.min.js  
|---- packages.js  
|---- shiny_handler.js  

### Caveats  

User can choose any file names, div-tags and input variable names as long as they are used consistently across. There are two caveat that I would like to call out.

1. The `www` folder. If the folder name is changed, then the `tag$script` and `href` under `tag$head` from `ui.R` must change to include the path.  
2. If you ever decide to use a different dataset than provided, the column names (json keys) much be named exactly same and all keys should be present for it to work properly.

### Future Planned Work
I have been able to create a concept map using a different data set sourced as a `dataframe` however that data is not public. I will work on this in my free time to provide the structure on how to start from a sample dataframe and build out the nested json in R. If you would like to track progress, please add an issue.

### License Info
[MIT License](https://github.com/DheerajAgarwal/R-Shiny-D3-Concept-Map/blob/master/LICENSE)
