<?php
namespace app\models;

use yii\base\Model;
use app\models\User;

/**
 * Signup form
 */
class SignupForm extends Model
{
    public $firstname;
    public $lastname;
    public $username;
    public $email;
    public $password;
    public $validatepassword;
    public $verifyCode;
    public $termAndCondition;
    public $creditCard_number;
    public $creditCard_expirationDate;
    public $creditCard_cvv;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['firstname', 'trim'],
            ['firstname', 'required'],
            ['firstname', 'string', 'max' => 50],

            ['lastname', 'trim'],
            ['lastname', 'required'],
            ['lastname', 'string', 'max' => 50],


            ['username', 'trim'],
            ['username', 'required'],
            ['username', 'unique', 'targetClass' => '\app\models\User', 'message' => 'username already exist'],
            ['username', 'string', 'min' => 2, 'max' => 255],

            ['email', 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'string', 'max' => 255],
            ['email', 'unique', 'targetClass' => '\app\models\User', 'message' => 'email already exist'],
           
            ['password', 'required'],
            ['password', 'string', 'min' => 6],
            
            ['termAndCondition', 'boolean'],
            
            ['validatepassword', 'required'],
            ['validatepassword', 'validatePasswordv'],

            // verifyCode needs to be entered correctly
            ['verifyCode', 'captcha'],
        ];
    }
    
    public function validatePasswordv($attribute, $params)
    {
        if ($this->$attribute !== $this->password) {
            $this->addError($attribute, "password is not the same");
        }
    }

    /**
     * Signs user up.
     *
     * @return User|null the saved model or null if saving fails
     */
    public function signup()
    {
        if (!$this->validate()) {
            return null;
        }
        
        $user = new User();
        $user->username = $this->username;
        $user->cc_number = $this->creditCard_number;
        $user->cc_expirationdate = $this->creditCard_expirationDate;
        $user->cc_cvv = $this->creditCard_cvv;
        $user->firstname = $this->firstname;
        $user->lastname = $this->lastname;
        $user->email = $this->email;
        $user->status = 0;
        $user->setPassword($this->password);
        $user->generateAuthKey();
        $result = false;
        if($user->save())
        {
           $result = true; 
        }
        return $result;
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'firstname' => 'First Name',
            'lastname' => 'Last Name',
            'email' => 'Email',
            'password' => 'Password',
            'validatepassword' => 'Repeat Password',
            'verifyCode' => 'verification code',
            'termAndCondition' => 'Term and Condition',
            'creditCard_number' => 'Credit Card Number',
            'creditCard_expirationDate' => 'Credit Card Expiration Date',
            'creditCard_cvv' => 'CVV',
        ];
    }
}
