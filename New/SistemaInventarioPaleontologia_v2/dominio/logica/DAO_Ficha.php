<?php  



/**
* 
*/
class DAO_ficha
{
	private $var_1;
	private $var_2;
	private $var_3;
	private $var_4;
	private $display;





	public function __construct($var_1, $var_2, $var_3, $var_4)
	{
		$this->var_1 = $var_1;
        $this->var_2 = $var_2;
        $this->var_3 = $var_3;
        $this->var_4 = $var_4;
	}

	public function getVar_1()
    {
        return $this->var_1;
    }
 
    public function setVar_1($date)
    {
        $this->var_1 = $date;
    }
    public function getVar_2()
    {
        return $this->var_2;
    }
 
    public function setVar_2($date)
    {
        $this->var_2 = $date;
    }
    public function getVar_3()
    {
        return $this->var_3;
    }
 
    public function setVar_3($date)
    {
        $this->var_3 = $date;
    }
    public function getVar_4()
    {
        return $this->var_4;
    }
 
    public function setVar_4($date)
    {
        $this->var_4 = $date;
    }

    

    
}

$a=new DAO_ficha("a1","b2","c3","d4");
echo $a->getVar_4();

?>