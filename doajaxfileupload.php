<?php
	$folder=$_REQUEST['folder'];
	$error = "";
	$msg = "";
	$fileElementName = 'fileToUpload';
	if(!empty($_FILES[$fileElementName]['error']))
	{
		switch($_FILES[$fileElementName]['error'])
		{
			/*The uploaded file exceeds the upload_max_filesize directive in php.ini*/
			/*Sorry, The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form*/
			
			case '1':
				$error = 'Sorry, The uploaded file exceeds the maximum filesize, Please try again';
				break;
			case '2':
				$error = 'Sorry, The uploaded file exceeds the maximum filesize, Please try again';
				break;
			case '3':
				$error = 'Sorry, The uploaded file was only partially uploaded, Please try again';
				break;
			case '4':
				$error = 'Sorry, No file was uploaded, Please try again';
				break;

			case '6':
				$error = 'Sorry, Missing a temporary folder, Please try again';
				break;
			case '7':
				$error = 'Sorry, Failed to write file to disk, Please try again';
				break;
			case '8':
				$error = 'Sorry, File upload stopped by extensionagain, Please try again';
				break;
			case '999':
			default:
				$error = 'Sorry, No error code avaiable';
		}
	}elseif(empty($_FILES['fileToUpload']['tmp_name']) || $_FILES['fileToUpload']['tmp_name'] == 'none')
	{
		$error = 'Sorry, No file was uploaded, Please try again';
	}else 
	{
			
			
			//for security reason, we force to remove all uploaded file
			
			$rand= time();
			$abcd = str_replace (" ", "", $_FILES['fileToUpload']['name']);
			$msg .= "uploads/".$folder."/".$rand.$abcd  ;
			
			
					if ((($_FILES["fileToUpload"]["type"] == "image/png")
					|| ($_FILES["fileToUpload"]["type"] == "image/gif")
					|| ($_FILES["fileToUpload"]["type"] == "image/jpeg")
					|| ($_FILES["fileToUpload"]["type"] == "image/jpg")
					|| ($_FILES["fileToUpload"]["type"] == "image/pjpeg")))
					  {
					 
					
						  @move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],
						  "../uploads/".$folder."/".$rand.$abcd );
						 
				list($width, $height, $type, $attr) = getimagesize("../uploads/".$folder."/".$rand.$abcd );
					if($width>150)
					  		{
							$msg .="#150#".$height/$width*150;	
							}
							else if($height>75){
								
								$msg .="#75#".$width/$height*75;	
								}
								else
								$msg .="#".$width."#".$height;
							
					  }
					  else
					  {
						$error='Sorry, please upload png/gif/jpeg/jpg/pjpeg file only';
					
					  }
				
	}
	
			
	echo "{";
	echo				"error: '" . $error . "',\n";
	echo				"msg: '" . $msg . "'\n";
	echo "}";
?>