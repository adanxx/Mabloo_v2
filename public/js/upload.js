
var app = app || {};

(function(o){
  "use strict"
 
  //Private methods
  var ajax, getFormData, setProgress;

  ajax = function(data){
    // console.log(data);
    var xmlHttp = new XMLHttpRequest();
    var uploaded;

    xmlHttp.upload.addEventListener('progress', (event)=>{
      var percent;
     
      // console.log(event)

      if(event.lengthComputable === true){
        percent = Math.round((event.loaded/event.total)*100);
        setProgress(percent);
      }
      
    }); 

          
    xmlHttp.open('post', o.options.processor);
    xmlHttp.send(data);

    setProgress = function(procentage){

      if(o.options.progressBar !== undefined){
  
        o.options.progressBar.style.width =  procentage ?  procentage + '%' : 0;
      }
  
      if(o.options.progressBarText !== undefined){
  
        o.options.progressBarText.textContent =  procentage ?  procentage + '%' : 0;
      }
    }
   
    xmlHttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        // Typical action to be performed when the document is ready:
        uploaded = JSON.parse(this.response);
        
        // console.log(uploaded);
        if(typeof o.options.finished ==='function' && this.status == 200){
          
          o.options.finished(uploaded);
         
        }

      }
      else{

        if(typeof o.options.error === 'function' && this.status !== 200){
          o.options.error();
        }
       
      }
    };
    
  };

  getFormData = function(source){
    
    var data = new FormData();
    var i ;
  
    for( i=0; i < source.length; i++){

      data.append('files[]', source[i]);
    }

    return data;

  };

  

  o.uploader = function(options){
    o.options =  options;

    if(options.files !== undefined){
      
     

      ajax(getFormData(o.options.files));
  
    }
  }



}(app))