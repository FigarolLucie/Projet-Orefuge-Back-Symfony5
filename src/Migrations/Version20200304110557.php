<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200304110557 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE app_user CHANGE siret_number siret_number VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE shelter CHANGE phone_number phone_number VARCHAR(255) DEFAULT NULL, CHANGE mobile_phone mobile_phone VARCHAR(255) NOT NULL, CHANGE zipcode zipcode VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE app_user CHANGE siret_number siret_number INT NOT NULL');
        $this->addSql('ALTER TABLE shelter CHANGE phone_number phone_number INT DEFAULT NULL, CHANGE mobile_phone mobile_phone INT NOT NULL, CHANGE zipcode zipcode INT NOT NULL');
    }
}
