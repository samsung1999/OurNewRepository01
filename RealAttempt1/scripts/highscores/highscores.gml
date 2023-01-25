// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function highscores_load(){
		// Open the file for reading
var file = file_text_open_read("highscore.txt");

// Read the high_mins and high_secs variables from the file
global.high_seconds = file_text_read_real(file);
global.high_mins = file_text_read_real(file);

// Close the file
file_text_close(file);
		
		
}

function highscore_save(){
	// Create a new file and open it for writing
var file = file_text_open_write("highscore.txt");

// Write the high_mins and high_secs variables to the file
file_text_write_real(file, global.high_seconds);
file_text_write_real(file, global.high_mins);

// Close the file
file_text_close(file);
}
