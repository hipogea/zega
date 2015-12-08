<?php

class Masterequipo extends ModeloGeneral
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{masterequipo}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('descripcion, marca, modelo, numeroparte', 'required'),
			array('codart','exist','allowEmpty' => true, 'attributeName' => 'codigo', 'className' => 'Maestrocompo','message'=>'Este material no existe'),
			array('codigopadre','exist','allowEmpty' => true, 'attributeName' => 'codigo', 'className' => 'Masterequipo','message'=>'Este codigo de equipo no existe'),

			array('codart','checkrotativo','on'=>'insert,update'),

			//array('marca', 'numerical', 'integerOnly'=>true),
			array('codigo', 'length', 'max'=>10),
			array('descripcion', 'length', 'max'=>40),
			array('modelo', 'length', 'max'=>25),
			array('numeroparte', 'length', 'max'=>20),
			array('codart', 'length', 'max'=>14),
			array('codigo, descripcion,codigopadre, marca, modelo, numeroparte, codart, id', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('codigo, descripcion, marca, modelo, numeroparte, codart, id', 'safe', 'on'=>'search'),
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
			'maestro' => array(self::BELONGS_TO, 'Maestrocompo', 'codart'),
			'masterequipo' => array(self::BELONGS_TO, 'Masterequipo', 'codigopadre'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'codigo' => 'Codigo',
			'descripcion' => 'Descripcion',
			'marca' => 'Marca',
			'modelo' => 'Modelo',
			'numeroparte' => 'Numeroparte',
			'codart' => 'Codart',

		);
	}





	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('codigo',$this->codigo,true);
		$criteria->compare('descripcion',$this->descripcion,true);
		$criteria->compare('marca',$this->marca);
		$criteria->compare('modelo',$this->modelo,true);
		$criteria->compare('numeroparte',$this->numeroparte,true);
		$criteria->compare('codart',$this->codart,true);
		//$criteria->compare('id',$this->id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Masterequipo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function beforeSave() {

  if($this->isNewRecord) {
	  $this->codigo = $this->Correlativo ( 'codigo' , $criteria = null , '547' , null );
	  if ( is_null ( $this->codigopadre ) )
		  $this->codigopadre = '5470000000';
  }

	return parent::beforeSave();
}

	public function checkrotativo($attribute,$params) {
		$maestrito=Maestrocompo::model()->findByPk($this->codart);
		IF(!is_null($maestrito))
		if(!$maestrito->esrotativo=='1')
			$this->adderror('codart','Este material no puede ser asociado al equipo porque no es rotativo');


	}




}
