<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index(){

		$data['allmobils'] = $this->ModelMobil->selectAll()->result_array();
		$data['mobils'] = $this->ModelMobil->selectByStatus(0)->result_array();
		$data['drivers'] = $this->ModelDriver->selectAvailable()->result_array();
		$data['kotas'] = $this->ModelKota->selectJawa()->result_array();
		// print_r($data['mobil']);
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('index',$data);
		$this->load->view('templates/footer');
	}

	public function processPerjalanan(){
		$post = $this->input->post();
		var_dump($post);
	}
}
