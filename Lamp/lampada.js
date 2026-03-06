const turnOn = document.getElementById ( 'turnOn' );
const turnOff = document.getElementById ( 'turnOff' );
const lamp = document.getElementById ( 'lamp' );

function lampBroken () {
lamp.src = './img/quebrada.jpg';
}
function isLampBroken () {
return lamp.src.indexOf ( 'quebrada' ) > -1
}
function lampOn () {
if ( !isLampBroken () ) {
lamp.src = './img/ligada.jpg';
}
}
function lampOff () {
if ( !isLampBroken () ) {
lamp.src = './img/desligada.jpg';
}
}
turnOn.addEventListener ( 'click', lampOn );
turnOff.addEventListener ( 'click', lampOff );
lamp.addEventListener ( 'mouseover', lampOn );
lamp.addEventListener ( 'mouseleave', lampOff );
lamp.addEventListener ( 'dblclick', lampBroken );

if('serviceWorker' in navigator){
    window.addEventListener('load', () => {
        navigator.serviceWorker.register('./sw.js').then(()=> console.log('Service Worker Registrado.')).catch(err=> console.log('Erro', err));
    });
}