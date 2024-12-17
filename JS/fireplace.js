function createIframe() {
    var placeholder = document.getElementById('controlAddIn');  
    var container = document.createElement('div'); 
    container.style.textAlign = 'center'; 
    container.id = 'container';
    container.style.position = 'relative'; 

    
    var webPage = document.createElement('iframe');   
    webPage.id = 'webPage';   
    webPage.height = '420';  
    webPage.width = '630'; 
    container.appendChild(webPage); 

    
    var caption = document.createElement('div'); 
    caption.id = 'imageCaption';
    caption.style.color = 'white';
    caption.style.background = 'red';
    caption.style.fontFamily = 'Roboto, Arial, sans-serif';
    caption.style.fontWeight = 'bold';
    caption.innerText = 'Merry Christmas!🎄🎅🎄 Enjoy the festive season!🩷'; 
    caption.style.marginTop = '10px'; 
    caption.style.fontSize = '16px';
    container.appendChild(caption); 

    
    var leftLights = createLights('left');
    container.appendChild(leftLights);

    var rightLights = createLights('right');
    container.appendChild(rightLights);

    placeholder.appendChild(container); 
}

function createLights(side) {
    var lightsContainer = document.createElement('div');
    lightsContainer.style.position = 'absolute';
    lightsContainer.style.top = '10px';
    lightsContainer.style[side] = '-50px';
    lightsContainer.style.width = '30px'; 
    lightsContainer.style.height = '420px'; 
    lightsContainer.style.display = 'flex';
    lightsContainer.style.flexDirection = 'column';
    lightsContainer.style.justifyContent = 'space-between';


    for (var i = 0; i < 10; i++) {
        var light = document.createElement('div');
        light.style.width = '15px';
        light.style.height = '15px';
        light.style.borderRadius = '50%';
        light.style.backgroundColor = getRandomColor();
        light.style.boxShadow = `0 0 10px ${light.style.backgroundColor}`;
        lightsContainer.appendChild(light);
    }

    return lightsContainer;
}

function getRandomColor() {
    var colors = ['red', 'green', 'blue', 'yellow', 'orange', 'purple'];
    return colors[Math.floor(Math.random() * colors.length)];
}


function embedHomePage()

{
createIframe();     
var webPage = document.getElementById('webPage');   
 webPage.src = 'https://img.freepik.com/premium-photo/stamperia-cartoon-style-christmas-reindeer-holding-paper-with-list-gifts-santa-claus-standing-him-ar-32-quality-2-style-raw-stylize-50-v-61_896782-89686.jpg?semt=ais_hybrid';  
 
}