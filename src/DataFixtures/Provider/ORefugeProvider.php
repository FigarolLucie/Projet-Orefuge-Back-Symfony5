<?php

namespace App\DataFixtures\Provider;

use Faker\Provider\Base;

class ORefugeProvider extends Base

{
    protected static $sizes = [
        'Petit',
        'Moyen',
        'Grand',
    ];

    protected static $tags = [
        'Malade',
        'Vieux',
        'Urgent',
        'Pas de particularité'
    ];
    
    protected static $categories = [
        'Non catégorisé',
        'Catégorie 1',
        'Catégorie 2',
        'LOF',
    ];

    protected static $roles = [
        'Utilisateur',
        'Administrateur',
    ];

    protected static $role_strings = [
        'ROLE_USER',
        'ROLE_ADMIN',
    ];
    
    protected static $genders = [
        'Mâle',
        'Femelle',
    ];

    protected static $species = [
        'Animaux de la ferme',
        'Chat',
        'Chien',
        'Cheval',        
        'Furet',
        'Lapin',
        'Oiseau',
        'Poisson',
        'Rongeur',
        'Reptile',
        'Tortue',        
        
    ];


    protected static $types = [
        'Abyssin',
        'Angora',
        'Bengal',
        'Birman',
        'Chartreux',
        'Européen',
        'Siamois',
        'Berger allemand',
        'Border Collie',
        'Boxer',
        'Bulldog anglais',
        'Dogue allemand',
        'Bull Terrier',
        'Yorkshire',
        'Teckels',
        'Dalmatien',
        'Braque de Weimar',
        'Epagneul breton',
        'Caniche',
        'Chihuahua',
        'Levrier',
        'Pure-sang',
        'Percheron',
        'Nain angora',
        'Bélier français',
        'Géant des Flandres',
        'Ara bleu',
        'Gris du Gabon',
        'Perruche ondulée',
        'Sans type',

    ];   

    protected static $shelters = [
        'Refuge de Gex',
        'Refuge de la Picoterie',
        'Refuge les amis des bêtes du Soissonnais',
        'Refuge SPA de Laon',
        'Association Pénélope',
        'Refuge de Brugheas',
        'Cent Pas',
        'Refuge du domaine de la Belle Terre',
        'Refuge de l\'Espoir',        
        'Refuge La Conca',
        'Coup de patte',
        'Refuge les Amandiers',        
        'Gratouille refuge',
        'La maison de la nature - Les amis des bêtes',
        'Le Chenil du Grand Narbonne',
        'Refuge de Berriac',
        'Refuge de Sainte-Radegonde',       
        'Le refuge de l\'Arbois',
        'Refuge de Cabriès',
        'Refuge du Chat Libre',
        'Refuge Saint-Roch',
        'Refuge Saint-Roch de Marseille',
        'Refuge SPA de Marseille',
        'Refuge animalier Augeron',
        'Refuge de Bonbonnet',
        'Refuge les amis des bêtes de Royan',
        'Refuge les Murmures',
        'Refuge les Pachats du Bastion',
        'Les Moustaches du Berry',
        'Refuge Canin Municipal de Vierzon',
        'Refuge Espoirs Canins',
        'Refuge animalier Bortois',
        'Refuge de Brive-la-Gaillarde',
        'Refuge SPA de Tulle la Rochette',
        'Refuge animaux de Bastia',
        'Refuge de Caldaniccia',
        'Refuge de Ville-di-Pietrabugno',
        'Nid d\'accueil',        
        'Le resto des toutous',       
        'Refuge du Clocher',      
        'Refuge de Pontarlier',
        'Refuge de Montélimar',
        'Refuge de Pierrelatte',
        'Refuge des Acacias',
        'Refuge de Brest',
        'Refuge de Concarneau',
        'Refuge de Guipavas',        
        'Le Refuge des Sources de Bellegarde',
        'Refuge au bonheur des 4 pattes',
        'Refuge Garde Animalière Beaucairoise',
        'Agir pour les animaux',
        'Refuge Capucine',
        'Refuge des Mil\'poils',
        'Les Chats d\'Audenge',
        'Refuge les p\'tits cabotins',
        'Pas Si Bête',
        'Pile-Poils',
        'Refuge de Cheval mon Ami',
        'Refuge de Gerbey',
        'Refuge Une nouvelle chance',
        'Chenil Birepoulet',
        'Chenil Médéric',
        'Refuge Nos amis les bêtes',
        'La ferme des oliviers',
        'Refuge Animalier de Sologne',
        'Refuge Amis Chats',
        'Refuge Quat\'Pattes',
        'Refuge Saint-Pal',
        'Anim\'Toit',
        'Refuge de Carquefou',
        'Refuge Saint-Roch',
        'Refuge de Gien',
        'Refuge Sauve Qui Peut',
        'Refuge Canin Lotois',
        'Refuge de la Rose',
        'Refuge Animalia de La Grande Mardelle',
        'Refuge de la Soudairie',
        'Le Relais des Animaux',
        'Refuge Andrée Guérin',
        'La Maison de l\'Espoir Retrouvé',
        'Refuge de l\'Etang Bleu',
        'Le clos de Kernavest',
        'Refuge Animalier des Montagnes Noires',
        'Refuge de Larmor-Plage',
        'Refuge de Saint-Nizon',
        'Refuge de Sarrebourg',
        'Refuge félin de Thimonville',       
        'Refuge Coeur à 4 pattes',       
        'Refuge de Thiernay',
        'La Maison des Chats de Valenciennes',
        'Le refuge de l\'espoir',
        'Refuge de Bagnoles',
        'Refuge de Saint-Aubin',
        'Refuge SOS Animaux Le Broc',
        'Refuge de l\'Amicale Chats',
        'Refuge Un gîte une gamelle',
        'Refuge SPA de Strasbourg',
        'Refuge de Wettolsheim-les-Erlen',
        'Refuge des Crins Verts',
        'Refuge GroinGroin',
        'Refuge SPA de Vaux le Pénil',
        'Refuge de la Chevrie',
        'Refuge du Chesnay',
        'Refuge SPA de Plaisir',
        'Refuge SPA de Poulainville',        
        'Refuge de Toulon',
        'Refuge la Colline aux Chats',
        'Refuge de Grillon',
        'Refuge de l\'Espérance',      
        'Refuge SPA de Poitiers', 
        'Refuge de Belfort',       
        'Refuge du Grand Prado',
        'Refuge du Papillon',
        'Refuge du Tampon',
        'Refuge SPA de Kourou',
    ]; 


