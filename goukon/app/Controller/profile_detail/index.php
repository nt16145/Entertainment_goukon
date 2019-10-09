<?php

use Slim\Http\Request;
use Slim\Http\Response;

// グループ作成画面ページのコントローラ
$app->get('/profile_detail/', function (Request $request, Response $response) {

    $data = $this->session["user_info"];

    if($data["name"] == null) {

        return $this->view->render($response, 'login/login.twig');

    }

    // Render index view
    return $this->view->render($response, 'profile_detail/index.twig', $data);
});