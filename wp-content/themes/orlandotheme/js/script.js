function toogleTab(option){
    var doIt = document.getElementById("doItOnline");
    var events = document.getElementById("eventTab");
    
    switch(option){
        case 1:
            console.log("Tab Do It Online Clicked");
            doIt.classList.remove("hidden");
            events.classList.add("hidden");
        break;
        case 2:
            console.log("Tab Event Clicked");
            events.classList.remove("hidden");
            doIt.classList.add("hidden");
        break;
    }
}