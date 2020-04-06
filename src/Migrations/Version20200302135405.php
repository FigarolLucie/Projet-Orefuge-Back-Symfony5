<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200302135405 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE role (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(15) NOT NULL, role_string VARCHAR(30) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, status TINYINT(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE region (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(150) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE species (id INT AUTO_INCREMENT NOT NULL, type_id INT NOT NULL, name VARCHAR(25) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, status TINYINT(1) NOT NULL, INDEX IDX_A50FF712C54C8C93 (type_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE category (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(25) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, status TINYINT(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE animal (id INT AUTO_INCREMENT NOT NULL, shelter_id INT NOT NULL, species_id INT NOT NULL, name VARCHAR(150) NOT NULL, description LONGTEXT NOT NULL, birthdate DATE NOT NULL, arrival_date DATE NOT NULL, gender VARCHAR(10) NOT NULL, dog_friendly VARCHAR(255) DEFAULT NULL, cat_friendly VARCHAR(255) DEFAULT NULL, child_friendly VARCHAR(255) DEFAULT NULL, additional_information LONGTEXT DEFAULT NULL, picture1 LONGTEXT NOT NULL, picture2 LONGTEXT DEFAULT NULL, picture3 LONGTEXT DEFAULT NULL, picture4 LONGTEXT DEFAULT NULL, picture5 LONGTEXT DEFAULT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, status INT NOT NULL, INDEX IDX_6AAB231F54053EC0 (shelter_id), INDEX IDX_6AAB231FB2A1D860 (species_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE animal_tag (animal_id INT NOT NULL, tag_id INT NOT NULL, INDEX IDX_9C07FC6D8E962C16 (animal_id), INDEX IDX_9C07FC6DBAD26311 (tag_id), PRIMARY KEY(animal_id, tag_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE app_user (id INT AUTO_INCREMENT NOT NULL, role_id INT NOT NULL, shelter_id INT NOT NULL, username VARCHAR(150) NOT NULL, email VARCHAR(150) NOT NULL, password VARCHAR(80) NOT NULL, terms TINYINT(1) NOT NULL, siret_number INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, status TINYINT(1) NOT NULL, INDEX IDX_88BDF3E9D60322AC (role_id), INDEX IDX_88BDF3E954053EC0 (shelter_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE type (id INT AUTO_INCREMENT NOT NULL, size_id INT NOT NULL, name VARCHAR(50) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, status TINYINT(1) NOT NULL, INDEX IDX_8CDE5729498DA827 (size_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE type_category (type_id INT NOT NULL, category_id INT NOT NULL, INDEX IDX_CBB33E3DC54C8C93 (type_id), INDEX IDX_CBB33E3D12469DE2 (category_id), PRIMARY KEY(type_id, category_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE tag (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(25) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, status TINYINT(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE department (id INT AUTO_INCREMENT NOT NULL, region_id INT NOT NULL, name VARCHAR(150) NOT NULL, INDEX IDX_CD1DE18A98260155 (region_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE size (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(25) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, status TINYINT(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE shelter (id INT AUTO_INCREMENT NOT NULL, region_id INT NOT NULL, name VARCHAR(150) NOT NULL, description LONGTEXT NOT NULL, phone_number INT DEFAULT NULL, mobile_phone INT NOT NULL, street_name LONGTEXT NOT NULL, street_number INT NOT NULL, zipcode INT NOT NULL, city LONGTEXT NOT NULL, country LONGTEXT NOT NULL, email VARCHAR(50) NOT NULL, firstname VARCHAR(50) NOT NULL, lastname VARCHAR(70) NOT NULL, link_fb VARCHAR(150) DEFAULT NULL, link_instagram VARCHAR(150) DEFAULT NULL, link_cagnotte VARCHAR(150) DEFAULT NULL, link_website VARCHAR(150) DEFAULT NULL, hours LONGTEXT NOT NULL, picture1 LONGTEXT NOT NULL, picture2 LONGTEXT DEFAULT NULL, picture3 LONGTEXT DEFAULT NULL, picture4 LONGTEXT DEFAULT NULL, adoption_conditions LONGTEXT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME DEFAULT NULL, status TINYINT(1) NOT NULL, INDEX IDX_7110670798260155 (region_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE species ADD CONSTRAINT FK_A50FF712C54C8C93 FOREIGN KEY (type_id) REFERENCES type (id)');
        $this->addSql('ALTER TABLE animal ADD CONSTRAINT FK_6AAB231F54053EC0 FOREIGN KEY (shelter_id) REFERENCES shelter (id)');
        $this->addSql('ALTER TABLE animal ADD CONSTRAINT FK_6AAB231FB2A1D860 FOREIGN KEY (species_id) REFERENCES species (id)');
        $this->addSql('ALTER TABLE animal_tag ADD CONSTRAINT FK_9C07FC6D8E962C16 FOREIGN KEY (animal_id) REFERENCES animal (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE animal_tag ADD CONSTRAINT FK_9C07FC6DBAD26311 FOREIGN KEY (tag_id) REFERENCES tag (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE app_user ADD CONSTRAINT FK_88BDF3E9D60322AC FOREIGN KEY (role_id) REFERENCES role (id)');
        $this->addSql('ALTER TABLE app_user ADD CONSTRAINT FK_88BDF3E954053EC0 FOREIGN KEY (shelter_id) REFERENCES shelter (id)');
        $this->addSql('ALTER TABLE type ADD CONSTRAINT FK_8CDE5729498DA827 FOREIGN KEY (size_id) REFERENCES size (id)');
        $this->addSql('ALTER TABLE type_category ADD CONSTRAINT FK_CBB33E3DC54C8C93 FOREIGN KEY (type_id) REFERENCES type (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE type_category ADD CONSTRAINT FK_CBB33E3D12469DE2 FOREIGN KEY (category_id) REFERENCES category (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE department ADD CONSTRAINT FK_CD1DE18A98260155 FOREIGN KEY (region_id) REFERENCES region (id)');
        $this->addSql('ALTER TABLE shelter ADD CONSTRAINT FK_7110670798260155 FOREIGN KEY (region_id) REFERENCES region (id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE app_user DROP FOREIGN KEY FK_88BDF3E9D60322AC');
        $this->addSql('ALTER TABLE department DROP FOREIGN KEY FK_CD1DE18A98260155');
        $this->addSql('ALTER TABLE shelter DROP FOREIGN KEY FK_7110670798260155');
        $this->addSql('ALTER TABLE animal DROP FOREIGN KEY FK_6AAB231FB2A1D860');
        $this->addSql('ALTER TABLE type_category DROP FOREIGN KEY FK_CBB33E3D12469DE2');
        $this->addSql('ALTER TABLE animal_tag DROP FOREIGN KEY FK_9C07FC6D8E962C16');
        $this->addSql('ALTER TABLE species DROP FOREIGN KEY FK_A50FF712C54C8C93');
        $this->addSql('ALTER TABLE type_category DROP FOREIGN KEY FK_CBB33E3DC54C8C93');
        $this->addSql('ALTER TABLE animal_tag DROP FOREIGN KEY FK_9C07FC6DBAD26311');
        $this->addSql('ALTER TABLE type DROP FOREIGN KEY FK_8CDE5729498DA827');
        $this->addSql('ALTER TABLE animal DROP FOREIGN KEY FK_6AAB231F54053EC0');
        $this->addSql('ALTER TABLE app_user DROP FOREIGN KEY FK_88BDF3E954053EC0');
        $this->addSql('DROP TABLE role');
        $this->addSql('DROP TABLE region');
        $this->addSql('DROP TABLE species');
        $this->addSql('DROP TABLE category');
        $this->addSql('DROP TABLE animal');
        $this->addSql('DROP TABLE animal_tag');
        $this->addSql('DROP TABLE app_user');
        $this->addSql('DROP TABLE type');
        $this->addSql('DROP TABLE type_category');
        $this->addSql('DROP TABLE tag');
        $this->addSql('DROP TABLE department');
        $this->addSql('DROP TABLE size');
        $this->addSql('DROP TABLE shelter');
    }
}
