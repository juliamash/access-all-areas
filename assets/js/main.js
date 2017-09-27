window.onload = resize_to_fit();

function resize_to_fit(){
	const containers = document.getElementsByClassName('headline-container');
	const headlines  = document.getElementsByClassName('headline');

	for (i = 0; i < containers.length; i++) {
	  const headline  = headlines [i];
	  const container = containers[i];
	  let count = 15;

	  while (headline.offsetHeight > container.offsetHeight && count > 0) {
	    const fontSize = parseInt(window.getComputedStyle(headline).fontSize);
	    headline.style.fontSize = fontSize - 1 + "px";
	    count--;
	  }
	}
}