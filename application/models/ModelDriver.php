<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelDriver extends CI_Model {

	private $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "driver";
	}

	public function selectAll(){
		$this->db->select('*');
		$this->db->from($this->tableName);
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

	public function selectByStatus($status=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('status',$status);

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
