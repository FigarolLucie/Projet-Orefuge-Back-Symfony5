<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200305124002 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE shelter DROP FOREIGN KEY FK_7110670798260155');
        $this->addSql('DROP INDEX IDX_7110670798260155 ON shelter');
        $this->addSql('ALTER TABLE shelter CHANGE region_id department_id INT NOT NULL');
        $this->addSql('ALTER TABLE shelter ADD CONSTRAINT FK_71106707AE80F5DF FOREIGN KEY (department_id) REFERENCES department (id)');
        $this->addSql('CREATE INDEX IDX_71106707AE80F5DF ON shelter (department_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE shelter DROP FOREIGN KEY FK_71106707AE80F5DF');
        $this->addSql('DROP INDEX IDX_71106707AE80F5DF ON shelter');
        $this->addSql('ALTER TABLE shelter CHANGE department_id region_id INT NOT NULL');
        $this->addSql('ALTER TABLE shelter ADD CONSTRAINT FK_7110670798260155 FOREIGN KEY (region_id) REFERENCES region (id)');
        $this->addSql('CREATE INDEX IDX_7110670798260155 ON shelter (region_id)');
    }
}
