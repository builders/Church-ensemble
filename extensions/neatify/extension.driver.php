<?php
	
	class Extension_Neatify extends Extension {
	/*-------------------------------------------------------------------------
		Definition:
	-------------------------------------------------------------------------*/
		
		public function about() {
			return array(
				'name'			=> 'Neatify',
				'version'		=> '1.0.1',
				'release-date'	=> '2009-12-14',
				'author'		=> array(
					'name'			=> 'Rowan Lewis',
					'website'		=> 'http://rowanlewis.com/',
					'email'			=> 'me@rowanlewis.com'
				),
				'description'	=> 'Adds preferences to remove or improve parts of the Symphony GUI.'
			);
		}
		
		public function getSubscribedDelegates() {
			return array(
				array(
					'page'		=> '/backend/',
					'delegate'	=> 'InitaliseAdminPageHead',
					'callback'	=> 'initaliseAdminPageHead'
				),
				array(
					'page'		=> '/system/preferences/',
					'delegate'	=> 'AddCustomPreferenceFieldsets',
					'callback'	=> 'addCustomPreferenceFieldsets'
				)
			);
		}
		
		public function uninstall() {
			$config = $this->_Parent->Configuration;
			$config->remove('neatify');
			$this->_Parent->saveConfig();
		}
		
		public function install() {
			$config = $this->_Parent->Configuration;
			$config->set('remove-header', 'no', 'neatify');
			$config->set('remove-footer', 'no', 'neatify');
			$config->set('select-all', 'no', 'neatify');
			$config->set('sort-menus', 'no', 'neatify');
			$this->_Parent->saveConfig();
			
			return true;
		}
		
	/*-------------------------------------------------------------------------
		Config:
	-------------------------------------------------------------------------*/
		
		public function getConfigData() {
			$config = $this->_Parent->Configuration;
			$data = array(
				'remove-header'	=> false,
				'remove-footer'	=> false,
				'select-all'	=> false,
				'sort-menus'	=> false
			);
			
			foreach ($data as $key => &$value) {
				$value = 'yes' == $config->get($key, 'neatify');
			}
			
			return $data;
		}
		
	/*-------------------------------------------------------------------------
		Delegates:
	-------------------------------------------------------------------------*/
		
		public function initaliseAdminPageHead($context) {
			$page = Administration::instance()->Page;
			$data = $this->getConfigData();
			
			if ($data['remove-header']) {
				$page->addStylesheetToHead(
					URL . '/extensions/neatify/assets/remove-header.css', 'screen', 201
				);
			}
			
			if ($data['remove-footer']) {
				$page->addStylesheetToHead(
					URL . '/extensions/neatify/assets/remove-footer.css', 'screen', 202
				);
			}
			
			if ($data['select-all']) {
				$page->addScriptToHead(
					URL . '/extensions/neatify/assets/select-all.js', 203
				);
				$page->addStylesheetToHead(
					URL . '/extensions/neatify/assets/select-all.css', 'screen', 203
				);
			}
			
			if ($data['sort-menus']) {
				$page->addScriptToHead(
					URL . '/extensions/neatify/assets/sort-menus.js', 204
				);
			}
		}
		
		public function addCustomPreferenceFieldsets($context) {
			$data = $this->getConfigData();
			$page = Administration::instance()->Page;
			$page->addStylesheetToHead(
				URL . '/extensions/neatify/assets/preferences.css', 'screen', 250
			);
			
			$fieldset = new XMLElement('fieldset');
			$fieldset->setAttribute('class', 'settings');
			$fieldset->appendChild(new XMLElement('legend', 'Neatify'));
			
			$this->buildPreferences(
				__('Interface'), $fieldset,
				array(
					array(
						'label'		=> '%s Add select-all&nbsp;buttons?',
						'name'		=> 'select-all',
						'value'		=> $data['select-all']
					),
					array(
						'label'		=> '%s Automaticaly sort&nbsp;menus?',
						'name'		=> 'sort-menus',
						'value'		=> $data['sort-menus']
					),
					array(
						'label'		=> '%s Remove&nbsp;header?',
						'name'		=> 'remove-header',
						'value'		=> $data['remove-header']
					),
					array(
						'label'		=> '%s Remove&nbsp;footer?',
						'name'		=> 'remove-footer',
						'value'		=> $data['remove-footer']
					)
				)
			);
			
			$context['wrapper']->appendChild($fieldset);
		}
		
		public function buildPreferences($title, $fieldset, $data) {
			$label = new XMLElement('h3', $title);
			$label->setAttribute('class', 'neatify-formatter-label');
			$fieldset->appendChild($label);
			
			$options = new XMLElement('div');
			$options->setAttribute('class', 'neatify-formatter-preferences');
			
			$row = null;
			
			foreach ($data as $index => $item) {
				if ($index % 3 == 0) {
					if ($row) $options->appendChild($row);
					
					$row = new XMLElement('div');
				}
				
				// Prevent widowed words:
				$option = new XMLElement('div');
				$option->setAttribute('class', 'neatify-formatter-preference');
				
				$name = 'settings[neatify][' . $item['name'] . ']';
				
				$input = Widget::Input($name, 'yes');
				$input->setAttribute('type', 'hidden');
				$input->setAttribute('value', 'no');
				$fieldset->appendChild($input);
				
				$input = Widget::Input($name, 'yes');
				$input->setAttribute('type', 'checkbox');
				
				if (true === $item['value']) {
					$input->setAttribute('checked', 'checked');
				}
				
				$label = Widget::Label(__(
					$item['label'], array($input->generate())
				));
				$option->appendChild($label);
				$row->appendChild($option);
			}
			
			$options->appendChild($row);
			$fieldset->appendChild($options);
		}
	}
	
?>