    protected static $regions = [
        'Auvergne-Rhône-Alpes',
        'Bourgogne-Franche-Comté',
        'Bretagne',
        'Centre-Val de Loire',
        'Corse',
        'Grand Est',
        'Hauts-de-France',
        'Ile-de-France',
        'Normandie',
        'Nouvelle-Aquitaine',
        'Occitanie',
        'Pays de la Loire',
        'Provence-Alpes-Côte d\'Azur',
    ];
  
    protected static $departements = [
        '01 - Ain',
        '02 - Aisne',
        'Allier',
        'Alpes de Haute Provence',
        'Hautes Alpes',
        'Alpes Maritimes',
        'Ardèche',
        'Ardennes',
        'Ariège',
        'Aube',
        'Aude',
        'Aveyron',
        'Bouches du Rhône',
        'Calvados',
        'Cantal',
        'Charente',
        'Charente Maritime',
        'Cher',
        'Corrèze',
        '2A - Corse du Sud',
        '2B - Haute Corse',
        'Côte d\'Or',
        'Côtes d\'Armor',
        'Creuse',
        'Dordogne',
        'Doubs',
        'Drôme',
        'Eure',
        'Eure et Loir',
        'Finistère',
        'Gard',
        'Haute Garonne',
        'Gers',
        'Gironde',
        'Hérault',
        'Ille et Vilaine',
        'Indre',
        'Indre et Loire',
        'Isère',
        'Jura',
        'Landes',
        'Loir et Cher',
        'Loire',
        'Haute Loire',
        'Loire Atlantique',
        'Loiret',
        'Lot',
        'Lot et Garonne',
        'Lozère',
        'Maine et Loire',
        'Manche',
        'Marne',
        'Haute Marne',
        'Mayenne',
        'Meurthe et Moselle',
        'Meuse',
        'Morbihan',
        'Moselle',
        'Nièvre',
        'Nord',
        'Oise',
        'Orne',
        'Pas de Calais',
        'Puy de Dôme',
        'Pyrénées Atlantiques',
        'Hautes Pyrénées',
        'Pyrénées Orientales',
        'Bas Rhin',
        'Haut Rhin',
        'Rhône-Alpes',
        'Haute Saône',
        'Saône et Loire',
        'Sarthe',
        'Savoie',
        'Haute Savoie',
        'Paris',
        'Seine Maritime',
        'Seine et Marne',
        'Yvelines',
        'Deux Sèvres',
        'Somme',
        'Tarn',
        'Tarn et Garonne',
        'Var',
        'Vaucluse',
        'Vendée',
        'Vienne',
        'Haute Vienne',
        'Vosges',
        'Yonne',
        'Territoire de Belfort',
        'Essonne',
        'Hauts de Seine',
        'Seine St Denis',
        'Val de Marne',
        'Val d\'Oise',
        '97 - DOM',
        '971 - Guadeloupe',
        '972 - Martinique',
        '973 - Guyane',
        '974 - Réunion',
        '975 - Saint Pierre et Miquelon',
        '976 - Mayotte',
      ];

