<?php

function _civicrm_website_i18n_create_block($params){
  $delta = db_insert('block_custom')
    ->fields(array(
      'body' => $params['body'],
      'info' => $params['info'],
      'format' => $params['format'],
    ))
    ->execute();
  
  $query = db_insert('block')->fields(array('visibility', 'pages', 'custom', 'title', 'module', 'theme', 'status', 'weight', 'delta', 'cache'));
  $query->values(array(
    'visibility'  => '0',
    'pages'       => '',
    'custom'      => '0',
    'title'       => $params['title'],
    'module'      => $params['module'],
    'theme'       => $params['theme'],
    'status'      => 0,
    'weight'      => '-20',
    'delta'       => $delta,
    'cache'       => DRUPAL_NO_CACHE,
  ));
  $query->execute();
  
  // Store regions per theme for this block
  db_merge('block')
      ->key(array('theme' => $params['theme'], 'delta' => $delta, 'module' => $params['module']))
      ->fields(array(
        'region' => ($params['region'] == BLOCK_REGION_NONE ? '' : $params['region']),
        'pages' => '',
        'status' => (int) ($params['region'] != BLOCK_REGION_NONE),
      ))
      ->execute();
}