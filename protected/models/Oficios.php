<?php

/**
 * This is the model class for table "oficios".
 *
 * The followings are the available columns in table 'oficios':
 * @property string $codof
 * @property string $oficio
 * @property string $creadoel
 * @property string $modificadopor
 * @property string $modificadoel
 * @property string $creadopor
 *
 * The followings are the available model relations:
 * @property Trabajadores[] $trabajadores
 * @property PersonalExterno[] $personalExternos
 */
class Oficios extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Oficios the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
        return Yii::app()->params['prefijo'].'oficios';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			//array('codof', 'required'),
			array('codof', 'length', 'max'=>3),
			array('oficio', 'length', 'max'=>45),
			array('oficio', 'required'),
			//array('creadoel, modificadoel', 'length', 'max'=>20),
			//array('modificadopor, creadopor', 'length', 'max'=>25),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('codof, oficio, creadoel, modificadopor, modificadoel, creadopor', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'trabajadores' => array(self::HAS_MANY, 'Trabajadores', 'codpuesto'),
			'personalExternos' => array(self::HAS_MANY, 'PersonalExterno', 'oficio'),
		);
	}

	
	
	public $maximovalor;
	//public $conservarvalor=0; //Opcionpa reaverificar si se quedan lo valores predfindos en sesiones 
	public function beforeSave() {
							if ($this->isNewRecord) {
									
									    $this->creadopor=Yii::app()->user->name;
										// $this->creadoel=Yii::app()->user->name;


								$this->codof=(string)(str_pad(Oficios::model()->count()+1,3,"0",STR_PAD_LEFT)+300);
										//$this->cod_estado='01';
											//$this->c_salida='1';
									} else
									{
										
										//$this->ultimares=" ".strtoupper(trim($this->usuario=Yii::app()->user->name))." ".date("H:i")." :".$this->ultimares;
									}
									return parent::beforeSave();
				}
	
	
	
	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'codof' => 'Codigo',
			'oficio' => 'Oficio',
			'creadoel' => 'Creadoel',
			
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('codof',$this->codof,true);
		$criteria->compare('oficio',$this->oficio,true);
		

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}