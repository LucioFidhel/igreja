<?php

class CelulaController extends Zend_Controller_Action
{

    public function init()
    {
    	
    	$contextSwitch = $this->_helper->getHelper('contextSwitch');
    	$contextSwitch->addActionContexts(array(
    			'save'=> 'json',
    			'read'=> 'json'
    			))
    			->initContext();
    }

    public function indexAction()
    {
        $this->_helper->layout()->setLayout('app');
    }

    public function frequenciaAction()
    {
    	$this->_helper->layout()->setLayout('layout');
    	$authNamespace = new Zend_Session_Namespace('userInformation');
        $cell = new Application_Model_Cell();
        $this->view->formNoteCell = new Application_Form_Addnotecell();
        $this->view->dateMultiplication = $cell->viewDateMultiplication($authNamespace->cell_id_leader);
        $this->view->futureLeader = $cell->viewFutureLeader($authNamespace->cell_id_leader);
        $this->view->futureHost = $cell->viewFutureHost($authNamespace->cell_id_leader);
        $this->view->frequency = $cell->viewFrequency($authNamespace->cell_id_leader);
        $this->view->participants = $cell->viewParticipants($authNamespace->cell_id_leader);
    	$this->view->cell_id = $authNamespace->cell_id_leader;
    }

    public function cadastroAction()
    {
    	$this->_helper->layout()->setLayout('layout');
    	$authNamespace = new Zend_Session_Namespace('userInformation');
		$cellHost = new Application_Model_DbTable_CellHost();
		$cell = new Application_Model_Cell();
		$cellProfileForm = new Application_Form_CellProfile();
		if($this->getRequest()->isPost())
		{
			$data = $this->getRequest()->getPost();
			$cell->profileCell($data,$authNamespace->cell_id_leader);
		}
		$cellHost = $cellHost->fetchRow($cellHost->select()->where("cell_id = ?",$authNamespace->cell_id_leader));
		$values = array	(
							"cell_id" 		=> $authNamespace->cell_id_leader,
							"address" 		=> $cellHost->address,
							"number" 		=> $cellHost->number,
							"apartament" 	=> $cellHost->apartament,
							"district" 		=> $cellHost->district,
							"city" 			=> $cellHost->city,
							"zip_code" 		=> $cellHost->zip_code
						);
		$cellProfileForm->populate($values);
		$this->view->cellProfileForm = $cellProfileForm;
    }

    public function membrosAction()
    {
    	$this->_helper->layout()->setLayout('layout');
    	$authNamespace = new Zend_Session_Namespace('userInformation');
    	$cellClass = new Application_Model_Cell();
    	$newParticipantForm = new Application_Form_Participantes();
    	$newParticipantForm->setCellId($authNamespace->cell_id_leader);
    	if($this->getRequest()->isPost())
    	{
    		$data = $this->getRequest()->getPost();
            if(isset($data['birthday']) && $data['birthday'] != '')
            {
                $flag = explode('/',$data['birthday']);
                $data['birthday'] = $flag[2].'-'.$flag[1].'-'.$flag[0];
            }
			$cellClass->saveMember($data,$data['user_id']);
			$newParticipantForm->reset();
    	}
    	
    	$participantes = new Application_Model_Participantes();
    	$members = $participantes->retornaParticipantes($authNamespace->cell_id_leader);
    	$forms = $participantes->retornaForms($members);
    	$newParticipantForm->initForm();
    	$this->view->newParticipantForm = $newParticipantForm->returnForm();
    	$this->view->cell_id = $authNamespace->cell_id_leader;
    	$this->view->membersRows = $members;
    	$this->view->participantesForm = $forms;
    }

    public function perfilAction()
    {
        // action body
    }

    public function readAction()
    {
        $this->_helper->layout()->setLayout('json');
    }

    public function saveAction()
    {
        $this->_helper->layout()->setLayout('json');
    }


}















