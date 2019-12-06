<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Main extends CI_Controller {
 
    function __construct()
    {
        parent::__construct();
 
        /* Standard Libraries of codeigniter are required */
        $this->load->database();
       
        /* ------------------ */ 
 
        $this->load->library('grocery_CRUD');
 
    }
 
    public function index()
    {
      $this->inicio();
    }
   public function funcionario()
    {
        $crud = new grocery_CRUD();
        $this->grocery_crud->set_table('funcionario_geral');
       $this->grocery_crud->set_subject('Funcionário');
       $this->grocery_crud->columns('MATRICULA','Nome','Setor','Cargo','Data_Nasc','Sexo','Estado_Civil', 'Bairro', 'Preferencia_Ferias','Especiais');



      	$this->grocery_crud->display_as('MATRICULA','Mat.');
        $this->grocery_crud->display_as('Data_Nasc','Nasc.');
        $this->grocery_crud->display_as('Estado_Civil','Est. Civil');
        $this->grocery_crud->display_as('Preferencia_Ferias','Férias');

        $this->grocery_crud->unset_clone();
    
        $output = $this->grocery_crud->render();
 
        $this->_example_output($output);
    }
  

    public function saude()
    {
        $crud = new grocery_CRUD();
        $this->grocery_crud->set_table('funcionario_saude');
       	$this->grocery_crud->set_subject('Ficha de saúde');
       	$this->grocery_crud->columns('Funcionario_Geral_MATRICULA','Alergias','Doencas_cronicas','Especiais');



      	$this->grocery_crud->display_as('Doencas_cronicas','Doenças Crônicas');
      
      	$this->grocery_crud->set_relation('Funcionario_Geral_MATRICULA','funcionario_geral','nome');

      	$this->grocery_crud->unset_clone();
       
    
        $output = $this->grocery_crud->render();
 
        $this->_example_output($output);
    }


    public function afastamentos()
    {
        $crud = new grocery_CRUD();
       $this->grocery_crud->set_table('afastamentos');
       $this->grocery_crud->set_subject('Afastamento');
      $this->grocery_crud->columns('Funcionario_Geral_MATRICULA','Motivo','Dias_Afastamento','Data_inicio');

      $this->grocery_crud->display_as('Dias_Afastamento','Dias afastado');
      $this->grocery_crud->display_as('Data_inicio','Data de início');
      $this->grocery_crud->set_relation('Funcionario_Geral_MATRICULA','funcionario_geral','nome');

       $this->grocery_crud->display_as('Funcionario_Geral_MATRICULA','Funcionário');
     
     	$this->grocery_crud->unset_clone();
    
        $output = $this->grocery_crud->render();
 
        $this->_example_output($output);
    }

     public function advertencias()
    {
        $crud = new grocery_CRUD();
       $this->grocery_crud->set_table('advertencias');
       $this->grocery_crud->set_subject('Advertência');
      $this->grocery_crud->columns('Funcionario_Geral_MATRICULA','Motivo','Data_Advertencia');

      
      $this->grocery_crud->display_as('Funcionario_Geral_MATRICULA','Funcionário');
      $this->grocery_crud->display_as('Data_Advertencia','Data da advertência');
      $this->grocery_crud->set_relation('Funcionario_Geral_MATRICULA','funcionario_geral','nome');
     
     	$this->grocery_crud->unset_clone();
    
        $output = $this->grocery_crud->render();
 
        $this->_example_output($output);
    }


	public function faltas()
    {
        $crud = new grocery_CRUD();
       $this->grocery_crud->set_table('faltas_nao_justificadas');
       $this->grocery_crud->set_subject('Falta');
      $this->grocery_crud->columns('Funcionario_Geral_MATRICULA','Motivo_Alegado','Data_Falta');

      
      $this->grocery_crud->display_as('Funcionario_Geral_MATRICULA','Funcionário');
      $this->grocery_crud->display_as('Data_Falta','Data da falta');
      $this->grocery_crud->display_as('Motivo_Alegado','Motivo');
      $this->grocery_crud->set_relation('Funcionario_Geral_MATRICULA','funcionario_geral','nome');

      	$this->grocery_crud->unset_clone();
     
    
        $output = $this->grocery_crud->render();
 
        $this->_example_output($output);
    }

    public function horas()
    {
        $crud = new grocery_CRUD();
       $this->grocery_crud->set_table('horas_extras');
       $this->grocery_crud->set_subject('Horas Extras');
      $this->grocery_crud->columns('Funcionario_Geral_MATRICULA','Data_2','Quantidade');

      
      $this->grocery_crud->display_as('Funcionario_Geral_MATRICULA','Funcionário');
      $this->grocery_crud->display_as('Data_2','Data ');
      
      $this->grocery_crud->set_relation('Funcionario_Geral_MATRICULA','funcionario_geral','nome');

      $this->grocery_crud->unset_clone();
     
    
        $output = $this->grocery_crud->render();
 
        $this->_example_output($output);
    }


     function _example_output($output = null)
 
    {
        $this->load->view('template.php',$output);    
    }

     function inicio($output = null)
 
    {
        $this->load->view('inicio.php',$output);    
    }
}
 