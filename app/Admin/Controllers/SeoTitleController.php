<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Title;

class SeoTitleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Title';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Title());

        $grid->column('id', __('Id'));
        $grid->column('seo_title_home', __('Seo title home'));
        $grid->column('seo_des_home', __('Seo des home'));
        $grid->column('seo_key_home', __('Seo key home'));


        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Title::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('seo_title_home', __('Seo title home'));
        $show->field('seo_des_home', __('Seo des home'));
        $show->field('seo_key_home', __('Seo key home'));
        $show->field('seo_image_home', __('Seo image home'));
        $show->field('seo_title_tour', __('Seo title tour'));
        $show->field('seo_des_tour', __('Seo des tour'));
        $show->field('seo_key_tour', __('Seo key tour'));
        $show->field('seo_image_tour', __('Seo image tour'));
        $show->field('seo_title_gallery', __('Seo title gallery'));
        $show->field('seo_des_gallery', __('Seo des gallery'));
        $show->field('seo_key_gallery', __('Seo key gallery'));
        $show->field('seo_image_gallery', __('Seo image gallery'));
        $show->field('seo_title_contact', __('Seo title contact'));
        $show->field('seo_des_contact', __('Seo des contact'));
        $show->field('seo_key_contact', __('Seo key contact'));
        $show->field('seo_image_contact', __('Seo image contact'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Title());
        $form->tab('Home Seo', function ($form) {
            $form->text('seo_title_home', __('Seo title home'));
            $form->textarea('seo_des_home', __('Seo des home'));
            $form->textarea('seo_key_home', __('Seo key home'));
            $form->image('seo_image_home', __('Seo image home'));
        });
        $form->tab('Tour Seo', function ($form) {
            $form->text('seo_title_tour', __('Seo title tour'));
            $form->textarea('seo_des_tour', __('Seo des tour'));
            $form->textarea('seo_key_tour', __('Seo key tour'));
            $form->image('seo_image_tour', __('Seo image tour'));
        });
        $form->tab('Gallery Seo', function ($form) {
            $form->text('seo_title_gallery', __('Seo title gallery'));
            $form->textarea('seo_des_gallery', __('Seo des gallery'));
            $form->textarea('seo_key_gallery', __('Seo key gallery'));
            $form->image('seo_image_gallery', __('Seo image gallery'));
        });
        $form->tab('Contact Seo', function ($form) {
            $form->text('seo_title_contact', __('Seo title contact'));
            $form->textarea('seo_des_contact', __('Seo des contact'));
            $form->textarea('seo_key_contact', __('Seo key contact'));
            $form->image('seo_image_contact', __('Seo image contact'));
        });
        return $form;
    }
}
