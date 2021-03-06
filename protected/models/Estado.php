<?php

/**
 * This is the model class for table "estado".
 *
 * The followings are the available columns in table 'estado':
 * @property string $codestado
 * @property string $codocu
 * @property string $estado
 * @property integer $ordenn
 * @property string $creadopor
 * @property string $creadoel
 * @property string $modificadopor
 * @property string $modificadoel
 * @property integer $eseditable
 * @property integer $esanulable
 *
 * The followings are the available model relations:
 * @property Dcotmateriales[] $dcotmateriales
 * @property Dcotmateriales[] $dcotmateriales1
 * @property Guia[] $guias
 * @property Guia[] $guias1
 * @property Factu[] $factus
 * @property Factu[] $factus1
 * @property Coti[] $cotis
 * @property Coti[] $cotis1
 */
class Estado extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Estado the static model class
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
		return '{{estado}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('codestado, codocu', 'required'),
			array('ordenn, eseditable, esanulable', 'numerical', 'integerOnly'=>true),
			array('codestado', 'length', 'max'=>2),
			array('codocu', 'length', 'max'=>3),
			array('nocalculable', 'safe'),
			array('estado, creadopor, modificadopor', 'length', 'max'=>25),
			array('creadoel, modificadoel', 'length', 'max'=>20),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('codestado, codocu, estado, ordenn, creadopor, creadoel, modificadopor, modificadoel, eseditable, esanulable', 'safe', 'on'=>'search'),
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
			'dcotmateriales' => array(self::HAS_MANY, 'Dcotmateriales', 'coddocu'),
			'dcotmateriales1' => array(self::HAS_MANY, 'Dcotmateriales', 'estadodetalle'),
			'guias' => array(self::HAS_MANY, 'Guia', 'c_estgui'),
			'guias1' => array(self::HAS_MANY, 'Guia', 'codocu'),
			'factus' => array(self::HAS_MANY, 'Factu', 'coddocu'),
			'factus1' => array(self::HAS_MANY, 'Factu', 'codestado'),
			'cotis' => array(self::HAS_MANY, 'Coti', 'coddocu'),
			'cotis1' => array(self::HAS_MANY, 'Coti', 'codestado'),
			'dokis'=>array(self::BELONGS_TO, 'Documentos', 'codocu'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'codestado' => 'Codestado',
			'codocu' => 'Codocu',
			'estado' => 'Estado',
			'ordenn' => 'Ordenn',
			'creadopor' => 'Creadopor',
			'creadoel' => 'Creadoel',
			'modificadopor' => 'Modificadopor',
			'modificadoel' => 'Modificadoel',
			'eseditable' => 'Eseditable',
			'esanulable' => 'Esanulable',
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

		$criteria->compare('codestado',$this->codestado,true);
		$criteria->compare('codocu',$this->codocu,true);
		$criteria->compare('estado',$this->estado,true);
		$criteria->compare('ordenn',$this->ordenn);
		$criteria->compare('creadopor',$this->creadopor,true);
		$criteria->compare('creadoel',$this->creadoel,true);
		$criteria->compare('modificadopor',$this->modificadopor,true);
		$criteria->compare('modificadoel',$this->modificadoel,true);
		$criteria->compare('eseditable',$this->eseditable);
		$criteria->compare('esanulable',$this->esanulable);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}


	public function search_por_docu($codocu)
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('codestado',$this->codestado,true);
		$criteria->addcondition("codocu='".$codocu."'");
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}




	public  function Eseditable($docum,$estado) {
		  $modeloestado=$this->find("codestado='".$estado."' and codocu='".$docum."'");
		  if (!$modeloestado===null) {
		  	    if($modeloestado->eseditable==='1'){
		  	    	return true;
		  	   				 } else {
		  	   				 	return false;
		  	   				 }
				}else {
					return false;
				}

							}


	public static function estadosnocalculablesdetalle ($codocu){ ///$CODOCU es el codigo del docuenmtno padre
		/*esta funcion devuel los estado del detalle de un domcuento
		*  que no son calculables x ejemplo una item anualado o cualquier otro estado que no s etome necuenta
		 *
		 */
		$codocu=MiFactoria::cleanInput($codocu);
		$documentohijo=Documentos::model()->find("coddocupadre='".$codocu."'");
		//var_dump($documentohijo);
		if(!is_null($documentohijo)){
			return Yii::app()->db->createCommand()
				->select('codestado')
				->from('{{estado}}')
				->where("codocu=:vcodocu AND nocalculable='1' ",
					array(":vcodocu"=>$documentohijo->coddocu)
				)->queryColumn();
		} else {
			return array();
		}


	}

	public static function estadosnocalculables($codocu){
		/*esta funcion devuel los estado del detalle de un domcuento
		*  que no son calculables x ejemplo una item anualado o cualquier otro estado que no s etome necuenta
		 *
		 */
		$codocu=MiFactoria::cleanInput($codocu);

			return Yii::app()->db->createCommand()
				->select('codestado')
				->from('{{estado}}')
				->where("codocu=:vcodocu AND nocalculable='1' ",
					array(":vcodocu"=>$codocu)
				)->queryColumn();



	}



}