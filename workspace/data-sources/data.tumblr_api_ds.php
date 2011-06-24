<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcetumblr_api_ds extends Datasource{

		public $dsParamROOTELEMENT = 'tumblr-api-ds';
		public $dsParamURL = 'http://{$ds-tumblr}.tumblr.com/rss';
		public $dsParamXPATH = '/';
		public $dsParamCACHE = '500';
		public $dsParamTIMEOUT = '6';

		public $dsParamFILTERS = array(
				'Atom' => 'http://www.w3.org/2005/Atom',
		);

		

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-tumblr');
		}

		public function about(){
			return array(
				'name' => 'Tumblr API DS',
				'author' => array(
					'name' => 'Kirk Strobeck',
					'website' => 'http://accf',
					'email' => 'kirk@strobeck.com'),
				'version' => '1.0',
				'release-date' => '2011-05-17T16:40:15+00:00'
			);
		}

		public function getSource(){
			return 'dynamic_xml';
		}

		public function allowEditorToParse(){
			return true;
		}

		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				include(TOOLKIT . '/data-sources/datasource.dynamic_xml.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			

			return $result;
		}

	}
