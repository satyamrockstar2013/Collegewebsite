<?php
class PageEditor
{
	var $refined_data,$fname,$page_title, $page_content,$template_type;
	
	
	function __construct($fname,$page_title,$template_type,$data)
	{
		$this -> fname = $fname;
		$this -> page_title = $page_title;
		$this -> template_type = $template_type;

		$this -> refined_data = $this -> sanitize_data($data);
		$this -> refined_data = $this -> combine_with_prototype($this -> refined_data);
		$this -> write_to_file($this -> fname,$this -> refined_data);
		echo "Template type is ".$template_type;
	}

	function write_to_file($file_name,$data)
	{
		$fp = fopen(SERVER_ROOT.'pages/'.$file_name,'w') or die('Cannot open file stream');
		fwrite($fp,$data);
		fclose($fp);
	}

	function sanitize_data($data)
	{
		return addslashes($data);
		// Perform any more if needed
	}

	function combine_with_prototype($data)
	{
		return $prototype= 
		'<?php
		include $_SERVER[\'DOCUMENT_ROOT\'].\'/pvpsit/config/paths.php\';'.
		'$file_name=\''.$this -> fname.'\';'.
		'$page_title =\''.$this -> page_title.'\';'.
		'$page_content'.'="'.$data.'";'.
		'include SERVER_ROOT.\'/templates/'.$this-> template_type.'.php\';
		?>';

	}
}
?>