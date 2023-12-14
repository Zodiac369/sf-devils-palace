<?php

namespace App\Controller\Admin;

use App\Entity\HorrorMovies;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class HorrorMoviesCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return HorrorMovies::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('name'),
            DateTimeField::new('date_of_release'),
            TextEditorField::new('synopsis'),
            NumberField::new('averrage_rate'),
            TextField::new('cover'),

            AssociationField::new('director'),
            AssociationField::new('genres'),
            AssociationField::new('country'),
        ];
    }
}
