<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Info;

class InfoController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Info';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Info());

        $grid->column('id', __('Id'));
        $grid->column('email', __('Email'));
        $grid->column('phone', __('Phone'));
        $grid->column('whatsapp_phone', __('Whatsapp phone'));
        $grid->column('address', __('Address'));
        $grid->column('map', __('Map'));
        $grid->column('facebook_link', __('Facebook link'));
        $grid->column('youtube_link', __('Youtube link'));
        $grid->column('google_map_link', __('Google map link'));
        $grid->column('instagram_link', __('Instagram link'));
        $grid->column('twitter_link', __('Twitter link'));
        $grid->column('linkedin_link', __('Linkedin link'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(Info::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('email', __('Email'));
        $show->field('phone', __('Phone'));
        $show->field('whatsapp_phone', __('Whatsapp phone'));
        $show->field('address', __('Address'));
        $show->field('map', __('Map'));
        $show->field('facebook_link', __('Facebook link'));
        $show->field('youtube_link', __('Youtube link'));
        $show->field('google_map_link', __('Google map link'));
        $show->field('instagram_link', __('Instagram link'));
        $show->field('twitter_link', __('Twitter link'));
        $show->field('linkedin_link', __('Linkedin link'));
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
        $form = new Form(new Info());

        $form->email('email', __('Email'));
        $form->phonenumber('phone', __('Phone'));
        $form->text('whatsapp_phone', __('Whatsapp phone'));
        $form->textarea('address', __('Address'));
        $form->text('map', __('Map'));
        $form->text('facebook_link', __('Facebook link'));
        $form->text('youtube_link', __('Youtube link'));
        $form->text('google_map_link', __('Google map link'));
        $form->text('instagram_link', __('Instagram link'));
        $form->text('twitter_link', __('Twitter link'));
        $form->text('linkedin_link', __('Linkedin link'));

        return $form;
    }
}