      protected static $sirets = [
        '941036766-00009',
        '662362250-00000',
        '472838713-00007',
        '651588329-00003',
        '301139671-00004',
        '211281787-00005',
        '383368644-00001',
        '827730243-00009',
        '423964618-00007',
        '922247507-00002',
        '242529816-00009',
        '600066773-00000',
        '243445350-00008',
        '313520421-00006',
        '601639107-00007',
        '578438772-00001',
        '833657612-00002',
        '078282092-00002',
        '336825062-00001',
        '183246511-00004',
        '602110561-00001',
        '340311117-00006',
        '097662266-00002',
        '129221370-00007',
        '783752868-00001',
        '602110231-00001',
        '340311117-00006',
        '091262266-00002',
        '129111370-00007',
        '783752238-00001',  
    ];

    protected static $mobiles = [
        '0662746926',
        '0652436761',
        '0692728166',
        '0626220635',
        '0636417525',
        '0662789681',
        '0640001575',
        '0615334413',
        '0696912478',
        '0617018332',
        '0660704817',
        '0673803791',
        '0659401981',
        '0616439056',
        '0670889844',
        '0615448724',
        '0691534017',
        '0606429283',
        '0647502919',
        '0653372330',
        '0651355172',
        '0679035308',
        '0695350918',
        '0604431110',
        '0662132022',
    ];

    protected static $phonenumbers = [
        '0451403612',
        '0336809690',
        '0199460862',
        '0137434541',
        '0271701216',
        '0365095150',
        '0464815873',
        '0582808028',
        '0294830355',
        '0447668843',
        '0224328395',
        '0308418613',
        '0478241869',
        '0288952852',
        '0104004306',
        '0346304856',
        '0539638041',
        '0158535484',
        '0435007042',
        '0133124809',
        '0594555842',
        '0556987730',
        '0406777853',
        '0236141978',
        '0145404045',
    ];

