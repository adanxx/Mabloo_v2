
var app = app || {};

(function(o){
  "use strict"
 
  //Private methods
  var ajax, getFormData, setProgress;

  ajax = function(data){
    // console.log(data);
    var xmlHttp = new XMLHttpRequest();
    var uploaded;
          
    xmlHttp.open('post', o.options.processor);
    xmlHttp.send(data);

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


  setProgress = function(){

  }

  o.uploader = function(options){
    o.options =  options;

    if(options.files !== undefined){
      
     

      ajax(getFormData(o.options.files));
  
    }
  }



}(app))