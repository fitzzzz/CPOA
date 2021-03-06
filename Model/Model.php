<?php 
abstract class Model {

  private static $bdd;
  

  protected function executerRequete($sql, $params = null) {
    if ($params == null) {
        $resultat = self::getBdd()->query($sql);   // exécution directe
    }
    else {
        $resultat = self::getBdd()->prepare($sql); // requête préparée
        $resultat->execute($params);
    }
    return $resultat;
  }

  /**
   *Permet de créer un objet pour la connexion à la base de données
   *@return self::$bdd type : PDO 
   */
  private static function getBdd(){
    if(self::$bdd ==null){
      require 'bin/connexion.php';
      self::$bdd = new PDO('mysql:host='.$host.';dbname='.$nombase, $user, $password, 
        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
      self::$bdd->exec('SET NAMES utf8');
      self::$bdd->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    }
    return self::$bdd;
  }
}