    protected static $animalsnames = [
        'Clint',
        'Toudoux',
        'Thiago',
        'Belle',
        'Girofle',
        'Kit-kat',
        'Image',
        'Bamboche',
        'Swilly',
        'Groove',
        'Pixie',
        'Nuage',
        'Bichette',
        'Dim',
        'Canabis',
        'Laguna',
        'Cahuette',
        'Oslo',
        'Jaffar',
        'Iltonne',
        'Hariel',
        'Blaky',
        'Tic',
        'Ebony',
        'Hibis',
        'Flora',
        'Licorne',
        'Imouto',
        'Hurricane',
        'Joy',
        'Fjord',
        'Inola',
        'Book',
        'Icarus',
        'Elvis',
        'Genet',
        'Grisebouille',
        'Locco',
        'Malou',
        'Kino',
        'Anatis',
        'Twin',
        'Ravage',
        'Janis',
        'Teuf',
        'Fannie',
        'Artic',
        'Texto',
        'Gap',
        'Gilou',
        'Ally',
        'Winsor',
        'Nigelle',
        'Flyna',
        'Max',
        'Gully',
        'Magnum',
        'Angus',
        'Loustik',
        'Pyra',
        'Jinxie',
        'Rouxy',
        'Salto',
        'Missty',
        'Hibis',
        'Lagaff',
        'Josephine',
        'Jasper',
        'Xeres',
        'Galak',
        'Astro',
        'Yuki',
        'Peggy',
        'Marrant',
        'Chouinette',
        'Pomponette',
        'Jazz',
        'Brody',
        'Gourmet',
        'Pussy-cat',
        'Kabuki',
        'Vanda',
        'Degas',
        'Isis',
        'Bunny'
    ];
    protected static $imagesName = [
      'https://cdn.pixabay.com/photo/2019/08/30/15/05/border-collie-4441585_960_720.jpg',
    ];
    protected static $dogImages = [
      'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/05/09/10/42/weimaraner-1381186_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/02/18/18/37/puppy-1207816_960_720.jpg',
      'https://cdn.pixabay.com/photo/2014/03/14/20/13/dog-287420_960_720.jpg',
    ];
    protected static $catImages = [
      'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/02/25/17/56/cat-649164_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/04/20/17/18/cat-3336579_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462_960_720.jpg',
    ];
    protected static $bunnyImages = [
      'https://cdn.pixabay.com/photo/2016/01/19/14/55/bunny-1149060_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/10/19/23/17/rabbit-3759895_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/02/13/13/23/dwarf-rabbit-4845651_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/08/16/21/10/rabbit-2649157_960_720.png',
    ];
    protected static $turtleImages = [
      'https://cdn.pixabay.com/photo/2015/07/27/19/47/turtle-863336_960_720.jpg',
        'https://cdn.pixabay.com/photo/2016/11/22/19/26/amphibian-1850190_960_720.jpg',
        'https://cdn.pixabay.com/photo/2020/02/09/07/45/turtles-4832203_960_720.jpg',
        'https://cdn.pixabay.com/photo/2016/06/09/22/09/water-1446738_960_720.jpg',
    ];
    protected static $birdsImages = [
      'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/09/22/17/05/ara-3695678_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/05/27/18/19/animal-3434123_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/06/01/16/35/kingfisher-2363879_960_720.jpg',
    ];
    protected static $horsesImages = [
      'https://cdn.pixabay.com/photo/2016/04/15/10/35/horse-1330690_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/04/02/19/57/horse-2196755_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/11/15/22/20/foal-3818264_960_720.jpg',
      'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg',
    ];
    protected static $goatImages = [

      'https://cdn.pixabay.com/photo/2012/06/19/15/06/goat-50290_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/08/17/20/16/goat-3613728_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/06/16/18/27/goat-1461917_960_720.jpg',
      'https://cdn.pixabay.com/photo/2014/09/24/15/15/billy-goat-459232_960_720.jpg',
    ];
    protected static $mouseImages = [
      'https://cdn.pixabay.com/photo/2016/10/01/20/54/mouse-1708347_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/06/08/15/03/mouse-801843_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/03/05/18/54/animal-1238228_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/12/14/21/10/mouse-1907494_960_720.jpg',
    ];
    protected static $fishImages = [

      'https://cdn.pixabay.com/photo/2016/12/31/21/22/discus-fish-1943755_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/04/15/17/45/fish-3322230_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/01/26/07/06/fighting-fish-2009972_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/01/26/07/05/fighting-fish-2009968_960_720.jpg',
    ];

   


    public static function animalsName()
    {
        return static::randomElement(static::$animalsnames);
    }

    public static function sizeName()
    {
        return static::randomElement(static::$sizes);
    }

    public static function tagName()
    {
        return static::randomElement(static::$tags);
    }

    public static function categoryName()
    {
        return static::randomElement(static::$categories);
    }

    public static function roleName()
    {
        return static::randomElement(static::$roles);
    }

    public static function roleStringName()
    {
        return static::randomElement(static::$role_strings);
    }
     
    public static function speciesName()
    {
        return static::randomElement(static::$species);
    }

    public static function regionName()
    {
        return static::randomElement(static::$regions);
    }
    
    public static function departementName()
    {
        return static::randomElement(static::$departements);
    }
    
    public static function shelterName()
    {
        return static::randomElement(static::$shelters);
    }

    public static function siretName()
    {
        return static::randomElement(static::$sirets);
    }

    public static function mobileName()
    {
        return static::randomElement(static::$mobiles);
    }
   
    public static function typeName()
    {
        return static::randomElement(static::$types);
    }

    public static function genderName()
    {
        return static::randomElement(static::$genders);
    }

    public static function phonenumberName()
    {
        return static::randomElement(static::$phonenumbers);
    }

    public static function imageNameCat()
    {
        return static::randomElement(static::$catImages);
    }

    public static function imageNameDog()
    {
        return static::randomElement(static::$dogImages);
    }

    public static function imageNameRabbit()
    {
        return static::randomElement(static::$bunnyImages);
    }
    public static function imageNameBirds()
    {
        return static::randomElement(static::$birdsImages);
    }

    public static function imageNameGoat()
    {
        return static::randomElement(static::$goatImages);
    }
    public static function imageNameHorses()
    {
        return static::randomElement(static::$horsesImages);
    }

    public static function imageNameTurtle()
    {
        return static::randomElement(static::$turtleImages);
    }
    public static function imageNameMouse()
    {
        return static::randomElement(static::$mouseImages);
    }

    public static function imageNameFish()
    {
        return static::randomElement(static::$fishImages);
    }
    
    public static function imageName()
    {
        return static::randomElement(static::$imagesName);
    }


}
