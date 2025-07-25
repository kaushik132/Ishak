<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Gallery;
use Carbon\Carbon;

class GalleryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Gallery';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Gallery());

        $grid->column('id', __('Id'))->sortable();
        $grid->column('image', __('Image'))->sortable();
        $grid->column('alt', __('Alt'))->sortable();
        
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
        $show = new Show(Gallery::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image', __('Image'));
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
        $form = new Form(new Gallery());

        $form->image('image', __('Image'));
        $form->text('alt', __('Alt'));

        return $form;
    }
}
