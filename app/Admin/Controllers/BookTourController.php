<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\BookTour;
use Carbon\Carbon;

class BookTourController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'BookTour';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new BookTour());

        $grid->column('id', __('Id'))->sortable();
        $grid->column('tour_name', __('Tour name'))->sortable();
        $grid->column('name', __('Name'))->sortable();
        $grid->column('email', __('Email'))->sortable();
        $grid->column('phone', __('Phone'))->sortable();
        $grid->column('tour_date', __('Tour date'))->sortable();
        $grid->column('message', __('Message'))->sortable();
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
        $show = new Show(BookTour::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('tour_name', __('Tour name'));
        $show->field('name', __('Name'));
        $show->field('email', __('Email'));
        $show->field('phone', __('Phone'));
        $show->field('tour_date', __('Tour date'));
        $show->field('message', __('Message'));
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
        $form = new Form(new BookTour());

        $form->text('tour_name', __('Tour name'));
        $form->text('name', __('Name'));
        $form->email('email', __('Email'));
        $form->phonenumber('phone', __('Phone'));
        $form->date('tour_date', __('Tour date'))->default(date('Y-m-d'));
        $form->textarea('message', __('Message'));

        return $form;
    }
}
