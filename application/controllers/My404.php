<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//error_reporting(-1);ini_set('display_errors',1);;
class My404 extends CI_Controller {
	public function index() {
		$this->load->view('404');
	}
}