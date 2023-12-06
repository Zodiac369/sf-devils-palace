<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231204155639 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE horror_movies_movies_horror_genre (horror_movies_id INT NOT NULL, movies_horror_genre_id INT NOT NULL, INDEX IDX_8E5BDD5609D2040 (horror_movies_id), INDEX IDX_8E5BDD54564B5A4 (movies_horror_genre_id), PRIMARY KEY(horror_movies_id, movies_horror_genre_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE user (id INT AUTO_INCREMENT NOT NULL, email VARCHAR(180) NOT NULL, roles JSON NOT NULL COMMENT \'(DC2Type:json)\', password VARCHAR(255) NOT NULL, UNIQUE INDEX UNIQ_8D93D649E7927C74 (email), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE user_favorites (user_id INT NOT NULL, favorites_id INT NOT NULL, INDEX IDX_E489ED11A76ED395 (user_id), INDEX IDX_E489ED1184DDC6B4 (favorites_id), PRIMARY KEY(user_id, favorites_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE horror_movies_movies_horror_genre ADD CONSTRAINT FK_8E5BDD5609D2040 FOREIGN KEY (horror_movies_id) REFERENCES horror_movies (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE horror_movies_movies_horror_genre ADD CONSTRAINT FK_8E5BDD54564B5A4 FOREIGN KEY (movies_horror_genre_id) REFERENCES movies_horror_genre (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user_favorites ADD CONSTRAINT FK_E489ED11A76ED395 FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user_favorites ADD CONSTRAINT FK_E489ED1184DDC6B4 FOREIGN KEY (favorites_id) REFERENCES favorites (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE horror_movies ADD director_id INT NOT NULL, ADD country_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE horror_movies ADD CONSTRAINT FK_9A5E0F0A899FB366 FOREIGN KEY (director_id) REFERENCES director (id)');
        $this->addSql('ALTER TABLE horror_movies ADD CONSTRAINT FK_9A5E0F0AF92F3E70 FOREIGN KEY (country_id) REFERENCES country (id)');
        $this->addSql('CREATE INDEX IDX_9A5E0F0A899FB366 ON horror_movies (director_id)');
        $this->addSql('CREATE INDEX IDX_9A5E0F0AF92F3E70 ON horror_movies (country_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE horror_movies_movies_horror_genre DROP FOREIGN KEY FK_8E5BDD5609D2040');
        $this->addSql('ALTER TABLE horror_movies_movies_horror_genre DROP FOREIGN KEY FK_8E5BDD54564B5A4');
        $this->addSql('ALTER TABLE user_favorites DROP FOREIGN KEY FK_E489ED11A76ED395');
        $this->addSql('ALTER TABLE user_favorites DROP FOREIGN KEY FK_E489ED1184DDC6B4');
        $this->addSql('DROP TABLE horror_movies_movies_horror_genre');
        $this->addSql('DROP TABLE user');
        $this->addSql('DROP TABLE user_favorites');
        $this->addSql('ALTER TABLE horror_movies DROP FOREIGN KEY FK_9A5E0F0A899FB366');
        $this->addSql('ALTER TABLE horror_movies DROP FOREIGN KEY FK_9A5E0F0AF92F3E70');
        $this->addSql('DROP INDEX IDX_9A5E0F0A899FB366 ON horror_movies');
        $this->addSql('DROP INDEX IDX_9A5E0F0AF92F3E70 ON horror_movies');
        $this->addSql('ALTER TABLE horror_movies DROP director_id, DROP country_id');
    }
}
