//list required keys
var codeKeys = {
    37: 'left',
    38: 'up',
    39: 'right',
    40: 'down',
    65: 'a',
    66: 'b'
};
//Konami Code
var konamiCode = ['up', 'up', 'down', 'down', 'left', 'right', 'left', 'right', 'b', 'a'];
//How far the user got
var konamiCodePosition = 0;
//Listen for key strokes
document.addEventListener('keydown', function(e) {
    //Check which key is pressed
    var key = codeKeys[e.keyCode];
    //Gets all required keys
    var requiredKey = konamiCode[konamiCodePosition];
    //Checks if it is the needed key
    if (key == requiredKey) {
        //Move to next key
        konamiCodePosition++;
        //If code is done
        if (konamiCodePosition == konamiCode.length)
            activateCheats();
    } else
        konamiCodePosition = 0;
});

function activateCheats() {
    //Sets backgroundImage to thumbs up vault boy
    document.body.style.backgroundImage = "url('vaultboy.jpg')";
    //Tells the user how smart they are!
    alert("YOU KNOW THE CODE! You are so smart!");
}
