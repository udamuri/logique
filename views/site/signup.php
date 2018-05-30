<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;
use andrewblake1\creditcard\CreditCardNumber;
use andrewblake1\creditcard\CreditCardExpiry;
use andrewblake1\creditcard\CreditCardCVCode;

$this->title = 'Register';
$this->params['breadcrumbs'][] = $this->title;
?>

<h1><?= Html::encode($this->title) ?></h1>
<div class="row">
    <div class="col-lg-5">
        <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>

            <?= $form->field($model, 'firstname')->textInput() ?>

            <?= $form->field($model, 'lastname')->textInput() ?>

            <?= $form->field($model, 'username')->textInput() ?>

            <?= $form->field($model, 'email')->textInput() ?>

            <?= $form->field($model, 'password')->passwordInput() ?>

            <?= $form->field($model, 'validatepassword')->passwordInput() ?>

            <?= $form->field($model, 'creditCard_number')->widget(CreditCardNumber::className(), ['submit' => false,]) ?>
            
            <?= $form->field($model, 'creditCard_expirationDate')->widget(CreditCardExpiry::className(), ['submit' => false,]) ?>
                
            <?= $form->field($model, 'creditCard_cvv')->widget(CreditCardCVCode::className(), ['submit' => false,]) ?>
            
            <?php
//                $arrayData = [
//                    'MasterCard' => 'MasterCard',
//                    'American Express' => 'American Express',
//                    'Carte Blanche' => 'Carte Blanche',
//                    'Diners Club' => 'Diners Club',
//                    'Discover' => 'Discover',
//                    'Enroute' => 'Enroute',
//                    'JBC' => 'JBC',
//                    'Maestro' => 'Maestro',
//                    'Solo' => 'Solo',
//                    'Switch' => 'Switch',
//                    'Visa' => 'Visa',
//                    'Visa Electron' => 'Visa Electron',
//                    'LaserCard' => 'LaserCard',
//                ];
//                echo $form->field($model, 'cc')
//                ->dropDownList(
//                    $arrayData,           // Flat array ('id'=>'label')
//                    ['prompt'=>'']    // options
//                );
            ?>
     
            <?= $form->field($model, 'termAndCondition')->checkbox(['checked' => false, 'required' => true]) ?>
            <div class="clearfix"></div>
            <?= $form->field($model, 'verifyCode')->widget(Captcha::className(), [
                'template' => '<div class="row"><div class="col-lg-3">{image}</div><div class="col-lg-6">{input}</div></div>',
            ]) ?>
            <div class="clearfix"></div>

            <div class="form-group">
                <?= Html::submitButton('Daftar', ['class' => 'btn btn-primary', 'name' => 'signup-button']) ?>
            </div>

        <?php ActiveForm::end(); ?>
    </div>
</div>