<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public function index()
	{
		$this->load->view('main_page', [
			'page' => 'mahasiswa/index'
		]);
	}

	public function error_404()
	{
		$this->load->view('main_page', [
			'title' => 'SIPMB - Galat: Halaman Tidak Ditemukan.',
			'page' => 'errors/html/error_404'
		]);
	}
}
