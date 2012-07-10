<?php
namespace TDD\Test;

class MainBTest extends \PHPUnit_Framework_TestCase
{
	public function testMethodXReturnFalse()
	{
		$obj = new MainB();
		
		$this->assertFalse($obj->methodX());
	}
}
