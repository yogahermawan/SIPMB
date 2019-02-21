<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function view()
	{
		$this->load->view('temp/index');
	}
}
