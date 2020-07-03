function createAlert(){
	var div = document.createElement("div");
	div.className = "alert alert-info";
	div.appendChild(document.createElement("strong").appendChild(document.createTextNode("Empty! ")));
	div.appendChild(document.createTextNode("Nothing to show. Create a new entry."));
	
	return div;
}

function createEntry(ts, content){
	var h4 = document.createElement("h4");
	h4.appendChild(document.createTextNode(ts));
	
	var p = document.createElement("p");
	p.innerHTML = content;
	
	var hr = document.createElement("hr");
	
	var div = document.createElement("div");
	div.appendChild(h4);
	div.appendChild(p);
	div.appendChild(hr);
	
	return div;
}

function createPagination(page, pages, links){
	// main ul element
	var ul = document.createElement("ul");
	ul.className = "pagination";
	
	// previous link
	var prevLink = document.createElement("a");
	prevLink.className = "page-link";
	prevLink.href = "dashboard.jsp?page="+(page-1);
	prevLink.appendChild(document.createTextNode("Previous"));
	
	var prev = document.createElement("li");
	prev.className = (page==1)? "page-item disabled" : "page-item";
	prev.appendChild(prevLink);
	ul.appendChild(prev);
	
	// page links
	for(i=page; i<page+links; i++){
		if(i > pages)
			break;
		
		var a = document.createElement("a");
		a.className = "page-link";
		a.href = "dashboard.jsp?page="+i;
		a.appendChild(document.createTextNode(i));
		
		var li = document.createElement("li");
		li.className = (i==page)? "page-item active" : "page-item";
		li.appendChild(a);
		ul.appendChild(li);
	}
	
	// next link
	var nextLink = document.createElement("a");
	nextLink.className = "page-link";
	nextLink.href = "dashboard.jsp?page="+(page+1);
	nextLink.appendChild(document.createTextNode("Next"));
	
	var next = document.createElement("li");
	next.className = (page==pages)? "page-item disabled" : "page-item";
	next.appendChild(nextLink);
	ul.appendChild(next);
	
	return ul;
}

function fetchDiaryEntries(){
	// intercept URL, fetch page
	var url = window.location.href;
	var param = url.split("?")[1];
	var page = Number(param.split("=")[1]);
	
	// ajax request
	var xhr = new XMLHttpRequest();
	xhr.open('GET', 'fetchEntries?currentPage='+page, true);
	xhr.onload = function(){
		if(this.status!=200)
			return;
		
		// process the response
		var node = document.getElementById("entries");
		
		if(this.responseText == ""){
			var alert = createAlert();
			node.appendChild(alert);
		}
		else{
			var resps = JSON.parse(this.responseText);
			var pages = resps[0].pages;
			var links = resps[0].links;
			var entries = resps[1];
			
			for(entry of entries){
				var div = createEntry(entry.ts, entry.content);
				node.appendChild(div);
			}
			
			if(pages > 1){
				var pagination = createPagination(page, pages, links);
				node.appendChild(pagination);
			}
		}
	}
	xhr.send();
}
