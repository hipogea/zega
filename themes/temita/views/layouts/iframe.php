<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="de" lang="de">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="language" content="de" />
    <?php
    $baseUrl = Yii::app()->theme->baseUrl;
    $cs = Yii::app()->getClientScript();
    Yii::app()->clientScript->registerCoreScript('jquery');
    ?>
    <?php
    $cs->registerCssFile($baseUrl.'/css/bootstrap.min.css');
    $cs->registerCssFile($baseUrl.'/css/bootstrap-responsive.min.css');
    $cs->registerCssFile($baseUrl.'/css/abound.css');
    $cs->registerCssFile($baseUrl.'/css/miestilo.css'); ///sas
    ?>
</head>
<body>
<div id="page">
    <?php
    $claves=array_keys(Yii::app()->user->getFlashes(false));
    $primervalor=substr($claves[0],0,strpos($claves[0],"_"));
    foreach(Yii::app()->user->getFlashes() as $key => $message) {
        if(strpos($key,"_")){ //sI HAYA ADICONALES
            $key=substr($key,0,strpos($key,"_"));
            if($primervalor==$key)
                $message.="<br>";        }

        echo '<div class="flash-' . $key . '">' . $message. "</div>\n";
    }
    ?>
    <?php echo $content; ?>
</body>
</html>