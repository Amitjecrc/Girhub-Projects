function allLetter(inputtxt)
      { 
      var letters = /^[A-Za-z]+$/;
      if(inputtxt.value.match(letters))
      {
      alert('Please input numeric  values  only');
      return false;
      }
      else
      {
      return true;
      
      }
      }