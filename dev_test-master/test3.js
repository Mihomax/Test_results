/**
 * Using fs, Write into a file ./test.txt the sentence "Hello World!" in this project's root folder.
 * When the write is complete, console.log that the file was saved successfully.
 */

var fs = require('fs');
fs.writeFile("./test.txt", "Hello world", function(err) {
    if(err) {
        return console.log(err);
    }

    console.log("The file was saved!");
}); 

