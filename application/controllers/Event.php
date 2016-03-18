<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Event extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('event_model', 'event');
    }

    public function index() {
        $this->load->helper('url');
        $this->load->view('event_view');
    }

    public function ajax_list() {
        $list = $this->event->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $event) {
            $no++;
            $row = array();
            $row[] = $event->event_name;
            $row[] = $event->start_date;
            $row[] = $event->end_date;
            $row[] = $event->device;
            $row[] = $event->version;
            $row[] = $event->status;

            //add html for action
            $row[] = '<a class="btn btn-sm btn-primary" href="javascript:void()" title="Edit" onclick="edit_event(' . "'" . $event->t_event_id . "'" . ')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
                  <a class="btn btn-sm btn-danger" href="javascript:void()" title="Hapus" onclick="delete_event(' . "'" . $event->t_event_id . "'" . ')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';

            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->event->count_all(),
            "recordsFiltered" => $this->event->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($id) {
        $data = $this->event->get_by_id($id);
        echo json_encode($data);
    }

    public function ajax_add() {
        $data = array(
            'event_name' => $this->input->post('event_name'),
            'start_date' => $this->input->post('start_date'),
            'end_date' => $this->input->post('end_date'),
            'device' => $this->input->post('device'),
            'version' => $this->input->post('version'),
            'status' => $this->input->post('status')
        );
        $insert = $this->event->save($data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_update() {
        $data = array(
            'event_name' => $this->input->post('event_name'),
            'start_date' => $this->input->post('start_date'),
            'end_date' => $this->input->post('end_date'),
            'device' => $this->input->post('device'),
            'version' => $this->input->post('version'),
            'status' => $this->input->post('status')
        );
        $this->event->update(array('t_event_id' => $this->input->post('t_event_id')), $data);
        echo json_encode(array("status" => TRUE));
    }

    public function ajax_delete($id) {
        $this->event->delete_by_id($id);
        echo json_encode(array("status" => TRUE));
    }

}
