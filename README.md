# Imari software

The general idea is to split a bitmap image to rectangles (cells), extract features from each one and then recreate the image replacing each cell with SVG element which is parameterized with the features of the bitmap cell.


First you have to load the bitmap your SVG image will be mapped over.  This pic will be split into rectangles (or squares if Rows number is 0). On the right of the main panel there are number of options defining how and what to extract from each cell. A little experimentaion will help. After the extraction there are two ways you can go:

1. Bitmap (tab) way, which will replace each cell with a symbol taken from a font. Usually graphics fonts (as Wingdings) are used. The options here are limited to the ones on the right. Use Apply button.

2. Vector Graphic (tab) way is the more sophisticated way to go. When you enter the tab a minimum you have to do is to pick an svg element. You can see all the SVG elements HERE or in View menu -> SVG Element Index. In the SVG Code templates tab you can see: three panel. Top one is a template to include the SVG element (second panel) into the SVG image as ENTITY which will be repeated and transform. The most powerful tool is the correspondence of parameters of SVG as a functions of variables extracted from bitmap cell. Matrix panel will give you the basic instruments to set that correspondence, as SVG element parameters of use will be equal to expressions from bitmap extracted variables (on the right side).  Use Apply button to create SVG image. The generated SVG image will be at Result Graphics tab. SVG source tab will show you the SVG code behind the image. 
I understand that the math expression relations between bitmap cell features (variables) and svg elements parameters are now the most intuitive way to make this relationship work, so having more user friendly approach here is my next task.

Website http:/sicyon.com/?pg=software/imari/index.html