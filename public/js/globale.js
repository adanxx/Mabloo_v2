(function(){
  "use strict";

  var dropZone =  document.getElementById('drop-zone');
  var barFill = document.getElementById('bar-fill');
  var barFillText = document.getElementById('bar-fill-text');

  var startuploads =  function(files){
    // console.log(files);
    app.uploader({
      files: files,
      progressBar: barFill,
      progressBarText: barFillText,
      processor: "profile/uploadfile",

      finished: function(data){

        var x ;
        var uploadedElement;
        var uploadedAnchor;
        var uploadedStatus;

        for(x = 0; x < data.length; x++){
          uploadedElement = document.createElement('div');

          console.log(uploadedElement);
        }

      },
      error: function(){
        console.log('There was an error');
      }

    })
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
  
