(function(){
  "use strict";

  var dropZone =  document.getElementById('drop-zone');
  var barFill = document.getElementById('bar-fill');
  var barFillText = document.getElementById('bar-fill-text');
  var uploadedFinished = document.getElementById('upload-finished');

  var startuploads =  function(files){
    // console.log(files);
    app.uploader({
      files: files,
      progressBar: barFill,
      progressBarText: barFillText,
      processor: "profile/uploadfile",

      finished: function(data){

        var i ;
        var uploadedElement;
        var uploadedAnchor;
        var uploadedStatus;
        var currFile;
        
       
        for(i = 0; i < data.length; i++){

           currFile =  data[i];

          uploadedElement = document.createElement('div');
          uploadedElement.className = "upload-console-upload";

          uploadedAnchor = document.createElement('a');
          uploadedAnchor.textContent = currFile.name;

          if(currFile.uploaded){
            // uploadedAnchor.href = 'uploads/' + currFile.file;
          }

          uploadedStatus = document.createElement('span');
          uploadedStatus.textContent =  currFile.uploaded ? "Uploaded" : "Failed";
          
          uploadedElement.appendChild(uploadedAnchor);
          uploadedElement.appendChild(uploadedStatus);

          uploadedFinished.appendChild(uploadedElement);

          

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
  
