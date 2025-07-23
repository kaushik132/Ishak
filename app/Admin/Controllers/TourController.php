<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Tour;
use \App\Models\Tourcategory;

class TourController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Tour';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Tour());

        $grid->column('id', __('Id'));
        $grid->column('destination_id', __('Destination id'));
        $grid->column('thumnail_image', __('Thumnail image'));
     

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
        $show = new Show(Tour::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('destination_id', __('Destination id'));
        $show->field('thumnail_image', __('Thumnail image'));
        $show->field('banner_image', __('Banner image'));
        $show->field('gallery', __('Gallery'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('short_description', __('Short description'));
        $show->field('days', __('Days'));
        $show->field('price', __('Price'));
        $show->field('description', __('Description'));
        $show->field('itinerarys', __('Itinerarys'));
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
        $form = new Form(new Tour());
    $form->tab('Info', function ($form) {
  $form->select('destination_id',__('Destination Category'))->options(Tourcategory::pluck('name', 'id'))->default(null)->rules('required');
       
        $form->text('title', __('Title'));
         $form->hidden('slug');

        $form->saving(function (Form $form) {

           $form->slug = strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-',trim($form->title)));
        });
        $form->textarea('short_description', __('Short description'));
        $form->text('days', __('Days'));
        $form->text('price', __('Price'));
        $form->ckeditor('description', __('Description'));
    });
        
   $form->tab('Images', function ($form) {
          $form->image('thumnail_image', __('Thumnail image'));
        $form->image('banner_image', __('Banner image'));
        $form->image('gallery', __('Gallery'));
        });

          $form->tab('PackageItinerary', function ($form) {
        $form->hasMany('tourdetailsinsert','PackageItinerary', function (Form\NestedForm $form) {
		          $form->text('order_num', __('Order Num'));
		          $form->text('name', __('Name'));
			        $form->textarea('description', __('Description'));
		     });


});

      
$form->tab('Seo', function ($form) {
        $form->textarea('seo_title', __('Seo title'));
        $form->textarea('seo_description', __('Seo description'));
        $form->textarea('seo_keyword', __('Seo keyword'));
                    $form->switch('is_featured', __('Is Featured'))->options([
    1 => 'Active',
    0 => 'Inactive',
]);
});



        return $form;
    }
}
