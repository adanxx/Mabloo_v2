(function(){
  "use strict";

  var dropZone =  document.getElementById('drop-zone')

  var startuploads =  function(files){
    console.log(files);
  }

  //Standard form uploads
  document.getElementById('standard-uploads').addEventListener('click', (e)=>{
    
    var startuploadsFiles = document.getElementById('standard-upload-files').files;
    e.preventDefault();
     startuploads(startuploadsFiles);
  })

  //Drop functionality
  dropZone.ondrop =  function(e){
    e.preventDefault();
    this.className="console-drop";
    startuploads(e.dataTransfer.files);
  }



  dropZone.ondragover =  function(){
    this.className="console-drop drop";
    return false;
  }

  dropZone.ondragleave =  function(){
    this.className="console-drop";
    return false;
  }

}())
  
