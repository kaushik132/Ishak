<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Video;
use Carbon\Carbon;

class VideoController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Video';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Video());

        $grid->column('id', __('Id'));
        $grid->column('image', __('Image'))->image('/uploads/' ,'100','100')->sortable();
        $grid->column('video_link', __('Video link'))->sortable();

   $grid->column('created_at', __('Created at'))
    ->display(function ($createdAt) {
        return Carbon::parse($createdAt)->format('d F Y'); // e.g., 23 July 2025
    })
    ->sortable();

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
        $show = new Show(Video::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image', __('Image'));
        $show->field('video_link', __('Video link'));
        $show->field('alt', __('Alt'));
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
        $form = new Form(new Video());

        $form->image('image', __('Image'));
        $form->text('video_link', __('Video link'));
        $form->text('alt', __('Alt'));

        return $form;
    }
}
