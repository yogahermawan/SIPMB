<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function view()
	{
		$data['judul'] = 'Halaman Home';
		$this->load->view('temp/header.php', $data);
		$this->load->view('temp/index');
		$this->load->view('temp/footer.php');
	}
}