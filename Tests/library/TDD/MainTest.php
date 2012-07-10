<?php
namespace TDD;

class MainTest extends \PHPUnit_Framework_TestCase
{
	public function testMethodAReturnTrue()
	{
		$obj = new Main();
		
		$this->assertTrue($obj->methodA());
	}
}
