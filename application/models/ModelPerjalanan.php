<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelPerjalanan extends CI_Model {

	private $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "perjalanan";
	}

	public function selectAll(){
		$this->db->select('*');
		$this->db->from($this->tableName);
		// $this->db->limit($from,$offset);
		$this->db->order_by('id','ASC');

		return $this->db->get();
	}
	public function selectAllJoin(){
		$this->db->select('perjalanan.*,driver.nama as driverName, mobil.plat, mobil.merk, kota.nama as kotaName');
		$this->db->from($this->tableName);
		$this->db->join('driver','driver.id = perjalanan.driverId');
		$this->db->join('mobil','mobil.id = perjalanan.mobilId');
		$this->db->join('kota','kota.id = perjalanan.kotaId');
		// $this->db->limit($from,$offset);
		$this->db->order_by('id','ASC');

		return $this->db->get();
	}
	public function selectById($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('id',$id);

		return $this->db->get();
	}

	public function insert($data){
		$this->db->insert($this->tableName,$data);
	}

	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('id',$id);
		return $this->db->update($this->tableName);
	}

	public function delete($id){
		$this->db->where('id',$id);
		$this->db->delete($this->tableName);
	}	
}
