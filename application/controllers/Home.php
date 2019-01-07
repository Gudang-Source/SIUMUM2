<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index(){

		$data['mobils'] = $this->ModelMobil->selectAll()->result_array();
		$data['count_mobil'] = $this->ModelMobil->selectByStatus(0)->num_rows();

		// print_r($data['mobil']);
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('index',$data);
		$this->load->view('templates/footer');
	}
}
